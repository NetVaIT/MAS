unit UsuariosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB,dialogs;

type
  TdmUsuarios = class(T_dmStandar)
    adodsPersona: TADODataSet;
    adodsMasterIdUsuario: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdUsuarioEstatus: TIntegerField;
    adodsMasterLogin: TStringField;
    adodsMasterPassword: TStringField;
    adodsUsuarioEstatus: TADODataSet;
    adodsMasterPersona: TStringField;
    adodsMasterUsuarioEstatus: TStringField;
    ADODtStPerfiles: TADODataSet;
    ADODtStPerfilesIdUsuarioPerfil: TAutoIncField;
    ADODtStPerfilesDescripcion: TStringField;
    ADODtStPerfilesPermisoMenu: TStringField;
    ADODtStPerfilesPermisoOpcion: TStringField;
    ADODtStPerfilesPermisosFuncion: TStringField;
    adodsMasterIdUsuarioPerfil: TIntegerField;
    adodsMasterPerfilUsuario: TStringField;
    ADOQryAuxiliar: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
  private
    function existeLogin: Boolean;    //Jun 2/16
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UsuariosForm;

{$R *.dfm}

procedure TdmUsuarios.adodsMasterBeforePost(DataSet: TDataSet);
begin    //Jun 2/16
  if (dataset.State=dsInsert) and ExisteLogin then
  begin
    ShowMessage('Login Existente no puede ser creado');
    abort;
  end
  else
   inherited;

end;

procedure TdmUsuarios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmUsuarios.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

function  TdmUsuarios.existeLogin:Boolean;     //Jun 2/16
var
  NuevoLogin:String;
begin
  NuevoLogin:=adodsMasterLogin.AsString;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from Usuarios where Login='''+NuevoLogin+'''');

  ADOQryAuxiliar.Open;

  Result:=not ADOQryAuxiliar.eof;   //Existe


end;

end.
