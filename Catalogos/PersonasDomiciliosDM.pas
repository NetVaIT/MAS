unit PersonasDomiciliosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPersonasDomicilios = class(T_dmStandar)
    adodsMasterIdPersonaDomicilio: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdDomicilio: TIntegerField;
    adodsMasterIdDomicilioTipo: TIntegerField;
    adodsMasterPredeterminado: TBooleanField;
    adodsDomiciliosTipos: TADODataSet;
    adodsDomicilios: TADODataSet;
    adodsDomiciliosIdDomicilio: TAutoIncField;
    adodsDomiciliosDomicilio: TStringField;
    adodsMasterDomicilio: TStringField;
    adodsMasterDomicilioTipo: TStringField;
    actUpdate: TAction;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PersonasDomiciliosEdit, DomiciliosDM;

{$R *.dfm}

procedure TdmPersonasDomicilios.actUpdateExecute(Sender: TObject);
var
  dmDomicilios : TdmDomicilios;
  Id : Integer;
begin
  inherited;
  dmDomicilios := TdmDomicilios.Create(nil);
  Id := adodsMasterIdDomicilio.AsInteger;
  if Id  <> 0 then
  begin
    dmDomicilios.Edit(Id);
    adodsDomicilios.Requery();
  end
  else
  begin
    Id := dmDomicilios.Add;
    if  Id <> 0 then
    begin
      adodsDomicilios.Requery();
      adodsMasterIdDomicilio.AsInteger:= Id;
    end;
  end;
  dmDomicilios.Free;
end;

procedure TdmPersonasDomicilios.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterPredeterminado.Value:= False;
end;

procedure TdmPersonasDomicilios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmPersonasDomiciliosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmPersonasDomiciliosEdit(gGridEditForm).UpdateDomicilio := actUpdate;
end;

end.
