unit rptVentasProyeccionForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls, cxDBLookupComboBox, cxBarEditItem, cxCalc;

type
  TfrmrptVentasProyeccion = class(T_frmGrid)
    cxedtPeriodo: TcxBarEditItem;
    dxbProcess: TdxBar;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    edtMeses: TcxBarEditItem;
    btnExecute: TdxBarButton;
    tvMasterRecId: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterIdentificador1: TcxGridDBColumn;
    tvMasterIdentificador2: TcxGridDBColumn;
    tvMasterIdentificador3: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterCantidadAnual: TcxGridDBColumn;
    tvMasterCantidadMensual: TcxGridDBColumn;
    tvMasterCantidadFuturo: TcxGridDBColumn;
    tvMasterMeses: TcxGridDBColumn;
    tvMasterCantidadPromedio: TcxGridDBColumn;
    tvMasterCantidadRequerida: TcxGridDBColumn;
    tvMasterExistencia: TcxGridDBColumn;
    tvMasterCantidadComprar: TcxGridDBColumn;
    tvMasterCantidadBackorder: TcxGridDBColumn;
    tvMasterBackorder: TcxGridDBColumn;
    tvMasterIdPersona1: TcxGridDBColumn;
    tvMasterIdPersona2: TcxGridDBColumn;
    tvMasterIdPersona3: TcxGridDBColumn;
    tvMasterProveedor1: TcxGridDBColumn;
    tvMasterComprar1: TcxGridDBColumn;
    tvMasterProveedor2: TcxGridDBColumn;
    tvMasterComprar2: TcxGridDBColumn;
    tvMasterProveedor3: TcxGridDBColumn;
    tvMasterComprar3: TcxGridDBColumn;
  private
    FactExecute: TBasicAction;
    { Private declarations }
    function GetMeses: Integer;
    procedure SetMeses(const Value: Integer);
    procedure SetactExecute(const Value: TBasicAction);
  public
    { Public declarations }
    property Meses: Integer read GetMeses write SetMeses;
    property actExecute: TBasicAction read FactExecute write SetactExecute;
  end;

implementation

{$R *.dfm}

uses rptVentasProyeccionDM;

{ TfrmrptVentasProyeccion }

function TfrmrptVentasProyeccion.GetMeses: Integer;
begin
  Result := edtMeses.EditValue;
end;

procedure TfrmrptVentasProyeccion.SetactExecute(const Value: TBasicAction);
begin
  FactExecute := Value;
  btnExecute.Action := Value;
end;

procedure TfrmrptVentasProyeccion.SetMeses(const Value: Integer);
begin
  edtMeses.EditValue := Value;
end;

end.
