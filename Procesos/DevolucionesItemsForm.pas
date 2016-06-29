unit DevolucionesItemsForm;

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
  cxGrid, Vcl.ExtCtrls, cxButtonEdit;

type
  TFrmDevolucionesItemsGrid = class(T_frmStandarGFormGrid)
    tvMasterClaveProducto: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    tvMasterCantidadSolicitada: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterIdOrdenEntradaItem: TcxGridDBColumn;
    tvMasterIdOrdenEntrada: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterImporteMonedaLocal: TcxGridDBColumn;
    tvMasterImporteTotal: TcxGridDBColumn;
    tvMasterCosto: TcxGridDBColumn;
    tvMasterPrecioVenta: TcxGridDBColumn;
    tvMasterCostoAproximado: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    FactSeleccionarProducto: TBasicAction;
    procedure SetactSeleccionarProducto(const Value: TBasicAction);

    { Private declarations }
  public
    { Public declarations }
    property actSeleccionarProducto: TBasicAction read FactSeleccionarProducto write SetactSeleccionarProducto; //Jun 21/16
  end;

var
  FrmDevolucionesItemsGrid: TFrmDevolucionesItemsGrid;

implementation

{$R *.dfm}

uses DevolucionesDM;

{ TFrmDevolucionesItemsGrid }

procedure TFrmDevolucionesItemsGrid.FormCreate(Sender: TObject);
begin
  inherited;
  ApplyBestFit:= False;
end;

procedure TFrmDevolucionesItemsGrid.SetactSeleccionarProducto(
  const Value: TBasicAction);   //Se deja el de producto..  y no el de  Notas de Crédito....
begin
  FactSeleccionarProducto := Value;
  tvMasterClaveProducto.Properties.Buttons[0].Action:= Value;
end;

end.
