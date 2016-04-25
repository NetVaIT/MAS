unit UsuariosPerfilesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TDmPerfilesUsuario = class(T_dmStandar)
    adodsMasterIdUsuarioPerfil: TIntegerField;
    adodsMasterPermisoMenu: TStringField;
    adodsMasterPermisoOpcion: TStringField;
    adodsMasterPermisosFuncion: TStringField;
    adodsMasterDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmPerfilesUsuario: TDmPerfilesUsuario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UsuariosPerfilesEdit;

{$R *.dfm}

procedure TDmPerfilesUsuario.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmUsuariosPerfiles.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
