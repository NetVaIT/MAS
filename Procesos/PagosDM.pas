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
    adodsMasterNombreCliente: TStringField;
    adodsMasterMetodoPago: TStringField;
    ADODtStBancosIdBanco: TAutoIncField;
    ADODtStBancosIdPais: TIntegerField;
    ADODtStBancosIdentificador: TStringField;
    ADODtStBancosNombre: TStringField;
    adodsMasterBanco: TStringField;
    adodsMasterDomicilioCliente: TStringField;
    adodsMasterIdentificador: TStringField;
    ADODtStConfiguracionesUltimoFolioPago: TIntegerField;
    ADODtStConfiguracionesUltimaSeriePago: TStringField;
    ADODtStDireccAuxiliarDirCompleta: TStringField;
    ADODtStAplicacionesPagos: TADODataSet;
    ADODtStConFactPendientes: TADODataSet;
    ADODtStAplicacionesPagosIdPagoAplicacion: TLargeintField;
    ADODtStAplicacionesPagosIdPagoRegistro: TLargeintField;
    ADODtStAplicacionesPagosIdCFDI: TLargeintField;
    ADODtStAplicacionesPagosIdPersonaCliente: TIntegerField;
    ADODtStAplicacionesPagosFecha: TDateTimeField;
    ADODtStAplicacionesPagosImporte: TFloatField;
    ADODtStConFactPendientesIdCFDI: TLargeintField;
    ADODtStConFactPendientesIdCFDITipoDocumento: TIntegerField;
    ADODtStConFactPendientesIdPersonaReceptor: TIntegerField;
    ADODtStConFactPendientesIdOrdenSalida: TIntegerField;
    ADODtStConFactPendientesIdCFDIEstatus: TIntegerField;
    ADODtStConFactPendientesIdClienteDomicilio: TIntegerField;
    ADODtStConFactPendientesTipoCambio: TStringField;
    ADODtStConFactPendientesSerie: TStringField;
    ADODtStConFactPendientesFolio: TLargeintField;
    ADODtStConFactPendientesFecha: TDateTimeField;
    ADODtStConFactPendientesTotal: TFloatField;
    ADODtStConFactPendientesSaldoDocumento: TFloatField;
    ADODtStAplicacionesPagosserieFactura: TStringField;
    ADODtStAplicacionesPagosFolioFactura: TIntegerField;
    ADOQryAuxiliar: TADOQuery;
    procedure ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ADODtStAplicacionesPagosNewRecord(DataSet: TDataSet);
    procedure ADODtStAplicacionesPagosAfterPost(DataSet: TDataSet);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
    procedure adodsMasterBeforeInsert(DataSet: TDataSet);
  private
    function ActualizaSaldoCliente(IDCFDI, IDPagoRegistro: Integer;
      Importe: Double;operacion:String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPagos: TdmPagos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PagosEdit;

{$R *.dfm}

procedure TdmPagos.adodsMasterAfterPost(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin
  inherited;
  //Verificar si aca

  SerieAct:= adoDSMaster.FieldByName('SeriePago').AsString;
  FolioAct:= adoDSMaster.FieldByName('FolioPago').AsInteger;
  ADODtStConfiguraciones.Edit;
  ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString:=SerieAct;
  ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger :=FolioAct;
  ADODtStConfiguraciones.Post;


end;

procedure TdmPagos.adodsMasterBeforeInsert(DataSet: TDataSet);
const
   TxtSQL='select IdPagoRegistro, IdBanco, IdMetodoPago, IdPersonaCliente, '+
   'IdCuentaBancariaEstadoCuenta, Fecha, Referencia, Importe, Saldo, Observaciones,'+
   'IdDomicilioCliente, FolioPago, SeriePago from PagosRegistros ';
var Txt:String;
begin
  Txt:=   Tadodataset(adodsMaster).CommandText;
  if pos('inner ',Txt)>0 then
  begin
    Tadodataset(adodsMaster).Close;
    Tadodataset(adodsMaster).CommandText:=TxtSQL;
    Tadodataset(adodsMaster).open;
  end;
  inherited;
end;

procedure TdmPagos.adodsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if dataset.State=dsInsert then
  begin
    adodsMaster.FieldByName('Saldo').AsFloat:=adodsMaster.FieldByName('Importe').AsFloat;;
  end;
end;

procedure TdmPagos.adodsMasterNewRecord(DataSet: TDataSet);
var SErieAct:String;
    FolioAct:Integer;
begin  //Pagos
  inherited;
  DataSet.FieldByName('Fecha').AsDateTime:=Now;
  SerieAct:= ADODtStConfiguraciones.FieldByName('UltimaSeriePago').AsString;
  FolioAct:= ADODtStConfiguraciones.FieldByName('UltimoFolioPago').AsInteger;
  DataSet.FieldByName('SeriePago').AsString:=SerieAct;
  DataSet.FieldByName('FolioPago').asInteger:=FolioAct+1;
 // DataSet.FieldByName('Fecha').AsDateTime:=Now;

end;

procedure TdmPagos.ADODtStAplicacionesPagosAfterPost(DataSet: TDataSet);

begin
  inherited;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET SALDODocumento=SALDODocumento - '+DataSet.FieldByName('Importe').AsString
                        +' where IDCFDI='+DAtaSEt.FieldByName('IDCFDI').ASString);
  ADOQryAuxiliar.ExecSQL;

  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE PagosRegistros SET SALDO=SALDO - '+DataSet.FieldByName('Importe').AsString
                        +' where IDPagoRegistro='+DAtaSEt.FieldByName('IDPagoRegistro').ASString);
  ADOQryAuxiliar.ExecSQL;
   //
  ActualizaSaldoCliente(DAtaSEt.FieldByName('IDCFDI').ASInteger,DAtaSEt.FieldByName('IDPagoRegistro').asInteger,DataSet.FieldByName('Importe').AsFloat,'- ' );//habilitado mar 7/16

