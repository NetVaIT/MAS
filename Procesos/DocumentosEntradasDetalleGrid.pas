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
  Vcl.ExtCtrls, cxButtonEdit, Vcl.Menus;

type
  TfrmDocumentosEntradasDetalleGrid = class(T_frmStandarGFormGrid)
    tvMasterIdDocumentoentradaDetalle: TcxGridDBColumn;
    tvMasterIdDocumentoEntrada: TcxGridDBColumn;
    tvMasterIdAlmacen: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterClaveProducto: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    tvMasterCantidadPendiente: TcxGridDBColumn;
    tvMasterPrecio: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    FactSeleccionarProducto: TBasicAction;
    procedure SetactSeleccionarProducto(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actSeleccionarProducto: TBasicAction read FactSeleccionarProducto write SetactSeleccionarProducto;
  end;

implementation

{$R *.dfm}

uses DocumentosEntradasDM;

procedure TfrmDocumentosEntradasDetalleGrid.FormCreate(Sender: TObject);
begin
  inherited;
  ApplyBestFit:= False;
end;

procedure TfrmDocumentosEntradasDetalleGrid.SetactSeleccionarProducto(
  const Value: TBasicAction);
begin
  FactSeleccionarProducto := Value;
  tvMasterClaveProducto.Properties.Buttons[0].Action:= Value;
end;

end.
