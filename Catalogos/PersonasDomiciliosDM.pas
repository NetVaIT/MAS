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
    DSPersona: TDataSource;
    ADODtStPersona: TADODataSet;
    dsmaster: TDataSource;
    ADODtStEnvioTipo: TADODataSet;
    adodsMasterIdEnvioTipo: TIntegerField;
    adodsMasterEnvioTipo: TStringField;
    adodsMasterIdentificador: TIntegerField;
    ADODtStVerifica: TADODataSet;
    ADODtStMaximoNoCliente: TADODataSet;
    adodsMasterSaldo: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    function EsCliente(idPersona:Integer;var  identificadorNvo:Integer):Boolean;
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

procedure TdmPersonasDomicilios.adodsMasterBeforePost(DataSet: TDataSet);
var                           //Feb 15/16
  IDNvo:Integer;
begin
  inherited;
  //Poner el numero de cliente si es cliente
  if (dataset.state =dsInsert) and Escliente(Dataset.fieldbyname('IdPersona').AsInteger,IDNvo ) then
  begin
    DataSet.FieldByName('Identificador').AsString:=IntToSTR(IdNvo);

  End;

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

function TdmPersonasDomicilios.EsCliente(idPersona: Integer;var  identificadorNvo:Integer): Boolean;
begin
  Result:=False;
  IdentificadorNvo:=-10;
  ADODtStVerifica.Close;
  ADODtStVerifica.Parameters.ParamByName('IdPersona').Value:=idPersona;
  ADODtStVerifica.open;

  if not ADODtStVerifica.eof then
  begin
    ADODtStMaximoNoCliente.Close;
    ADODtStMaximoNoCliente.Open;
    IdentificadorNvo:= ADODtStMaximoNoCliente.FieldByName('Maximo').ASInteger +1;
    ADODtStMaximoNoCliente.Close;
    Result:=True;
  end;

end;

end.
