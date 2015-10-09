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
    adodsMasterIdCuentaBancariaTipo: TIntegerField;
    adodsMasterIdBanco: TIntegerField;
    adodsMasterCuentaBancaria: TStringField;
    adodsMasterClabeInterbancaria: TStringField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterSaldoCuenta: TFMTBCDField;
    adodsMasterIdCuentaBancariaEstatus: TIntegerField;
    adodsBanco: TADODataSet;
    adodsMoneda: TADODataSet;
    adodsCuentaBancariaEstatus: TADODataSet;
    adodsMasterCuentaBancariaTipo: TStringField;
    adodsMasterBanco: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterCuentaBancariaEstatus: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
