unit EmailEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormEdit, cxStyles, cxClasses,
  Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  cxCheckBox, cxDBEdit, cxTextEdit, Vcl.DBCtrls, Vcl.StdCtrls, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxScrollBox, cxPC, Vcl.Buttons;

type
  TfrmEmailEdit = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    SpdBtnAsociaMails: TSpeedButton;
    DSHayXVincular: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnAsociaMailsClick(Sender: TObject);
  private
    FVinculaMail: TBasicAction;
    procedure SetFVinculaMail(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
     property AVinculaMails : TBasicAction read FVinculaMail write SetFVinculaMail;
  end;

implementation

{$R *.dfm}

uses EmailDM, EmailForm;

procedure TfrmEmailEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmEmail.Create(Self);
  DSHayXVincular.DataSet.close;
  DSHayXVincular.DataSet.open;
  SpdBtnAsociaMails.Visible:=DSHayXVincular.DataSet.RecordCount>0;
 // TfrmEmail(gFormGrid).CerrarGrid := actCloseGrid;
end;

procedure TfrmEmailEdit.SetFVinculaMail(const Value: TBasicAction);
begin
  FVinculaMail := Value;
end;

procedure TfrmEmailEdit.SpdBtnAsociaMailsClick(Sender: TObject);
begin
  inherited;
  AVinculaMails.Execute;
  SpdBtnAsociaMails.Visible:=DSHayXVincular.DataSet.RecordCount>0;
end;

end.
