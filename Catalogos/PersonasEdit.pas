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
  cxPC, PersonasContactosDM, CuentasBancariasDM, Vcl.DBCtrls, cxLabel, cxDBLabel,PersonasCSDDM;

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
    Label11: TLabel;
    edtRazonSocial: TcxDBTextEdit;
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
    cxDBTxtEdtNombreComp: TcxDBTextEdit;
    tsDomicilio: TcxTabSheet;
    tsTelefono: TcxTabSheet;
    tsCorreo: TcxTabSheet;
    tsContactos: TcxTabSheet;
    tsCuentasBancarias: TcxTabSheet;
    cxDBLkupCBxRol: TcxDBLookupComboBox;
    PnlCliente: TPanel;
    cxDBEdtCtaCliente: TcxDBTextEdit;
    LblCteCte: TLabel;
    cxDBLkupCBxMetodoPago: TcxDBLookupComboBox;
    Label13: TLabel;
    Label15: TLabel;
    DSMetodoPago: TDataSource;
    cxDBLabel1: TcxDBLabel;
    TSCertificadosCSD: TcxTabSheet;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLabel3: TcxDBLabel;
    PnlTitulo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnWebClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbTipoPersonaPropertiesChange(Sender: TObject);
    procedure edtNombrePropertiesEditValueChanged(Sender: TObject);
    procedure cxDBLkupCBxMetodoPagoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    dmPersonasDomicilios : TdmPersonasDomicilios;
    dmTelefonos : TdmTelefonos;
    dmEmails : TdmEmail;
    dmContactos : TdmPersonaContactos;
    dmCuentasBancarias : TdmCuentasBancarias;
    dmPersonasCSD:TdmPersonasCSD;
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
  if datasource.State in[dsEdit,dsInsert] then             //Nov 4/15
     datasource.DataSet.FieldByName('idrol').Asinteger:=integer(ROL);   //no coincide con los de la BD
end;

procedure TfrmPersonasEdit.cxDBLkupCBxMetodoPagoPropertiesChange(
  Sender: TObject);
begin
   inherited;
  LblCteCte.Visible:=cxDBLkupCBxMetodoPago.EditValue=1; //DSMetodoPago.DataSet.FieldByName('ExigeCuenta').asinteger=1;
  cxDBEdtCtaCliente.Visible:=cxDBLkupCBxMetodoPago.EditValue=1; //DSMetodoPago.DataSet.FieldByName('ExigeCuenta').asinteger=1;
  if DataSource.DataSet.State in [dsedit, dsInsert]  then
  begin
    if not cxDBEdtCtaCliente.Visible then
      datasource.DataSet.FieldByName('NumCtaPagoCliente').AsString:='';
  end;
end;

procedure TfrmPersonasEdit.edtNombrePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if datasource.State in[dsEdit,dsInsert] then
  begin
    datasource.DataSet.FieldByName('RazonSocial').AsString:= datasource.DataSet.FieldByName('Nombre').AsString +' '+
                                                             datasource.DataSet.FieldByName('ApellidoPaterno').AsString+' '+
                                                             datasource.DataSet.FieldByName('ApellidoMaterno').AsString;
  end;
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
  dmPersonasCSD:= TdmPersonasCSD.Create(nil);//Dic 21/15
 // TfrmPersonas(gFormGrid).CerrarGrid := actCloseGrid;
end;

procedure TfrmPersonasEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmPersonasDomicilios);
  FreeAndNil(dmTelefonos);
  FreeAndNil(dmEmails);
  FreeAndNil(dmContactos);
  FreeAndNil(dmCuentasBancarias);
  FreeAndNil(dmPersonasCSD); //Dic 21/15
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

  dmPersonasCSD.MasterSource:=DataSource;  //Dic 21/15
  dmPersonasCSD.MasterFields := 'IdPersona';   //Dic 21/15
  dmPersonasCSD.ShowModule(TSCertificadosCSD,''); //Dic 21/15

  TSCertificadosCSD.TabVisible:=  Rol=rEmisor ;
  case Rol of   //Mar 2/16
    rCliente: PnlTitulo.Caption:='Clientes';
    rProveedor: PnlTitulo.Caption:='Proveedores';
    rEmpleado: PnlTitulo.Caption:='Empleados';
    rEmisor: PnlTitulo.Caption:='Emisor';
  end;
   //Titulo

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
    //cxDBLkupCBxRol.EditValue:=Rol; //Nov 4/15
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
  //ADD ABAN Nov 5/15
  if not DataSource.DataSet.eof then
  begin
    pnlPersonaMoral.Visible := DataSource.DataSet.FieldByName('IdPersonaTipo').AsInteger = 2;  //
    pnlPersonaFisica.Visible := DataSource.DataSet.FieldByName('IdPersonaTipo').AsInteger = 1;
    PnlCliente.Visible:= DataSource.DataSet.FieldByName('Idrol').AsInteger =1;

    LblCteCte.Visible:=DataSource.DataSet.FieldByName('ExigeCta').asinteger=1;;
    cxDBEdtCtaCliente.Visible:=DataSource.DataSet.FieldByName('ExigeCta').asinteger=1;
  end;
end;

procedure TfrmPersonasEdit.SetRol(const Value: TPRol);
begin
  FRol := Value;
  TfrmPersonas(gFormGrid).Rol:= Value;
end;

end.
