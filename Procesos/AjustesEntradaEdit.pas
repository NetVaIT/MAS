unit AjustesEntradaEdit;

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
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit,
  Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  Vcl.StdCtrls, cxMemo, cxLabel, cxDBLabel, Vcl.Buttons;

type
  TfrmAjustesEntradas = class(T_frmStandarGFormEdit)
    pnlEncabezado: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLabel2: TcxDBLabel;
    lcbAlmacen: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel1: TcxDBLabel;
    pnlDetail: TPanel;
    pnlPie: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    btnAplicarEntrada: TSpeedButton;
    PnlTitulo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    FactAplicaEntrada: TBasicAction;
    procedure SetactAplicaEntrada(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
     property actAplicaEntrada: TBasicAction read FactAplicaEntrada write SetactAplicaEntrada;
  end;

var
  frmAjustesEntradas: TfrmAjustesEntradas;

implementation

{$R *.dfm}

uses AjustesEntradaDM, AjustesEntradaForm;

procedure TfrmAjustesEntradas.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  btnAplicarEntrada.Enabled:=DataSource.DataSet.FieldByName('IdOrdenEstatus').AsInteger=7;//Jul 18/16
  DataSource.AutoEdit:=DataSource.DataSet.FieldByName('IdOrdenEstatus').AsInteger=7;//Jul 18/16
end;

procedure TfrmAjustesEntradas.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmAjustesEntradasGrid.Create(Self);
  ContainerDetail1:= pnlDetail;
end;

procedure TfrmAjustesEntradas.SetactAplicaEntrada(const Value: TBasicAction);
begin
  FactAplicaEntrada := Value;
  btnAplicarEntrada.Action:=Value;

end;

end.
