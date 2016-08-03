unit KardexMovimientosGrid;

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
  cxGrid, Vcl.ExtCtrls,  Vcl.StdCtrls, cxContainer, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons,
  cxLabel, cxDBLabel,Data.Win.ADODB, Vcl.DBCtrls;

type
  TFrmKardexMovimientosGrid = class(T_frmStandarGFormGrid)
    tvMasterIdProductoKardex: TcxGridDBColumn;
    tvMasterIdAlmacen: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterIdProductoKardexEstatus: TcxGridDBColumn;
    tvMasterIdOrdenEntradaItem: TcxGridDBColumn;
    tvMasterIdOrdenSalidaItem: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterMovimiento: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterPrecioUnitario: TcxGridDBColumn;
    tvMasterCostoUnitario: TcxGridDBColumn;
    PnlProveedor: TPanel;
    Label4: TLabel;
    ToolButton11: TToolButton;
    DSProductos: TDataSource;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnConsulta: TSpeedButton;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    cxDBLblDescAux: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    RxDBLkpCmbProducto: TDBLookupComboBox;
    procedure SpdBtnConsultaClick(Sender: TObject);
    procedure RxDBLkpCmbProductoChange(Sender: TObject);
    procedure cxDBLblDescAuxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ffiltroFec: String;
    { Private declarations }
  public
    { Public declarations }
    property FiltroFec:String read ffiltroFec write ffiltroFec; //Jul 7/16
  end;

var
  FrmKardexMovimientosGrid: TFrmKardexMovimientosGrid;

implementation

{$R *.dfm}

uses KardexMovimientosDM;

procedure TFrmKardexMovimientosGrid.cxDBLblDescAuxClick(Sender: TObject);
begin
  inherited;
  RxDBLkpCmbProducto.DropDown;
end;

procedure TFrmKardexMovimientosGrid.FormCreate(Sender: TObject);
var         //Jul 7/16
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  DEcodeDate(Date,a,m,d);
  ffiltroFec:='';
  cxDtEdtDesde.Date:=EncodeDate(a,1,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //Día anterior
  cxDtEdtHasta.Date:=FechaAux;
  SpdBtnConsultaClick(SpdBtnConsulta);
end;

procedure TFrmKardexMovimientosGrid.RxDBLkpCmbProductoChange(Sender: TObject);
begin
  inherited;
  cxDBLblDescAux.Visible:=RxDBLkpCmbProducto.Text='';
end;

procedure TFrmKardexMovimientosGrid.SpdBtnConsultaClick(Sender: TObject);
const        //Jul 7/16
    TxtSQL='select IdProductoKardex, IdAlmacen, IdProducto, IdProductoKardexEstatus,'
    +' IdOrdenEntradaItem, IdOrdenSalidaItem, IdMoneda, Fecha, Movimiento,'
    +' Cantidad, Importe, PrecioUnitario, CostoUnitario from ProductosKardex PK'
    +' where IdProducto=:IdProducto  ' ;
  orden=' Order by fecha ';
begin
  inherited;
  ffiltroFec:=''; //
  if ChckBxXFecha.checked then
     ffiltroFec:=' and  fecha >=:Fini and Fecha<=:FFin';

  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltroFec+orden;
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro+ffiltroEstado+orden);
  if ffiltroFec <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;

  Tadodataset(datasource.DataSet).open;


end;

end.
