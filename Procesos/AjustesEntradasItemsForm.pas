unit AjustesEntradasItemsForm;

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
  TfrmAjustesEntradasItemsForm = class(T_frmStandarGFormGrid)
    tvMasterClaveProducto: TcxGridDBColumn;
    tvMasterCantidadSolicitada: TcxGridDBColumn;
    tvMasterCosto: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterImporteMonedaLocal: TcxGridDBColumn;
    tvMasterImpuestoArancelario: TcxGridDBColumn;
    tvMasterGastos: TcxGridDBColumn;
    tvMasterImporteTotal: TcxGridDBColumn;
    tvMasterCostoAproximado: TcxGridDBColumn;
    tvMasterPrecioVenta: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    FactSeleccionarProducto: TBasicAction;
    procedure SetactSeleccionarProducto(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actSeleccionarProducto: TBasicAction read FactSeleccionarProducto write SetactSeleccionarProducto; //Jul 18/16
  end;

var
  frmAjustesEntradasItemsForm: TfrmAjustesEntradasItemsForm;

implementation

{$R *.dfm}

uses AjustesEntradaDM;

{ TfrmAjustesEntradasItemsForm }

procedure TfrmAjustesEntradasItemsForm.FormCreate(Sender: TObject);
begin
  inherited;
  ApplyBestFit:= False;
end;

procedure TfrmAjustesEntradasItemsForm.SetactSeleccionarProducto(
  const Value: TBasicAction);
begin
  FactSeleccionarProducto := Value;
  tvMasterClaveProducto.Properties.Buttons[0].Action:= Value;
end;

end.
