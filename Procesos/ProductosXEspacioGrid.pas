unit ProductosXEspacioGrid;

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
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, cxGridLevel, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, Vcl.StdCtrls,Data.Win.ADODB;

type
  TfrmProductosXEspacioGrid = class(T_frmStandarGFormGrid)
    tvMasterIdProductoXEspacio: TcxGridDBColumn;
    tvMasterIdAlmacen: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterIdEspacio: TcxGridDBColumn;
    tvMasterIdCategoria: TcxGridDBColumn;
    tvMasterAlmacen: TcxGridDBColumn;
    tvMasterIdentificador1: TcxGridDBColumn;
    tvMasterIdentificador2: TcxGridDBColumn;
    tvMasterIdentificador3: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    tvMasterEspacio: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    TlbAjuste: TToolButton;
    tvMasterIdOrdenEntradaItem: TcxGridDBColumn;
    RdGrpTipoEntrada: TRadioGroup;
    tvMasterIdOrdenEntradaTipo: TcxGridDBColumn;
    tvMasterIdOrdenEntrada: TcxGridDBColumn;
    procedure RdGrpTipoEntradaClick(Sender: TObject);
  private
    FactAjustar: TBasicAction;
    procedure SetactAjustar(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actAjustar: TBasicAction read FactAjustar write SetactAjustar;
  end;

implementation

{$R *.dfm}

uses ProductosXEspacioDm, ConfiguracionDM;

{ TfrmProductosXEspacioGrid }

procedure TfrmProductosXEspacioGrid.RdGrpTipoEntradaClick(Sender: TObject);
const
     TxtSQL='SELECT ProductosXEspacio.IdProductoXEspacio, ProductosXEspacio.IdAlmacen, ProductosXEspacio.IdProducto, ' +
     'ProductosXEspacio.IdEspacio, ProductosXEspacio.IdCategoria, Almacenes.Descripcion AS Almacen, '+
     'Productos.Identificador1, Productos.Identificador2, Productos.Identificador3, Productos.Descripcion AS Producto,'+
     ' Espacios.Descripcion AS Espacio, ProductosXEspacio.Cantidad , ProductosXEspacio.IdOrdenEntradaItem,OE.IdOrdenEntradaTipo, oe.IdOrdenEntrada '+
' FROM ProductosXEspacio INNER JOIN Almacenes ON ProductosXEspacio.IdAlmacen = Almacenes.IdAlmacen   ' +
' INNER JOIN Productos ON ProductosXEspacio.IdProducto = Productos.IdProducto' +
' INNER JOIN Espacios ON ProductosXEspacio.IdEspacio = Espacios.IdEspacio' +
' left join OrdenesEntradasItems OEI On ProductosXespacio.idordenentradaitem=OEI.IdOrdenEntradaItem' +
' left join OrdenesEntradas OE on OEI.IdOrdenEntrada=Oe.IdOrdenEntrada ' ;

     TXTOrdeby=' order by productos.orden';
var Filtrobase, txtWhere:String;
begin
  inherited;
  TxtWhere:='';
  Filtrobase:='(cantidad <>0  or (cantidad = 0 and IdEspacio<>'+ intToStr(dmConfiguracion.IDEspacioAduana)+')) ';
  case RdGrpTipoEntrada.ItemIndex of
  0: TxtWhere:='';
  1: TxtWhere:=' where   IdOrdenEntradaTipo=1 ';//Compras
  2: TxtWhere:=' where  IdOrdenEntradaTipo=2 '; //DEvoluciones
  3: TxtWhere:=' where  IDOrdenEntradaTipo=4 ';  //Ajustes
  end;
  //TAdoDAtaset(datasource.dataset).Filter:=FiltroBase ;
  TAdoDAtaset(datasource.dataset).Close;
  TAdoDAtaset(datasource.dataset).CommandText:= TxtSQL+ TxtWhere + TXTOrdeby;
  TAdoDAtaset(datasource.dataset).Open;

end;

procedure TfrmProductosXEspacioGrid.SetactAjustar(const Value: TBasicAction);
begin
  FactAjustar := Value;
  TlbAjuste.Action:=Value;
  TlbAjuste.ImageIndex:=12;
end;

end.
