unit EmailDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmEmail = class(T_dmStandar)
    adodsEmailTipo: TADODataSet;
    adodsMasterIdEmail: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdEmailTipo: TIntegerField;
    adodsMasterEmail: TStringField;
    adodsMasterPredeterminado: TBooleanField;
    adodsMasterEmailTipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EmailEdit;

{$R *.dfm}

procedure TdmEmail.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmEmailEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
