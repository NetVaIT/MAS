unit OrdenesEntradasForm;

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
  TfrmOrdenesEntradas = class(T_frmStandarGFormEdit)
    pnlDetail: TPanel;
    pnlEncabezado: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
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
    DBLookupComboBox1: TDBLookupComboBox;
    Label12: TLabel;
    edtTipoCambio: TcxDBButtonEdit;
    Label13: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    PnlTitulo: TPanel;
    cxLabel1: TcxLabel;
    btnAutorizar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FactTipoCambio: TBasicAction;
    FactCrearOrden: TBasicAction;
    FactAutorizar: TBasicAction;
    procedure SetactCrearOrden(const Value: TBasicAction);
    procedure SetactTipoCambio(const Value: TBasicAction);
    procedure SetactAutorizar(const Value: TBasicAction);
  public
    { Public declarations }
    property actTipoCambio: TBasicAction read FactTipoCambio write SetactTipoCambio;
    property actCrearOrden: TBasicAction read FactCrearOrden write SetactCrearOrden;
    property actAutorizar: TBasicAction read FactAutorizar write SetactAutorizar;
  end;

implementation

{$R *.dfm}

uses OrdenesEntradasDM, OrdenesEntradasGrid;

procedure TfrmOrdenesEntradas.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmOrdenesEntradasGrid.Create(Self);
  ContainerDetail1:= pnlDetail;
end;

procedure TfrmOrdenesEntradas.SetactAutorizar(const Value: TBasicAction);
begin
  FactAutorizar := Value;
  btnAutorizar.Action:= Value;
end;

procedure TfrmOrdenesEntradas.SetactCrearOrden(const Value: TBasicAction);
begin
  FactCrearOrden := Value;
  ToolButton10.Action:= Value;
end;

procedure TfrmOrdenesEntradas.SetactTipoCambio(const Value: TBasicAction);
begin
  FactTipoCambio := Value;
  edtTipoCambio.Properties.Buttons[0].Action:= Value;
end;

end.