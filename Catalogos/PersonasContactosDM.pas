unit PersonasContactosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonaContactos = class(T_dmStandar)
    adodsMasterIdPersonaContacto: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterPrincipal: TBooleanField;
    adodsContacto: TADODataSet;
    adodsMasterContacto: TStringField;
    adodsMasterIdContacto: TIntegerField;
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
