unit PagosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmPagos = class(T_dmStandar)
    ADODtStDireccAuxiliar: TADODataSet;
    ADODtStDireccionesCliente: TADODataSet;
    ADODtStDireccionesClienteIdPersonaDomicilio: TAutoIncField;
    ADODtStDireccionesClienteIdPersona: TIntegerField;
    ADODtStDireccionesClienteIdDomicilio: TIntegerField;
    ADODtStDireccionesClienteIdDomicilioTipo: TIntegerField;
    ADODtStDireccionesClienteIdentificador: TIntegerField;
    ADODtStDireccionesClientePredeterminado: TBooleanField;
    ADODtStDireccionesClienteCalle: TStringField;
    ADODtStDireccionesClienteNoExterior: TStringField;
    ADODtStDireccionesClienteNoInterior: TStringField;
    ADODtStDireccionesClienteColonia: TStringField;
    ADODtStDireccionesClienteCodigoPostal: TStringField;
    ADODtStDireccionesClienteMunicipio: TStringField;
    ADODtStDireccionesClientePoblacion: TStringField;
    ADODtStDireccionesClienteEstado: TStringField;
    ADODtStDireccionesClientePais: TStringField;
    ADODtStDireccionesClienteDirCompleta: TStringField;
    DSMaster: TDataSource;
    adodsMasterIdPagoRegistro: TLargeintField;
    adodsMasterIdBanco: TIntegerField;
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterIdPersonaCliente: TIntegerField;
    adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterReferencia: TStringField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterSaldo: TFMTBCDField;
    adodsMasterObservaciones: TStringField;
    ADODtstMetodoPago: TADODataSet;
    ADODtStClientes: TADODataSet;
    ADODtstMetodoPagoIdMetodoPago: TIntegerField;
    ADODtstMetodoPagoIdentificador: TStringField;
    ADODtstMetodoPagoDescripcion: TStringField;
    ADODtstMetodoPagoExigeCuenta: TIntegerField;
    ADODtStClientesIdPersona: TAutoIncField;
    ADODtStClientesIdPersonaTipo: TIntegerField;
    ADODtStClientesIdRol: TIntegerField;
    ADODtStClientesIdMetodoPagoCliente: TIntegerField;
    ADODtStClientesIdPersonaEstatus: TIntegerField;
    ADODtStClientesIdMoneda: TIntegerField;
    ADODtStClientesRFC: TStringField;
    ADODtStClientesRazonSocial: TStringField;
    ADODtStClientesNumCtaPagoCliente: TStringField;
    ADODtStClientesSaldoCliente: TFMTBCDField;
    ADODtStDireccAuxiliarIdPersonaDomicilio: TAutoIncField;
    ADODtStDireccAuxiliarIdPersona: TIntegerField;
    ADODtStDireccAuxiliarIdDomicilio: TIntegerField;
    ADODtStDireccAuxiliarIdDomicilioTipo: TIntegerField;
    ADODtStDireccAuxiliarIdentificador: TIntegerField;
    ADODtStDireccAuxiliarPredeterminado: TBooleanField;
    ADODtStDireccAuxiliarCalle: TStringField;
    ADODtStDireccAuxiliarNoExterior: TStringField;
    ADODtStDireccAuxiliarNoInterior: TStringField;
    ADODtStDireccAuxiliarColonia: TStringField;
    ADODtStDireccAuxiliarCodigoPostal: TStringField;
    ADODtStDireccAuxiliarMunicipio: TStringField;
    ADODtStDireccAuxiliarPoblacion: TStringField;
    ADODtStDireccAuxiliarEstado: TStringField;
    ADODtStDireccAuxiliarPais: TStringField;
    ADODtStBancos: TADODataSet;
    adodsMasterIdDomicilioCliente: TIntegerField;
    adodsMasterFolioPago: TIntegerField;
    adodsMasterSeriePago: TStringField;
    ADODtStConfiguraciones: TADODataSet;
    IntegerField6: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField7: TIntegerField;
    adodsMasterNombreCliente: TStringField;
    adodsMasterMetodoPago: TStringField;
    ADODtStBancosIdBanco: TAutoIncField;
    ADODtStBancosIdPais: TIntegerField;
    ADODtStBancosIdentificador: TStringField;
    ADODtStBancosNombre: TStringField;
    adodsMasterBanco: TStringField;
    adodsMasterDomicilioCliente: TStringField;
    procedure ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPagos: TdmPagos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmPagos.ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('DirCompleta').AsString:= Uppercase(dataset.FieldByName('Calle').AsString+ dataset.FieldByName('NoExterior').AsString+
                                                ' '+dataset.FieldByName('Colonia').AsString +' '+ dataset.FieldByName('CodigoPostal').AsString+
                                                '. '+dataset.FieldByName('Municipio').AsString +', '+dataset.FieldByName('Estado').AsString);

end;

end.
