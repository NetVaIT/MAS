unit PersonasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, dialogs;

type
  TPRol = (rNone, rCliente, rProveedor, rEmpleado, rEmisor); //Mod ABAN Nov 4/15 se agrego emisor
  TdmPersonas = class(T_dmStandar)
    adodsPersonaTipo: TADODataSet;
    adodsRoles: TADODataSet;
    adodsSexo: TADODataSet;
    adodsEstadoCivil: TADODataSet;
    adodsPersonaTipoIdPersonaTipo: TAutoIncField;
    adodsPersonaTipoDescripcion: TStringField;
    adodsSexoIdSexo: TAutoIncField;
    adodsSexoDescripcion: TStringField;
    adodsEstadoCivilIdEstadoCivil: TIntegerField;
    adodsEstadoCivilDescripcion: TStringField;
    adodsMasterIdPersona: TAutoIncField;
    adodsMasterRFC: TStringField;
    adodsMasterCURP: TStringField;
    adodsMasterIdPersonaTipo: TIntegerField;
    adodsMasterIdSexo: TIntegerField;
    adodsMasterIdEstadoCivil: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterRazonSocial: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterApellidoPaterno: TStringField;
    adodsMasterApellidoMaterno: TStringField;
    adodsMasterLugarNacimiento: TStringField;
    adodsMasterFechaNacimiento: TDateTimeField;
    adodsMasterIdRol: TIntegerField;
    adodsRolesIdRol: TAutoIncField;
    adodsRolesIdentificador: TStringField;
    adodsRolesDescripcion: TStringField;
    adodsMasterRol: TStringField;
    adodsMasterPersonaTipo: TStringField;
    adodsMasterSexo: TStringField;
    adodsMasterEstadoCivil: TStringField;
    ADOdsPais: TADODataSet;
    ADOdsPaisIdPais: TAutoIncField;
    ADOdsPaisIdentificador: TStringField;
    ADOdsPaisDescripcion: TStringField;
    adodsMasterPais: TStringField;
    ADOdsMetodoPago: TADODataSet;
    ADOdsMetodoPagoIdMetodoPago: TAutoIncField;
    ADOdsMetodoPagoIdentificador: TStringField;
    ADOdsMetodoPagoDescripcion: TStringField;
    ADOdsMetodoPagoExigeCuenta: TIntegerField;
    adodsMasterIdMetodoPagoCliente: TIntegerField;
    adodsMasterIdRegimenFiscalEmisor: TIntegerField;
    adodsMasterIdPersonaEstatus: TIntegerField;
    adodsMasterIdDocumentoLogoEmisor: TIntegerField;
    adodsMasterSaldoCliente: TFMTBCDField;
    adodsMasterNSSEmpleado: TStringField;
    adodsMasterMetodoPago: TStringField;
    ADOdsRegimenFiscal: TADODataSet;
    ADOdsRegimenFiscalIdRegimenFiscal: TAutoIncField;
    ADOdsRegimenFiscalIdentificador: TStringField;
    ADOdsRegimenFiscalDescripcion: TStringField;
    adodsMasterRegimenFiscal: TStringField;
    ADOdsEstatus: TADODataSet;
    ADOdsEstatusIdPersonaEstatus: TAutoIncField;
    ADOdsEstatusIdentificador: TStringField;
    ADOdsEstatusDescripcion: TStringField;
    adodsMasterEstatusPersona: TStringField;
    adodsMasterExigeCta: TIntegerField;
    adodsMasterNumCtaPagoCliente: TStringField;
    adodsMasterDiasCreditoCliente: TIntegerField;
    ActEjecutarConsulta: TAction;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdentificador: TStringField;
    ADODtStMonedas: TADODataSet;
    ADODtStMonedasIdMoneda: TAutoIncField;
    ADODtStMonedasIdPais: TIntegerField;
    ADODtStMonedasIdentificador: TStringField;
    ADODtStMonedasDescripcion: TStringField;
    adodsMasterMonedaPrv: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure ActEjecutarConsultaExecute(Sender: TObject);
  private
    { Private declarations }
    FRol: TPRol;
    FFiltroNombre: String;
    procedure SetRol(const Value: TPRol);
    function GetFFiltroNombre: String;
//    procedure AsignarConsulta;
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
    constructor CreateWRol(AOwner: TComponent; Rol: TPRol); virtual;
    property Rol: TPRol read FRol write SetRol;

    property AfiltroNombre:String read GetFFiltroNombre write FFiltroNombre;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasEdit;

{$R *.dfm}