end;

procedure TdmPagos.ADODtStAplicacionesPagosNewRecord(DataSet: TDataSet);
begin
  inherited;
  ADODtStAplicacionesPagos.FieldByName('Fecha').asDAteTime:=now;
  ADODtStAplicacionesPagos.FieldByName('IDPagoRegistro').asInteger:=adodsMaster.Fieldbyname('IDPagoRegistro').AsInteger;
  ADODtStAplicacionesPagos.FieldByName('Importe').asFLoat:=adodsMaster.FieldByName('Saldo').AsFloat; //Este se debe actualizar


end;

procedure TdmPagos.ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('DirCompleta').AsString:= Uppercase(dataset.FieldByName('Calle').AsString+ dataset.FieldByName('NoExterior').AsString+
                                                ' '+dataset.FieldByName('Colonia').AsString +' '+ dataset.FieldByName('CodigoPostal').AsString+
                                                '. '+dataset.FieldByName('Municipio').AsString +', '+dataset.FieldByName('Estado').AsString);

end;

procedure TdmPagos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TFrmPagosEdt.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  adodsMaster.open;
  ADODtStConfiguraciones.open;
end;




function TdmPagos.ActualizaSaldoCliente(IDCFDI,IDPagoRegistro: Integer;Importe :Double;operacion:String): Boolean;
var IdDomiciliocliente, IdCliente  :Integer;
begin
  //Buscar con el CFDI Buscar el IdCliente y DomicilioCliente para actualizar luego
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.Sql.add('Select IDCFDI, IdPersonaReceptor,IDClienteDomicilio from CFDI where IDCFDI='+intToStr(IDCFDI));
  ADOQryAuxiliar.Open;
  if not ADOQryAuxiliar.eof then
  begin
    IdDomiciliocliente:= ADOQryAuxiliar.FieldByName('IdClienteDomicilio').AsInteger;
    IdCliente:= ADOQryAuxiliar.FieldByName('IdPersonaReceptor').AsInteger;


    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.Sql.Clear;
    ADOQryAuxiliar.Sql.add('Update PersonasDomicilios set Saldo =Saldo '+operacion+floatToStr(Importe)+' where IDPersonaDomicilio='+intToStr(IdDomiciliocliente));
    ADOQryAuxiliar.ExecSQL;

    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.Sql.Clear;
    ADOQryAuxiliar.Sql.add('Update Personas set SaldoCliente =SaldoCliente '+operacion+floatToStr(Importe)+' where IDPersona='+intToStr(IdCliente));
    ADOQryAuxiliar.ExecSQL;

    end;
end;
end.
