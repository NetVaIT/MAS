unit PersonasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TPRol = (rNone, rCliente, rProveedor, rEmpleado);
  TdmPersonas = class(T_dmStandar)
    adodsMasterIdPersona: TAutoIncField;
    adodsMasterRFC: TStringField;
    adodsMasterCURP: TStringField;
    adodsMasterIdPersonaTipo: TIntegerField;
    adodsMasterIdRazonSocialTipo: TIntegerField;
    adodsMasterIdSexo: TIntegerField;
    adodsMasterIdEstadoCivil: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdPoblacion: TIntegerField;
    adodsMasterRazonSocial: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterApellidoPaterno: TStringField;
    adodsMasterApellidoMaterno: TStringField;
    adodsMasterLugarNacimiento: TStringField;
    adodsMasterFechaNacimiento: TDateTimeField;
    adodsMasterIdPersonaTitular: TIntegerField;
    adodsMasterVigenciaFM34: TDateTimeField;
    adodsPersonaTipo: TADODataSet;
    adodsRazonSocialTipo: TADODataSet;
    adodsSexo: TADODataSet;
    adodsEstadoCivil: TADODataSet;
    adodsPersonaTipoIdPersonaTipo: TAutoIncField;
    adodsPersonaTipoDescripcion: TStringField;
    adodsSexoIdSexo: TAutoIncField;
    adodsSexoDescripcion: TStringField;
    adodsRazonSocialTipoIdRazonSocialTipo: TAutoIncField;
    adodsRazonSocialTipoDescripcion: TStringField;
    adodsEstadoCivilIdEstadoCivil: TIntegerField;
    adodsEstadoCivilDescripcion: TStringField;
    adodsMasterPersonaTipo: TStringField;
    adodsMasterRazonSocialTipo: TStringField;
    adodsMasterSexo: TStringField;
    adodsMasterEstadoCivil: TStringField;
    ADODataSet1: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
    procedure AsignarConsulta;
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasMaster, PersonasEdit;

{$R *.dfm}

procedure TdmPersonas.AsignarConsulta;
var
  ConsultaP, ConsultaPR : String;
begin
  ConsultaPR := 'SELECT Personas.IdPersona, Personas.RazonSocial, ' + #10#13 +
                'PersonasRoles.IdRol, PersonasRoles.IdPersona ' + #10#13 +
                'FROM Personas ' + #10#13 +
                'LEFT JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.IdPersona ';
  case Rol of
    rNone:
    begin
      ConsultaPR := 'SELECT Personas.IdPersona, Personas.RazonSocial, ' + #10#13 +
                    'PersonasRoles.IdRol, PersonasRoles.IdPersona ' + #10#13 +
                    'FROM Personas ' + #10#13 +
                    'LEFT JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.IdPersona ';
    end;
    rCliente:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 1)))';
    end;
    rProveedor:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 2)))';
    end;
    rEmpleado:
    begin
      ConsultaP := ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 3)))';
    end;
  end;
  adodsMaster.CommandText := adodsMaster.CommandText + ConsultaP;
end;

procedure TdmPersonas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmPersonasEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

procedure TdmPersonas.SetRol(const Value: TPRol);
begin
  FRol := Value;
//  TfrmPersonasEdit(gGridEditForm).Rol := Value;
//  TfrmPersonasRoles(gFormDeatil1).Rol := Value;
  AsignarConsulta;
  adodsMaster.Open;
//  adodsPersonaRoles.Open;
end;

end.
