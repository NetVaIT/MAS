unit DocumentosEntradasDetalleGrid;

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
  cxNavigator, Data.DB, cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, cxButtonEdit, Vcl.Menus, cxGridBandedTableView,
  cxGridDBBandedTableView, dxLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView,
  Vcl.Buttons;

type
  TfrmDocumentosEntradasDetalleGrid = class(T_frmStandarGFormGrid)
    tvMasterIdDocumentoentradaDetalle: TcxGridDBColumn;
    tvMasterIdDocumentoEntrada: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterClaveProducto: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    tvMasterCantidadPendiente: TcxGridDBColumn;
    tvMasterPrecio: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    tvMaster2: TcxGridDBTableView;
    tvMaster2IdProducto: TcxGridDBColumn;
    tvMaster2ClaveProducto: TcxGridDBColumn;
    tvMaster2Producto: TcxGridDBColumn;
    tvMaster2Existencia: TcxGridDBColumn;
    tvMaster2CantidadAnual: TcxGridDBColumn;
    tvMaster2CantidadMensual: TcxGridDBColumn;
    tvMaster2CantidadPromedio: TcxGridDBColumn;
    tvMaster2CantidadFuturo: TcxGridDBColumn;
    tvMaster2BackOrder: TcxGridDBColumn;
    tvMasterImporteMonedaLocal: TcxGridDBColumn;
    tvMaster2PrecioMonedalocal: TcxGridDBColumn;
    tvMaster2CostoPromedio: TcxGridDBColumn;
    tvMaster2PreicoVenta: TcxGridDBColumn;
    tvMasterPrecioMonedalocal: TcxGridDBColumn;
    tvMasterIdentificadorProveedor: TcxGridDBColumn;
    btnGetDetalleAnterior: TSpeedButton;
    tvMasterIdDocumentoEntradaDetalleAnterior: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataSetInsertExecute(Sender: TObject);
  private
    FactSeleccionarProducto: TBasicAction;
    FactGetDetalleAnterior: TBasicAction;
    procedure SetactSeleccionarProducto(const Value: TBasicAction);
    procedure SetactGetDetalleAnterior(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actSeleccionarProducto: TBasicAction read FactSeleccionarProducto write SetactSeleccionarProducto;
    property actGetDetalleAnterior: TBasicAction read FactGetDetalleAnterior write SetactGetDetalleAnterior;
  end;

implementation

{$R *.dfm}

uses DocumentosEntradasDM;

procedure TfrmDocumentosEntradasDetalleGrid.DataSetInsertExecute(
  Sender: TObject);
begin
  cxGrid.ActiveLevel:= cxGridLevel1;
  DataSource.DataSet.Append;
end;

procedure TfrmDocumentosEntradasDetalleGrid.FormCreate(Sender: TObject);
begin
  inherited;
  ApplyBestFit:= False;
end;

procedure TfrmDocumentosEntradasDetalleGrid.SetactGetDetalleAnterior(
  const Value: TBasicAction);
begin
  FactGetDetalleAnterior := Value;
  btnGetDetalleAnterior.Action := Value;
end;

procedure TfrmDocumentosEntradasDetalleGrid.SetactSeleccionarProducto(
  const Value: TBasicAction);
begin
  FactSeleccionarProducto := Value;
  tvMasterClaveProducto.Properties.Buttons[0].Action:= Value;
end;

end.
