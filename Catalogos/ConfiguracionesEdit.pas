unit ConfiguracionesEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _EditForm, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, cxPC,
  Vcl.DBCtrls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit,
  Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls;

type
  TfrmConfiguracionesEdit = class(T_frmEdit)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label11: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label12: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    PnlDatosCorreoSalida: TPanel;
    Label3: TLabel;
    cxDBTxtEdtCorreo: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTxtEdtHost: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTxtEdtPuerto: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label7: TLabel;
    Label9: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    SpdBtnVerPass: TSpeedButton;
    DBTxtEdtPass: TDBEdit;
    PrgrsBrEnvioP: TProgressBar;
    SpdBtnPruebaEnv: TSpeedButton;
    CBXTipoSEg: TComboBox;
    procedure SpdBtnVerPassClick(Sender: TObject);
    procedure SpdBtnPruebaEnvClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ConfiguracionDM, UDMEnvioMail;

procedure TfrmConfiguracionesEdit.SpdBtnPruebaEnvClick(Sender: TObject);
var EnviarA:String;
 ArchivosLista:TStringList;
begin
   ArchivosLista:=TStringList.Create;
  PrgrsBrEnvioP.Position:=0;
  if (cxDBTxtEdtCorreo.Text<>'') and (DBTxtEdtPass.Text<>'') and (cxDBTxtEdtHost.text<>'') and (cxDBTxtEdtPuerto.text<>'') then
  begin
    PrgrsBrEnvioP.visible:=true;
    if inputquery('Correo receptor','Indique el correo al que se enviará la prueba ', EnviarA)then
    begin
      PrgrsBrEnvioP.Position:=PrgrsBrEnvioP.Position+5;
      Application.ProcessMessages;
      DMEnvioMails:=TDMEnvioMails.Create(Self);
      PrgrsBrEnvioP.Position:=PrgrsBrEnvioP.Position+5;
      Application.ProcessMessages;
      if DMEnvioMails.SendEmail(EnviarA,'Prueba de Envio  ', 'Esta es una prueba de envio desde el correo base ', '','','', ArchivosLista,
          cxDBTxtEdtHost.text, cxDBTxtEdtCorreo.text, DBTxtEdtPass.text,'MAS Probando', strToInt(cxDBTxtEdtPuerto.text),
          CBXTipoSEg.itemindex,0)then    // cxDBLkpCmbBxSegSalida.ItemIndex, cxDBkpCmbBxAutSal.ItemIndex //No se usan adentro
      begin
        PrgrsBrEnvioP.Position:=20;
        Application.ProcessMessages;
        ShowMessage('Correo enviado');
      end
      else
      begin
        ShowMessage('Problemas en el envio del Correo. Revise Configuración');
      end;

      DMEnvioMails.free;
    end;
  end
  else
  begin
    ShowMessage('Faltan parámetros de envío');
  end;

  PrgrsBrEnvioP.visible:=False;

end;

procedure TfrmConfiguracionesEdit.SpdBtnVerPassClick(Sender: TObject);
begin
  inherited;
  if SpdBtnVerPass.Down then
    DBTxtEdtPass.passwordchar :=#0
  else
     DBTxtEdtPass.passwordchar :='*';
end;

end.
