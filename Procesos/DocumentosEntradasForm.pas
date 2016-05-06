unit DocumentosEntradasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormEdit, dxSkinsCore,
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
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxClasses, Vcl.StdActns,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls,
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit, cxMemo,
  cxDBEdit, cxLabel, cxDBLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.DBCtrls, Vcl.StdCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.Menus, cxButtons, cxButtonEdit, Vcl.Buttons;

type
  TfrmDocumentosEntradas = class(T_frmStandarGFormEdit)
    pnlDetail: TPanel;
    pnlEncabezado: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    pnlPie: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label5: TLabel;
    cxDBLabel2: TcxDBLabel;
    ToolButton3: TToolButton;
    Label11: TLabel;
    lcbClave: TDBLookupComboBox;
    Label12: TLabel;
    edtTipoCambio: TcxDBButtonEdit;
    btnAutorizar: TSpeedButton;
    btnGenDocumento: TSpeedButton;
    btnImprimir: TToolButton;
    PnlTitulo: TPanel;
    cxDBLabel3: TcxDBLabel;
    btnEmail: TToolButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FactAutorizar: TBasicAction;
    FactImprimir: TBasicAction;
    FactTipoCambio: TBasicAction;
    FactGenDocumento: TBasicAction;
    FactEmail: TBasicAction;
    procedure SetactAutorizar(const Value: TBasicAction);
    procedure SetactImprimir(const Value: TBasicAction);
    procedure SetactTipoCambio(const Value: TBasicAction);
    procedure SetactGenDocumento(const Value: TBasicAction);
    procedure SetactEmail(const Value: TBasicAction);
  public
    { Public declarations }
    property actAutorizar: TBasicAction read FactAutorizar write SetactAutorizar;
    property actGenDocumento: TBasicAction read FactGenDocumento write SetactGenDocumento;
    property actImprimir: TBasicAction read FactImprimir write SetactImprimir;
    property actEmail: TBasicAction read FactEmail write SetactEmail;
    property actTipoCambio: TBasicAction read FactTipoCambio write SetactTipoCambio;
    procedure SetFoco;
  end;

implementation

{$R *.dfm}

uses DocumentosEntradasGrid, DocumentosEntradasDM;

procedure TfrmDocumentosEntradas.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmDocumentosEntradasGrid.Create(Self);
  ContainerDetail1:= pnlDetail;
end;

procedure TfrmDocumentosEntradas.SetactAutorizar(const Value: TBasicAction);
begin
  FactAutorizar := Value;
  btnAutorizar.Action:= Value;
end;

procedure TfrmDocumentosEntradas.SetactEmail(const Value: TBasicAction);
begin
  FactEmail := Value;
  btnEmail.Action := Value;
end;

procedure TfrmDocumentosEntradas.SetactGenDocumento(const Value: TBasicAction);
begin
  FactGenDocumento := Value;
  btnGenDocumento.Action:= Value;
end;

procedure TfrmDocumentosEntradas.SetactImprimir(const Value: TBasicAction);
begin
  FactImprimir := Value;
  btnImprimir.Action:= value
end;

procedure TfrmDocumentosEntradas.SetactTipoCambio(const Value: TBasicAction);
begin
  FactTipoCambio := Value;
  edtTipoCambio.Properties.Buttons[0].Action:= Value;
end;

procedure TfrmDocumentosEntradas.SetFoco;
begin
  lcbClave.SetFocus;
end;

end.
