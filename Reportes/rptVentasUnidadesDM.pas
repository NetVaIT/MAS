unit rptVentasUnidadesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmrptVentasUnidades = class(T_dmStandar)
    adodsMasterIdentificador1: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterExistencia: TFloatField;
    adodsMasterCantidadA: TFloatField;
    adodsMasterCantidadM: TFloatField;
    adodsMasterCantidadP: TFloatField;
    adodsMasterCantidadF: TFloatField;
    adodsPeriodo: TADODataSet;
    adodsPeriodoIdPeriodo: TAutoIncField;
    adodsPeriodoDescripcion: TStringField;
    adodsPeriodoMes: TIntegerField;
    adodsPeriodoAnio: TIntegerField;
    adodsMasterBacKorder: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure SetFilter; override;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptVentasUnidadesForm;

{$R *.dfm}

procedure TdmrptVentasUnidades.DataModuleCreate(Sender: TObject);
begin
  inherited;

//  FIdPeriodoActual := dmConfiguracion.IdPeridoActual;
  gGridForm:= TfrmrptVentasUnidades.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
//  // Filtrado
//  SQLSelect:= 'SELECT IdCuentaXPagarPago, Estatus, Periodo, Pagador, BancoPagador, CuentaBancariaPagador, ConceptoCXP, ConceptoPago, ' +
//  'MetodoPago, BanorteID, Cobrador, BancoCobrador, CuentaBancariaCobrador, CLABECobrador, ' +
//  'FechaProgramada, MontoProgramado, FechaAutorizacion, MontoAutorizado, FechaPago, MontoPagado ' +
//  'FROM vCuentasXPagarPagos ';
  gGridForm.actSearch:= actSearch;
  adodsPeriodo.Open;
  TfrmrptVentasUnidades(gGridForm).DataSetPeriodo:= adodsPeriodo;
  TfrmrptVentasUnidades(gGridForm).IdPeriodo:= 1;
end;

procedure TdmrptVentasUnidades.SetFilter;
var
//  IdPeriodo: Integer;
  Mes: Integer;
  Anio: Integer;
begin
  inherited;
//  IdPeriodo:= TfrmrptVentasUnidades(gGridForm).IdPeriodo;
  Mes:= adodsPeriodoMes.Value;
  Anio:= adodsPeriodoAnio.Value;
  adodsMaster.Parameters[0].Value:= Mes;
  adodsMaster.Parameters[1].Value:= Mes;
  adodsMaster.Parameters[2].Value:= Mes;
  adodsMaster.Parameters[3].Value:= Anio;
  adodsMaster.Parameters[4].Value:= Mes;
  adodsMaster.Parameters[5].Value:= Anio;
//  ParamByName('mes').Value:= Mes;
//  adodsMaster.Parameters.ParamByName('anio').Value:= Anio;
//  SQLWhere:= 'WHERE IdPeriodo = %d';
//  SQLWhere:= Format(SQLWhere, [IdPeriodo]);
end;

end.
