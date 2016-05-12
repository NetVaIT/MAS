unit PersonasContactosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonaContactos = class(T_dmStandar)
    adodsContacto: TADODataSet;
    adodsContactoIdPersona: TAutoIncField;
    adodsContactoNombre: TStringField;
    adodsContactoApellidoPaterno: TStringField;
    adodsContactoApellidoMaterno: TStringField;
    adodsContactoRazonSocial: TStringField;
    adodsContactoIdPersonaEstatus: TIntegerField;
    adodsContactoRFC: TStringField;
    adodsContactoCURP: TStringField;
    adodsMasterIdContacto: TIntegerField;
    adodsMasterNombre: TStringField;
    adodsMasterCargo: TStringField;
    adodsMasterCorreoElectronico: TStringField;
    adodsMasterTelefonoFijo: TStringField;
    adodsMasterTelefonoMovil: TStringField;
    adodsMasterIdPersona: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
  private
    FIdDomicilioPersona: Integer;
    procedure SetFIdDomicilioPersona(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
     property AIdDomicilioPersona:Integer read FIdDomicilioPersona write SetFIdDomicilioPersona;  //may 9/16
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasContactosEdit;

{$R *.dfm}

procedure TdmPersonaContactos.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('IdPersonaDomicilio').AsInteger:= FIdDomicilioPersona; //May 9/16
end;

procedure TdmPersonaContactos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmPersonasContactosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

procedure TdmPersonaContactos.SetFIdDomicilioPersona(const Value: Integer);
begin     //May 9/16
  FIdDomicilioPersona := Value;
  adoDSMaster.Close;
  adoDSMaster.Parameters.ParamByName('IdPersonaDomicilio').Value:= FIdDomicilioPersona;
  adoDSMaster.open;

end;

end.
