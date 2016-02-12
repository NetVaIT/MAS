unit PersonasDomiciliosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormEdit, cxStyles, cxClasses,
  Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxDBLabel, cxCheckBox, cxDBEdit, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.StdCtrls, cxScrollBox, cxPC;

type
  TfrmPersonasDomiciliosEdit = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    Label2: TLabel;
    btnUpdate: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBLabel1: TcxDBLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
    FUpdateDomicilio: TBasicAction;
    procedure SetUpdateDomicilio(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property UpdateDomicilio: TBasicAction read FUpdateDomicilio write SetUpdateDomicilio;

  end;

implementation

{$R *.dfm}

uses PersonasDomiciliosDM, PersonasDomiciliosForm;

procedure TfrmPersonasDomiciliosEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmPersonasDomicilios.Create(Self);
  TfrmPersonasDomicilios(gFormGrid).CerrarGrid := actCloseGrid;
end;

procedure TfrmPersonasDomiciliosEdit.SetUpdateDomicilio(
  const Value: TBasicAction);
begin
  FUpdateDomicilio := Value;
  btnUpdate.Action := Value;
end;

end.
