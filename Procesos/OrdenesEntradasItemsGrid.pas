unit OrdenesEntradasItemsGrid;

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
  TfrmOrdenesEntradasItemsGrid = class(T_frmStandarGFormGrid)
    tvMasterIdOrdenEntradaItem: TcxGridDBColumn;
    tvMasterIdOrdenEntrada: TcxGridDBColumn;
    tvMasterIdDocumentoEntradaDetalle: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterClaveProducto: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    tvMasterCantidadSolicitada: TcxGridDBColumn;
    tvMasterPrecio: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterImporteMonedaLocal: TcxGridDBColumn;
    tvMasterImpuestoArancelario: TcxGridDBColumn;
    tvMasterGastos: TcxGridDBColumn;
    tvMasterImporteTotal: TcxGridDBColumn;
    tvMasterCostoAproximado: TcxGridDBColumn;
    btnArancel: TSpeedButton;
    btnGastos: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    FactSeleccionarProducto: TBasicAction;
    FMostrarImporte: Boolean;
    FMostrarCantidad: Boolean;
    FactModificarArancel: TBasicAction;
    FactModificarGastos: TBasicAction;
    procedure SetactSeleccionarProducto(const Value: TBasicAction);
    procedure SetMostrarImporte(const Value: Boolean);
    procedure SetMostrarCantidad(const Value: Boolean);
    procedure SetactModificarArancel(const Value: TBasicAction);
    procedure SetactModificarGastos(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actSeleccionarProducto: TBasicAction read FactSeleccionarProducto write SetactSeleccionarProducto;
    property actModificarArancel: TBasicAction read FactModificarArancel write SetactModificarArancel;
    property actModificarGastos: TBasicAction read FactModificarGastos write SetactModificarGastos;
    property MostrarImporte: Boolean read FMostrarImporte write SetMostrarImporte default False;
    property MostrarCantidad: Boolean read FMostrarCantidad write SetMostrarCantidad default False;
  end;

implementation

{$R *.dfm}

uses OrdenesEntradasDM;

procedure TfrmOrdenesEntradasItemsGrid.FormCreate(Sender: TObject);
begin
  inherited;
  ApplyBestFit:= False;
end;

procedure TfrmOrdenesEntradasItemsGrid.SetactModificarArancel(
  const Value: TBasicAction);
begin
  FactModificarArancel := Value;
  btnArancel.Action := Value;
end;

procedure TfrmOrdenesEntradasItemsGrid.SetactModificarGastos(
  const Value: TBasicAction);
begin
  FactModificarGastos := Value;
  btnGastos.Action := Value;
end;

procedure TfrmOrdenesEntradasItemsGrid.SetactSeleccionarProducto(
  const Value: TBasicAction);
begin
  FactSeleccionarProducto := Value;
  tvMasterClaveProducto.Properties.Buttons[0].Action:= Value;
end;

procedure TfrmOrdenesEntradasItemsGrid.SetMostrarCantidad(const Value: Boolean);
begin
  FMostrarCantidad := Value;
  tvMasterCantidadSolicitada.Visible:= Value;
  tvMasterCantidadSolicitada.VisibleForCustomization:= Value;
end;

procedure TfrmOrdenesEntradasItemsGrid.SetMostrarImporte(const Value: Boolean);
begin
  FMostrarImporte := Value;
  tvMasterPrecio.Visible:= Value;
  tvMasterPrecio.VisibleForCustomization:= Value;
  tvMasterImporte.Visible:= Value;
  tvMasterImporte.VisibleForCustomization:= Value;
  //
  tvMasterImporteMonedaLocal.Visible:= Value;
  tvMasterImporteMonedaLocal.VisibleForCustomization:= Value;
  tvMasterImpuestoArancelario.Visible:= Value;
  tvMasterImpuestoArancelario.VisibleForCustomization:= Value;
  tvMasterGastos.Visible:= Value;
  tvMasterGastos.VisibleForCustomization:= Value;
  tvMasterImporteTotal.Visible:= Value;
  tvMasterImporteTotal.VisibleForCustomization:= Value;
  tvMasterCostoAproximado.Visible:= Value;
  tvMasterCostoAproximado.VisibleForCustomization:= Value;
end;

end.
