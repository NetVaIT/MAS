unit FacturasFormGrid;

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
  Vcl.ExtCtrls, Shellapi;

type
  TfrmFacturasGrid = class(T_frmStandarGFormGrid)
    tvMasterTipoComp: TcxGridDBColumn;
    tvMasterSerie: TcxGridDBColumn;
    tvMasterFolio: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterTotalImpuestoTrasladado: TcxGridDBColumn;
    tvMasterSaldoDocumento: TcxGridDBColumn;
    tvMasterFechaCancelacion: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterUUID_TB: TcxGridDBColumn;
    tvMasterFechaTimbrado_TB: TcxGridDBColumn;
    tvMasterSubTotal: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterTipoDocumento: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    ToolButton11: TToolButton;
    TlBtnPrefactura: TToolButton;
    TlBtnRegPDF: TToolButton;
    procedure tbarGridClick(Sender: TObject);
  private
    PreFacturas: TBasicAction;
    RegeneraPDF: TBasicAction;
    procedure SetPreFacturas(const Value: TBasicAction);
    procedure SetRegeneraPDF(const Value: TBasicAction);

    { Private declarations }
  public
    { Public declarations }
     property ActPreFacturas : TBasicAction read PreFacturas write SetPreFacturas;
     property ActRegPDF : TBasicAction read RegeneraPDF write SetRegeneraPDF;
  end;

var
  frmFacturasGrid: TfrmFacturasGrid;

implementation

{$R *.dfm}

uses FacturasDM;

{ TfrmFacturasGrid }

procedure TfrmFacturasGrid.SetPreFacturas(const Value: TBasicAction);
begin
  PreFacturas:=Value;
  TlBtnPrefactura.Action:=Value;
  TlBtnPrefactura.ImageIndex:=12; //Dic 10/15
end;

procedure TfrmFacturasGrid.SetRegeneraPDF(const Value: TBasicAction);
begin //Dic 22/15
  RegeneraPDF:=Value;
  TlBtnRegPDF.Action:=Value;
  TlBtnRegPDF.Imageindex:=13;
end;

procedure TfrmFacturasGrid.tbarGridClick(Sender: TObject);
begin
  inherited;
  //Llama al regenerar
end;

end.
