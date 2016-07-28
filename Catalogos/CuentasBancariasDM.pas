unit CuentasBancariasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCuentasBancarias = class(T_dmStandar)
    adodsCuentaBancariaTipo: TADODataSet;
    adodsMasterIdCuentaBancaria: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdBanco: TIntegerField;
    adodsMasterCuentaBancaria: TStringField;
    adodsMasterClabeInterbancaria: TStringField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterSaldoCuenta: TFMTBCDField;
    adodsMasterIdCuentaBancariaEstatus: TIntegerField;
    adodsBanco: TADODataSet;
    adodsMoneda: TADODataSet;
    adodsCuentaBancariaEstatus: TADODataSet;
    adodsMasterBanco: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterCuentaBancariaEstatus: TStringField;
    adodsMasterIdDocumentoCarga: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CuentasBancariasEdit, _ConectionDmod;

{$R *.dfm}

procedure TdmCuentasBancarias.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('IdCuentaBancariaEstatus').AsInteger:=1;   //Jul 28/17
   dataset.FieldByName('IdMoneda').AsInteger:=106; //_Moneda PesosMex
end;

procedure TdmCuentasBancarias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmCuentasBancariasEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