//procedure TdmPersonas.AsignarConsulta;
//var
//  ConsultaP, ConsultaPR : String;
//begin
//  ConsultaPR := 'SELECT Personas.IdPersona, Personas.RazonSocial, ' + #10#13 +
//                'Personas.idRol '+// 'PersonasRoles.IdRol, PersonasRoles.IdPersona ' + #10#13 +
//                'FROM Personas ' + #10#13 ;
//               //DEshabilitado Nov 4/15 + 'LEFT JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.IdPersona ';
//  case Rol of
//    rNone:
//    begin
//      ConsultaPR := 'SELECT Personas.IdPersona, Personas.RazonSocial, ' + #10#13 +
//                    'Personas.IdRol ' + #10#13 +   //Modificado se quitaron los de personaROL
//                    'FROM Personas ' + #10#13;
//                    //DEshabilitado  Nov 4/15 +'LEFT JOIN PersonasRoles ON Personas.IdPersona = PersonasRoles.IdPersona ';
//    end;
//    rCliente:
//    begin
//      ConsultaP := ' WHERE Personas.Idrol= 1'; //DEshabilitado  Nov 4/15 ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 1)))';
//    end;
//    rProveedor:
//    begin
//      ConsultaP := ' WHERE Personas.IDRol = 2' //DEshabilitado  Nov 4/15 ' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 2)))';
//    end;
//    rEmpleado:
//    begin
//      ConsultaP := ' WHERE Personas.IDRol = 3' ; //' WHERE (IdPersona IN (SELECT IdPersona FROM PersonasRoles WHERE IdRol IN (SELECT IdRol FROM Roles WHERE IdRolTipo = 3)))';
//    end;
//    rEmisor:  //ABAN Nov 4/15
//    begin
//      ConsultaP := ' WHERE Personas.IDRol = 4' ;
//    end;
//  end;
//  adodsMaster.CommandText := adodsMaster.CommandText + ConsultaP;
//end;

procedure TdmPersonas.ActEjecutarConsultaExecute(Sender: TObject);
begin
  inherited;
  actSearch.Execute;
end;

procedure TdmPersonas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  if Rol=rEmpleado then //Jul 16/16
    Dataset.fieldbyname('IdPersonaTipo').AsInteger:=1; // Porque no se asigna
  Dataset.fieldbyname('IdPersonaEstatus').AsInteger:=1; //Activo //May 5/16
   if Rol=rProveedor then //Dic 30/16
    Dataset.fieldbyname('IdMoneda').AsInteger:=106;
end;

constructor TdmPersonas.CreateWRol(AOwner: TComponent; Rol: TPRol);
begin
  FRol:= Rol;
  inherited Create(AOwner);
end;

procedure TdmPersonas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmPersonasEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmPersonasEdit(gGridEditForm).ActualizaConsulta:=ActEjecutarconsulta; //verificar si funciona  May 9/16
  TfrmPersonasEdit(gGridEditForm).Rol := Rol;

  // Busqueda
  SQLSelect:= 'SELECT IdPersona, IdPersonaTipo, IdRol, IdSexo, IdEstadoCivil, IdPais, IdMetodoPagoCliente, IdRegimenFiscalEmisor, IdPersonaEstatus, IdDocumentoLogoEmisor, RFC, CURP, RazonSocial, Nombre, ApellidoPaterno, ' +
  'ApellidoMaterno, LugarNacimiento, FechaNacimiento, NumCtaPagoCliente, SaldoCliente,  NSSEmpleado, DiasCreditoCliente ' +
  ', identificador, IdMoneda '+ //dic 30/16
  'FROM Personas ';
  SQLOrderBy:= 'ORDER BY RazonSocial';
  SetFilter;//actSearch.Execute;   //May 4 deshabilitado para prueba
end;

function TdmPersonas.GetFFiltroNombre: String;
begin
  FFiltroNombre:= TfrmPersonasEdit(gGridEditForm).AFiltroNombre;
  Result := FFiltroNombre;
end;


procedure TdmPersonas.SetFilter;
begin
  inherited;
  case Rol of
    rNone:
      SQLWhere := EmptyStr;
    rCliente:
      SQLWhere := ' WHERE Personas.Idrol= 1';
    rProveedor:
      SQLWhere := ' WHERE Personas.IDRol = 2';
    rEmpleado:
      SQLWhere := ' WHERE Personas.IDRol = 3';
    rEmisor:
      SQLWhere := ' WHERE Personas.IDRol = 4';
  end;
  if AFiltroNombre<>'' then
  begin
    if SQLWhere<>'' then  //May 9/16
      SQLWhere:=SQLWhere + ' and '+AFiltroNombre
    else
      SQLWhere:= AfiltroNombre;
  end;
end;

procedure TdmPersonas.SetRol(const Value: TPRol);
begin
  FRol := Value;
//  TfrmPersonasEdit(gGridEditForm).Rol := Value;
//
////  TfrmPersonasRoles(gFormDeatil1).Rol := Value;
//  AsignarConsulta;
//  adodsMaster.Open;
////  adodsPersonaRoles.Open;
end;

end.
