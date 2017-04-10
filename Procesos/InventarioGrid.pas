unit InventarioGrid;

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
  cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,Data.Win.ADODB;

type
  TFrmInventarioGrid = class(T_frmStandarGFormGrid)
    tvMasterExistencia: TcxGridDBColumn;
    tvMasterTransito: TcxGridDBColumn;
    tvMasterPedidoXSurtir: TcxGridDBColumn;
    tvMasterApartado: TcxGridDBColumn;
    tvMasterCostoPromedio: TcxGridDBColumn;
    tvMasterPrecioVenta: TcxGridDBColumn;
    tvMasterVirtual: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasteridentificador1: TcxGridDBColumn;
    tvMasterPrecioUnitario: TcxGridDBColumn;
    tvMasterIdentificador2: TcxGridDBColumn;
    tvMasterIdentificador3: TcxGridDBColumn;
    EdtBuscar: TEdit;
    SpdBtnBuscar: TBitBtn;
    ToolButton11: TToolButton;
    procedure SpdBtnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventarioGrid: TFrmInventarioGrid;

implementation

{$R *.dfm}

uses InventarioDM;

procedure TFrmInventarioGrid.SpdBtnBuscarClick(Sender: TObject);    //Mar 16/17
var        //Mar 16/17
   idProd, SQLbase, txtWhere, ordentxt:String;
begin
  inherited;
  idProd:=EdtBuscar.Text;
  SQLbase:=' Select I.* , P.Descripcion, P.identificador1,P.Identificador2, P.Identificador3, P.PrecioUnitario from '+
           'Inventario I inner join Productos P on P.IdProducto=I.idproducto  ' ;
  ordentxt  :=' order by Orden';
  txtWhere:='';
  if idProd<> ''then
  begin
    txtWhere:=  ' where(P.Identificador1 Like ''%'+IDProd+'%'' or P.Identificador2 like ''%'+IDProd+
                       '%'' or P.Identificador3 Like ''%'+IDProd+'%'') or (P.Descripcion like ''%'+IDProd+ '%'')';

  end;
  DataSource.DataSet.Close;
  TAdoDataset(DataSource.DataSet).commandText:=  SQLBase +txtWhere +ordentxt;
  DataSource.DataSet.open;


end;

end.
