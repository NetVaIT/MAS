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
    adodsMasterIdPersonaDomicilio: TIntegerField;
    ADODtStHayXVincular: TADODataSet;
    ActVincularMails: TAction;
    ADOQryAuxiliar: TADOQuery;
    ADODtStHayXVincularValorIDPD: TAutoIncField;
    ADODtStHayXVincularIdEmail: TAutoIncField;
    ADODtStHayXVincularIdPersona: TIntegerField;
    ADODtStHayXVincularIdEmailTipo: TIntegerField;
    ADODtStHayXVincularIdPersonaDomicilio: TIntegerField;
    ADODtStHayXVincularEmail: TStringField;
    ADODtStHayXVincularPredeterminado: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure ActVincularMailsExecute(Sender: TObject);
  private
    FIdDomicilioPersona: Integer;
    procedure SetFIdDomicilioPersona(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property AIdDomicilioPersona:Integer read FIdDomicilioPersona write SetFIdDomicilioPersona;  //may 6/16

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses EmailEdit;

{$R *.dfm}

procedure TdmEmail.ActVincularMailsExecute(Sender: TObject);
begin       //May 13/16
  inherited;
  ADOQryAuxiliar.Close;
  ADODtStHayXVincular.first;
  while not ADODtStHayXVincular.eof do
  begin
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('Update Emails set IDPersonaDomicilio ='+ADODtStHayXVincular.FieldByName('ValorIDPD').asstring+' where IDEmail ='+ADODtStHayXVincular.FieldByName('IdEmail').asstring + ' and IdPersonaDomicilio is NULL ');
    ADOQryAuxiliar.ExecSql;
    ADODtStHayXVincular.Next;
  end;
  ADODtStHayXVincular.Close;
  ADODtStHayXVincular.Open;
end;

procedure TdmEmail.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('IdPersonaDomicilio').AsInteger:= FIdDomicilioPersona;
  dataset.FieldByName('Predeterminado').asBoolean:=False;
end;

procedure TdmEmail.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmEmailEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmEmailEdit(gGridEditForm).AVinculaMails:=  ActVincularMails;//May 13/16
end;

procedure TdmEmail.SetFIdDomicilioPersona(const Value: Integer); //May 7/16
begin
  FIdDomicilioPersona := Value;
  adoDSMaster.Close;
  adoDSMaster.Parameters.ParamByName('IdPersonaDomicilio').Value:= FIdDomicilioPersona;
  adoDSMaster.open;

end;

end.
