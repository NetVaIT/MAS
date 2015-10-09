unit TelefonosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmTelefonos = class(T_dmStandar)
    adodsTelefonosTipos: TADODataSet;
    adodsMasterIdTelefono: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdTelefonoTipo: TIntegerField;
    adodsMasterLada: TStringField;
    adodsMasterTelefono: TStringField;
    adodsMasterPredeterminado: TBooleanField;
    adodsMasterTelefonoTipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses TelefonosEdit;

{$R *.dfm}

procedure TdmTelefonos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmTelefonosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
