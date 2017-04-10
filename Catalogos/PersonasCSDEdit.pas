unit PersonasCSDEdit;

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
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxLabel, cxDBLabel, cxTextEdit,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmPersonasCSDEdit = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnUpdateFileCER: TSpeedButton;
    Label4: TLabel;
    btnUpdateFileKEY: TSpeedButton;
    cxDBTxtEdtPass: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLabel2: TcxDBLabel;
    SpdBtnVerPass: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnVerPassClick(Sender: TObject);
  private
    FUpdateFileCER: TBasicAction;
    FUpdateFileKEY: TBasicAction;
    procedure SetUpdateFileCER(const Value: TBasicAction);
    procedure SetUpdateFileKEY(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property UpdateFileCER: TBasicAction read FUpdateFileCER write SetUpdateFileCER;
    property UpdateFileKEY: TBasicAction read FUpdateFileKEY write SetUpdateFileKEY;

  end;

var
  FrmPersonasCSDEdit: TFrmPersonasCSDEdit;

implementation

{$R *.dfm}

uses PersonasCSDDM, PersonasCSDForm;

{ TFrmPersonasCSDEdit }

procedure TFrmPersonasCSDEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmPersonasCSDFormGrid.Create(Self);
  // TfrmPersonasCSDFormGrid(gFormGrid).CerrarGrid := actCloseGrid;
end;

procedure TFrmPersonasCSDEdit.SetUpdateFileCER(const Value: TBasicAction);
begin
  FUpdateFileCER := Value;
  btnUpdateFileCER.Action := Value;
end;

procedure TFrmPersonasCSDEdit.SetUpdateFileKEY(const Value: TBasicAction);
begin
  FUpdateFileKEY := Value;
  btnUpdateFileKEY.Action := Value;
end;

procedure TFrmPersonasCSDEdit.SpdBtnVerPassClick(Sender: TObject);
begin
  inherited;
   if SpdBtnVerPass.Down then
    cxDBTxtEdtPass.properties.echomode :=eemNormal
  else
     cxDBTxtEdtPass.properties.echomode :=eemPassword;
end;

end.
