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
    adodsMasterIdDomicilio: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
  private
    FIdDomicilio: Integer;
    FIdDomicilioPersona: Integer;
    procedure SetFIdDomicilio(const Value: Integer);
    procedure SetFIdDomicilioPersona(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property AIdDomicilio:Integer read FIdDomicilio write SetFIdDomicilio;  //may 6/16
    property AIdDomicilioPersona:Integer read FIdDomicilioPersona write SetFIdDomicilioPersona;  //may 6/16
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses TelefonosEdit;

{$R *.dfm}

procedure TdmTelefonos.adodsMasterNewRecord(DataSet: TDataSet);
begin //May 7/16
  inherited;
  dataset.FieldByName('IdDomicilio').AsInteger:= FIdDomicilio;
  dataset.FieldByName('Predeterminado').asBoolean:=False;

end;

procedure TdmTelefonos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmTelefonosEdit.Create(Self);

  gGridEditForm.DataSet := adodsMaster;
end;

procedure TdmTelefonos.SetFIdDomicilio(const Value: Integer);//May 7/16
begin
  FIdDomicilio := Value;
  adoDSMaster.Close;
  adoDSMaster.Parameters.ParamByName('IdDomicilio').Value:= FIdDomicilio;
  adoDSMaster.open;
end;

procedure TdmTelefonos.SetFIdDomicilioPersona(const Value: Integer);
begin   //Aun no se usa May 7/16
  FIdDomicilioPersona := Value;
end;

end.
