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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasContactosEdit;

{$R *.dfm}

procedure TdmPersonaContactos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmPersonasContactosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
