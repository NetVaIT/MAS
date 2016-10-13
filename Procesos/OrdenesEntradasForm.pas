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
    lblMoneda: TLabel;
    Label9: TLabel;
    edtMoneda: TDBLookupComboBox;
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
    lblTipoCambio: TLabel;
    edtTipoCambio: TcxDBButtonEdit;
    Label13: TLabel;
    lcbAlmacen: TDBLookupComboBox;
    PnlTitulo: TPanel;
    cxLabel1: TcxLabel;
    btnRecibr: TSpeedButton;
    btnAplicar: TSpeedButton;
    SpdBtnAcomodarGenerico: TSpeedButton;
    ToolButton4: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FactTipoCambio: TBasicAction;
    FactCrearOrden: TBasicAction;
    FMostrarImporte: Boolean;
    FactAplicar: TBasicAction;
    FactRecibir: TBasicAction;
    FactAcomodar: TBasicAction;
    procedure SetactCrearOrden(const Value: TBasicAction);
    procedure SetactTipoCambio(const Value: TBasicAction);
    procedure SetMostrarImporte(const Value: Boolean);
    procedure SetactAplicar(const Value: TBasicAction);
    procedure SetactRecibir(const Value: TBasicAction);
    procedure SetactAcomodar(const Value: TBasicAction);
  public
    { Public declarations }
    property actTipoCambio: TBasicAction read FactTipoCambio write SetactTipoCambio;
    property actCrearOrden: TBasicAction read FactCrearOrden write SetactCrearOrden;
    property actRecibir: TBasicAction read FactRecibir write SetactRecibir;
    property actAplicar: TBasicAction read FactAplicar write SetactAplicar;
    property MostrarImporte: Boolean read FMostrarImporte write SetMostrarImporte default False;
    procedure SetFoco;

    property actAcomodar: TBasicAction read FactAcomodar write SetactAcomodar;//ABAN Oct 12/16
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

procedure TfrmOrdenesEntradas.FormShow(Sender: TObject);
begin
  inherited;
  TfrmOrdenesEntradasGrid(gFormGrid).MostrarImporte:= MostrarImporte;
end;

procedure TfrmOrdenesEntradas.SetactAcomodar(const Value: TBasicAction);   //Oct 12/16
begin
  FactAcomodar := Value;
  SpdBtnAcomodarGenerico.Action:=Value;
end;

procedure TfrmOrdenesEntradas.SetactAplicar(const Value: TBasicAction);
begin
  FactAplicar := Value;
  btnAplicar.Action := Value;
end;

procedure TfrmOrdenesEntradas.SetactCrearOrden(const Value: TBasicAction);
begin
  FactCrearOrden := Value;
  ToolButton10.Action:= Value;
end;

procedure TfrmOrdenesEntradas.SetactRecibir(const Value: TBasicAction);
begin
  FactRecibir := Value;
  btnRecibr.Action := Value;
end;

procedure TfrmOrdenesEntradas.SetactTipoCambio(const Value: TBasicAction);
begin
  FactTipoCambio := Value;
  edtTipoCambio.Properties.Buttons[0].Action:= Value;
end;

procedure TfrmOrdenesEntradas.SetFoco;
begin
  lcbAlmacen.SetFocus;
end;

procedure TfrmOrdenesEntradas.SetMostrarImporte(const Value: Boolean);
begin
  FMostrarImporte := Value;
  lblMoneda.Visible:= Value;
  edtMoneda.Visible:= Value;
  lblTipoCambio.Visible:= Value;
  edtTipoCambio.Visible:= Value;
end;

end.
