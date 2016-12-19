unit SalidasUbicacionesGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, cxDBLookupComboBox, Vcl.Buttons, Data.Win.ADODB;

type
  TfrmSalidasUbicacionesGrid = class(T_frmStandarGFormGrid)
    tvMasterCantidad: TcxGridDBColumn;
    tvMasterEspacioA: TcxGridDBColumn;
    tvMasterDisponible: TcxGridDBColumn;
    DSProductosXEspacio: TDataSource;
    tvMasterIdProductoXEspacio: TcxGridDBColumn;
    btnAceptarUbicaciones: TSpeedButton;
    ToolButton11: TToolButton;
    tvMasterIdSalidaUbicacion: TcxGridDBColumn;
    tvMasterIdProductoKardexS: TcxGridDBColumn;
    tvMasterIdSalidaUbicacionEstatus: TcxGridDBColumn;
    tvMasterIdOrdenSalidaItem: TcxGridDBColumn;
    tvMasterIdOrdenSalida: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterProductoNvo: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    DSQryAuxiliar: TDataSource;
    tvMasterProductolleno: TcxGridDBColumn;
    tvMasterProductoDirecto: TcxGridDBColumn;
    procedure tvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    FAceptaUbicaciones: TBasicAction;
    procedure SetFAceptaUbicaciones(const Value: TBasicAction);
    function SacaIdProducto(idOrdenSalidaItem: integer): integer;
    { Private declarations }
  public
    { Public declarations }
     property AAceptaUbicaciones:TBasicAction read FAceptaUbicaciones write SetFAceptaUbicaciones; //Jul 15/16
  end;

var
  frmSalidasUbicacionesGrid: TfrmSalidasUbicacionesGrid;

implementation

{$R *.dfm}

uses AjustesSalidasDM;

procedure TfrmSalidasUbicacionesGrid.FormShow(Sender: TObject);
begin
  inherited;
  toolbutton1.Visible:=False;

end;

procedure TfrmSalidasUbicacionesGrid.SetFAceptaUbicaciones(
  const Value: TBasicAction);          //Jul 15/16
begin
  FAceptaUbicaciones := Value;
  btnAceptarUbicaciones.Action:=value;
end;

procedure TfrmSalidasUbicacionesGrid.tvMasterCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var idproducto:integer;
begin

  inherited;
 // if datasource.State=dsEdit then
  begin
    idproducto:=SacaIdProducto(datasource.DataSet.fieldbyname('idOrdenSalidaItem').Asinteger) ;
    if idproducto<>-1 then
    begin
      dsProductosXEspacio.DataSet.Filtered:=False;                                                  // DtSrcOrdenSalItem     //No tiene datos
      dsProductosXEspacio.DataSet.Filter:='IDProducto='+ intTostr(idproducto);//+datasource.DataSet.fieldbyname('IDProducto').AsString;
      dsProductosXEspacio.DataSet.Filtered:=True;
      dsProductosXEspacio.DataSet.Open;   //Se supone abierto
    end
    else
      Showmessage('Inconsistencia NDS. '+ datasource.DataSet.fieldbyname('idOrdenSalidaItem').AsString);
  end;
end;

function  TfrmSalidasUbicacionesGrid.SacaIdProducto(idOrdenSalidaItem:integer):integer; //Oct 24/16
begin
  Result:=-1;
  DSQryAuxiliar.DataSet.Close;
  TADOQuery(dSQryAuxiliar.DataSet).SQL.Clear;
  TADOQuery(dSQryAuxiliar.DataSet).SQL.Add('Select idProducto from OrdenesSalidasItems where IdOrdenSalidaItem='+inttostr(idOrdenSalidaItem));
  TADOQuery(dSQryAuxiliar.DataSet).Open;
  if not (DSQryAuxiliar.DataSet.eof) then
     Result:=DSQryAuxiliar.DataSet.fieldbyname('IdProducto').AsInteger;

end;
procedure TfrmSalidasUbicacionesGrid.tvMasterCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
///
end;

end.
