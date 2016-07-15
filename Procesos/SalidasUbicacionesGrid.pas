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
  cxGrid, Vcl.ExtCtrls, cxDBLookupComboBox, Vcl.Buttons;

type
  TfrmSalidasUbicacionesGrid = class(T_frmStandarGFormGrid)
    tvMasterCantidad: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    tvMasterEspacioA: TcxGridDBColumn;
    tvMasterDisponible: TcxGridDBColumn;
    DSProductosXEspacio: TDataSource;
    tvMasterIdProductoXEspacio: TcxGridDBColumn;
    tvMasterElEspacio: TcxGridDBColumn;
    btnAceptarUbicaciones: TSpeedButton;
    ToolButton11: TToolButton;
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
begin
  inherited;
 // if datasource.State=dsEdit then
  begin
    dsProductosXEspacio.DataSet.Filtered:=False;                                                  // DtSrcOrdenSalItem     //No tiene datos
    dsProductosXEspacio.DataSet.Filter:='IDProducto='+datasource.DataSet.fieldbyname('IDProducto').AsString;
    dsProductosXEspacio.DataSet.Filtered:=True;
    dsProductosXEspacio.DataSet.Open;
  end;
end;

procedure TfrmSalidasUbicacionesGrid.tvMasterCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
///
end;

end.
