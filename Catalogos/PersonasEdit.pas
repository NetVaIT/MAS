unit PersonasEdit;

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
  cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.StdCtrls, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, ShellApi, PersonasDM, PersonasDomiciliosDM,
  TelefonosDM, EmailDM, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxScrollBox,
  cxPC, PersonasContactosDM, CuentasBancariasDM;

type
  TfrmPersonasEdit = class(T_frmStandarGFormEdit)
    pnlPersona: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lblCURP: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cmbTipoPersona: TcxDBLookupComboBox;
    cxDBEditCURP: TcxDBMaskEdit;
    btnWeb: TButton;
    pnlPersonaMoral: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    edtRazonSocial: TcxDBTextEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    pnlPersonaFisica: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    edtNombre: TcxDBTextEdit;
    edtAPaterno: TcxDBTextEdit;
    edtAMaterno: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    tsDomicilio: TcxTabSheet;
    tsTelefono: TcxTabSheet;
    tsCorreo: TcxTabSheet;
    tsContactos: TcxTabSheet;
    tsCuentasBancarias: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure btnWebClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbTipoPersonaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    dmPersonasDomicilios : TdmPersonasDomicilios;
    dmTelefonos : TdmTelefonos;
    dmEmails : TdmEmail;
    dmContactos : TdmPersonaContactos;
    dmCuentasBancarias : TdmCuentasBancarias;
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
    procedure MostrarPanel();
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}

uses PersonasForm;

procedure TfrmPersonasEdit.btnWebClick(Sender: TObject);
begin
  inherited;
  ShellExecute(Self.Handle,nil,PChar('https://rfc.siat.sat.gob.mx/PTSC/RFC/menu/index.jsp?opcion=2'),'','',SW_SHOWNORMAL);
end;

procedure TfrmPersonasEdit.cmbTipoPersonaPropertiesChange(Sender: TObject);
begin
  inherited;
  MostrarPanel;
end;

procedure TfrmPersonasEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmPersonas.Create(Self);
  dmPersonasDomicilios := TdmPersonasDomicilios.Create(nil);
  dmTelefonos := TdmTelefonos.Create(nil);
  dmEmails := TdmEmail.Create(nil);
  dmContactos := TdmPersonaContactos.Create(nil);
  dmCuentasBancarias := TdmCuentasBancarias.Create(nil);
  pcMain.Properties.HideTabs := False;
  TfrmPersonas(gFormGrid).CerrarGrid := actCloseGrid;
end;

procedure TfrmPersonasEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmPersonasDomicilios);
  FreeAndNil(dmTelefonos);
  FreeAndNil(dmEmails);
  FreeAndNil(dmContactos);
  FreeAndNil(dmCuentasBancarias);
end;

procedure TfrmPersonasEdit.FormShow(Sender: TObject);
begin
  inherited;
  MostrarPanel;
  dmPersonasDomicilios.MasterSource := DataSource;
  dmPersonasDomicilios.MasterFields := 'IdPersona';
  dmPersonasDomicilios.ShowModule(tsDomicilio,'');
  dmTelefonos.MasterSource := DataSource;
  dmTelefonos.MasterFields := 'IdPersona';
  dmTelefonos.ShowModule(tsTelefono,'');
  dmEmails.MasterSource := DataSource;
  dmEmails.MasterFields := 'IdPersona';
  dmEmails.ShowModule(tsCorreo,'');
  dmContactos.MasterSource := DataSource;
  dmContactos.MasterFields := 'IdPersona';
  dmContactos.ShowModule(tsContactos,'');
  dmCuentasBancarias.MasterSource := DataSource;
  dmCuentasBancarias.MasterFields := 'IdPersona';
  dmCuentasBancarias.ShowModule(tsCuentasBancarias,'');
end;

procedure TfrmPersonasEdit.MostrarPanel;
begin
  if DataSource.DataSet.State in [dsEdit] then
  begin
    if DataSource.DataSet.FieldByName('IdPersonaTipo').AsInteger = 1 then
    begin
      pnlPersonaMoral.Visible := False;
      pnlPersonaFisica.Visible := True;
      lblCURP.Visible := True;
      cxDBEditCURP.Visible := True;
      btnWeb.Visible := True;
    end
    else
    begin
      pnlPersonaMoral.Visible := True;
      pnlPersonaFisica.Visible := False;
      lblCURP.Visible := False;
      cxDBEditCURP.Visible := False;
      btnWeb.Visible := False;
    end;
    cmbTipoPersona.Enabled := False;
  end;
  if DataSource.DataSet.State in [dsInsert] then
  begin
    if (Rol = rEmpleado) then
    begin
      cmbTipoPersona.Enabled := False;
      cmbTipoPersona.EditValue := 1;
    end;
    if cmbTipoPersona.EditValue = 1 then
    begin
      pnlPersonaMoral.Visible := False;
      pnlPersonaFisica.Visible := True;
    end;
    if cmbTipoPersona.EditValue = 2 then
    begin
      pnlPersonaMoral.Visible := True;
      pnlPersonaFisica.Visible := False;
    end;
    cmbTipoPersona.Enabled := True;
  end;
end;

procedure TfrmPersonasEdit.SetRol(const Value: TPRol);
begin
  FRol := Value;
  TfrmPersonas(gFormGrid).Rol:= Value;
end;

end.
