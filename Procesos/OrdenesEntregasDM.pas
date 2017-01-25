unit OrdenesEntregasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmOrdenesEntregas = class(T_dmStandar)
    adodsMasterIdInfoEntrega: TAutoIncField;
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIDPersonaCliente: TIntegerField;
    adodsMasterIDPersonaDomicilio: TIntegerField;
    adodsMasterIDResponsableEntrega: TIntegerField;
    adodsMasterFechaProgramadaEnt: TDateTimeField;
    adodsMasterFechaRealEnt: TDateTimeField;
    adodsMasterCondicionEntrega: TStringField;
    adodsMasterObservaciones: TStringField;
    adodsMasterEstatusEntrega: TStringField;
    adodsMasterIdTelefono: TIntegerField;
    adodsMasterIdDocumentoGuia: TIntegerField;
    adodsMasterContenido: TStringField;
    adodsMasterConducto: TStringField;
    adodsMasterServicio: TStringField;
    adodsMasterPagoFlete: TBooleanField;
    adodsMasterValor: TFloatField;
    adodsMasterAsegurado: TBooleanField;
    adodsMasterCantidadCajas: TIntegerField;
    adodsMasterIdPersonaEmpaca: TIntegerField;
    adodsMasterFechaIniEmpaque: TDateTimeField;
    adodsMasterFechaFinEmpaque: TDateTimeField;
    adodsMasterIdEstatusOrdenEntrega: TIntegerField;
    DSInfoEnviodetalle: TDataSource;
    AdoDtStInfoEntregaDetalle: TADODataSet;
    AdoDtStInfoEntregaDetalleIdInformacionentregaDetalle: TAutoIncField;
    AdoDtStInfoEntregaDetalleIdInfoEntrega: TIntegerField;
    AdoDtStInfoEntregaDetalleIdOrdenSalida: TIntegerField;
    ADODtStOrdensalida: TADODataSet;
    ADODtStOrdensalidaidOrdenSalida: TAutoIncField;
    ADODtStOrdensalidaIdDocumentoSalida: TIntegerField;
    ADODtStOrdensalidaIdOrdenEstatus: TIntegerField;
    ADODtStOrdensalidaFechaRegistro: TDateTimeField;
    ADODtStOrdensalidaTotal: TFMTBCDField;
    ADODtStOrdensalidaAcumula: TBooleanField;
    ADODtStOrdensalidaSubtotal: TFMTBCDField;
    ADODtStOrdensalidaIVA: TFMTBCDField;
    ADODtStOrdensalidaIDPersonaDomicilio: TIntegerField;
    ADODtStDatosDocumentoSalida: TADODataSet;
    ADODtStDatosDocumentoSalidaIdPersona: TIntegerField;
    ADODtStDatosDocumentoSalidaIDDocumentoSalida: TAutoIncField;
    ADODtStDatosDocumentoSalidaRazonSocial: TStringField;
    ADODtStDatosDocumentoSalidaIdPaqueteria: TIntegerField;
    ADODtStDatosDocumentoSalidaServicio: TStringField;
    ADODtStDatosDocumentoSalidaIdDomicilioCliente: TIntegerField;
    ADODtStDatosDocumentoSalidaIDDomicilio: TIntegerField;
    DSDatosDocSalida: TDataSource;
    ADODtStTelefonos: TADODataSet;
    ADODtStTelefonosTelefono: TStringField;
    ADODtStTelefonosIdTelefono: TAutoIncField;
    ADODtStTelefonosIdPersona: TIntegerField;
    ADODtStTelefonosIdTelefonoTipo: TIntegerField;
    ADODtStTelefonosIdDomicilio: TIntegerField;
    ADODtStTelefonosLada: TStringField;
    ADODtStTelefonosPredeterminado: TBooleanField;
    ADODtStTelefonosTeleconLada: TStringField;
    DSMaster: TDataSource;
    DSOrdenSalida: TDataSource;
    ADODtStOrdenSalidaItem: TADODataSet;
    ADODtStOrdenSalidaItemIdOrdenSalidaItem: TAutoIncField;
    ADODtStOrdenSalidaItemIdOrdenSalida: TIntegerField;
    ADODtStOrdenSalidaItemIdDocumentoSalidaDetalle: TIntegerField;
    ADODtStOrdenSalidaItemIdProducto: TIntegerField;
    ADODtStOrdenSalidaItemCantidadDespachada: TFloatField;
    ADODtStOrdenSalidaItemCantidadSolicitada: TFloatField;
    ADODtStOrdenSalidaItemPrecio: TFMTBCDField;
    ADODtStOrdenSalidaItemImporte: TFMTBCDField;
    ADODtStOrdenSalidaItemObservaciones: TStringField;
    ADODtStOrdenSalidaItemProducto: TStringField;
    ADODtStOrdenSalidaItemClaveProducto: TStringField;
    ADODtStOrdenSalidaItemIdUnidadMedida: TIntegerField;
    adodsDocumento: TADODataSet;
    adodsDocumentoIdDocumento: TAutoIncField;
    adodsDocumentoNombreArchivo: TStringField;
    adodsMasterDocGuia: TStringField;
    ADODtStPaqueterias: TADODataSet;
    ADODtStPaqueteriasIdPaqueteria: TAutoIncField;
    ADODtStPaqueteriasIdentificador: TStringField;
    ADODtStPaqueteriasDescripcion: TStringField;
    adodsMasterPaqueteria: TStringField;
    adodsProductos: TADODataSet;
    adodsMasterTelefonocompleto: TStringField;
    ADODtStDatosDocumentoSalidaIdentificadorCte: TIntegerField;
    ADODtStOrdensalidaIDInfoentrega: TIntegerField;
    adodsMasterCliente: TStringField;
    ADODtStDireccionesEnvio: TADODataSet;
    ADODtStDireccionesEnvioIdPersonaDomicilio: TAutoIncField;
    ADODtStDireccionesEnvioIdPersona: TIntegerField;
    ADODtStDireccionesEnvioIdDomicilio: TIntegerField;
    ADODtStDireccionesEnvioIdDomicilioTipo: TIntegerField;
    ADODtStDireccionesEnvioIdentificador: TIntegerField;
    ADODtStDireccionesEnvioPredeterminado: TBooleanField;
    ADODtStDireccionesEnvioCalle: TStringField;
    ADODtStDireccionesEnvioNoExterior: TStringField;
    ADODtStDireccionesEnvioNoInterior: TStringField;
    ADODtStDireccionesEnvioColonia: TStringField;
    ADODtStDireccionesEnvioCodigoPostal: TStringField;
    ADODtStDireccionesEnvioMunicipio: TStringField;
    ADODtStDireccionesEnvioPoblacion: TStringField;
    ADODtStDireccionesEnvioEstado: TStringField;
    ADODtStDireccionesEnvioPais: TStringField;
    ADODtStDireccionesEnvioDirEnviocompleta: TStringField;
    ADODtStDireccionActual: TADODataSet;
    StringField10: TStringField;
    ADODtStDireccionActualIdPersonaDomicilio: TAutoIncField;
    ADODtStDireccionActualIdPersona: TIntegerField;
    ADODtStDireccionActualIdDomicilio: TIntegerField;
    ADODtStDireccionActualIdDomicilioTipo: TIntegerField;
    ADODtStDireccionActualIdentificador: TIntegerField;
    ADODtStDireccionActualPredeterminado: TBooleanField;
    ADODtStDireccionActualCalle: TStringField;
    ADODtStDireccionActualNoExterior: TStringField;
    ADODtStDireccionActualNoInterior: TStringField;
    ADODtStDireccionActualColonia: TStringField;
    ADODtStDireccionActualCodigoPostal: TStringField;
    ADODtStDireccionActualMunicipio: TStringField;
    ADODtStDireccionActualPoblacion: TStringField;
    ADODtStDireccionActualEstado: TStringField;
    ADODtStDireccionActualPais: TStringField;
    adodsMasterDireccionEnvio: TStringField;
    ActCargarGuia: TAction;
    ADODtStPersonaEmpaca: TADODataSet;
    ADODtStPersonaEmpacaIdPersona: TAutoIncField;
    ADODtStPersonaEmpacaIdRol: TIntegerField;
    ADODtStPersonaEmpacaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaEmpacaRazonSocial: TStringField;
    ADODtStPersonaEmpacaPermiso: TStringField;
    ADODtStPersonaEmpacaPassword: TStringField;
    adodsMasterPersonaEmpaca: TStringField;
    adodsMasterClaveUEmpaca: TStringField;
    ADOQryAuxiliar: TADOQuery;
    ADOQryAux2: TADOQuery;
    AdoDtstPersonaEntrega: TADODataSet;
    AdoDtstPersonaEntregaIdPersona: TAutoIncField;
    AdoDtstPersonaEntregaIdRol: TIntegerField;
    AdoDtstPersonaEntregaIdPersonaEstatus: TIntegerField;
    AdoDtstPersonaEntregaRazonSocial: TStringField;
    AdoDtstPersonaEntregaPassword: TStringField;
    AdoDtstPersonaEntregaPermiso: TStringField;
    adodsMasterPersonaEnvia: TStringField;
    ADODtStEstatusOrden: TADODataSet;
    ADODtStEstatusOrdenIdOrdenEstatus: TIntegerField;
    ADODtStEstatusOrdenIdentificador: TStringField;
    ADODtStEstatusOrdenDescripcion: TStringField;
    adodsMasterEstatusOrden: TStringField;
    adodsMasterEtiquetaImpresa: TBooleanField;
    adodsMasterOrdenEmbImpresa: TBooleanField;
    procedure ADODtStTelefonosCalcFields(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ADODtStDireccionesEnvioCalcFields(DataSet: TDataSet);
    procedure adodsMasterBeforeOpen(DataSet: TDataSet);
    procedure ActCargarGuiaExecute(Sender: TObject);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmOrdenesEntregas: TdmOrdenesEntregas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses OrdenesEntregasEdit, DocumentosDM;

{$R *.dfm}

procedure TdmOrdenesEntregas.ActCargarGuiaExecute(Sender: TObject);
var        //Ajustado y colocado Jun 9/16
  dmDocumentos: TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(self);
  dmDocumentos.FileAllowed := faall;
  Id := ADOdsMasterIdDocumentoGuia.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumento.Requery();
  end
  else
  begin
    Id := dmDocumentos.Add;
    if  Id <> 0 then
    begin
      adodsDocumento.Requery();
      if ADOdsMaster.State=dsBrowse then
        ADOdsMaster.Edit;
      ADOdsMasterIdDocumentoGuia.AsInteger := Id;
      ADOdsMaster.Post;//Para asegurar que se guarde Feb 15/16
    end;
  end;
  dmDocumentos.Free;
end;

procedure TdmOrdenesEntregas.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  AdoDtStInfoEntregaDetalle.Open;
  ADODtStOrdensalida.Open;
  ADODtStOrdensalidaItem.Open;
  ADODtStTelefonos.Open;
  ADODtStDatosDocumentoSalida.Open;
//  ADODtStDatosDocumentoSalida.Open;

end;

procedure TdmOrdenesEntregas.adodsMasterAfterPost(DataSet: TDataSet);
var Aux, aux2:String;
begin
  inherited;
  Aux:='';
  Aux2:='';
  //Actualizar el Estatus de Las Ordenes de salida
  //Sacar Id de Ordenes de Salida Asociadas y actualizar una a una
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.sql.Add('Select * from InformacionEntregasDetalles where IdInfoEntrega='+(DataSet.FieldByName('IdInfoEntrega').asString));
  ADOQryAuxiliar.Open;
  if not Dataset.FieldByName('IDPersonaEmpaca').IsNull then
  begin
    Aux:=', IDPersonaEmpaca=' +Dataset.FieldByName('IDPersonaEmpaca').AsString+', FechaIniEmpaca=:Fini ' ;  //Empaca
    if not Dataset.FieldByName('FechaFinEmpaque').IsNull then
       Aux:= Aux+', FechaFinEmpaca=:Ffin ';
  end;
  if not Dataset.FieldByName('IDResponsableEntrega').IsNull then
   Aux2:=', IDPersonaEntrega='+Dataset.FieldByName('IDREsponsableEntrega').AsString;  //Envio  //No existía Jun 15/16
  while not ADOQryAuxiliar.Eof do
  begin
    ADOQryAux2.Close;
    ADOQryAux2.Sql.Clear;                                                                                                //Para completar datos Jun 15/16
    ADOQryAux2.Sql.Add('UPDATE ORDENESSALIDAS SET IDOrdenEstatus= '+DataSet.FieldByName('IdEstatusOrdenEntrega').asString +aux+aux2
                      +' where IDOrdenSalida= '+ ADOQryAuxiliar.FieldByName('IdOrdenSalida').AsString);

    if pos('Fini', aux)>0 then
       ADOQryAux2.Parameters.ParamByName('Fini').value:= Dataset.FieldByName('FechaIniEmpaque').asDateTime;
     if pos('Ffin', aux)>0 then
       ADOQryAux2.Parameters.ParamByName('FFin').value:= Dataset.FieldByName('FechaFinEmpaque').asDateTime;


    ADOQryAux2.ExecSQL;
    ADOQryAuxiliar.Next;
  end;
end;

procedure TdmOrdenesEntregas.adodsMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
 // ADODtStDatosDocumentoSalida.Open; //Jun 9/16
  AdoDtStTelefonos.Open;         //Jun 9/16
  ADODtStDireccionActual.open;   //Jun 9/16
end;

procedure TdmOrdenesEntregas.ADODtStDireccionesEnvioCalcFields(
  DataSet: TDataSet);
begin
  inherited;  //Jun 8/16
  DataSet.FieldByName('DirEnvioCompleta').AsString:= Uppercase(dataset.FieldByName('Calle').AsString+ dataset.FieldByName('NoExterior').AsString+
                                                ' '+dataset.FieldByName('Colonia').AsString +' '+ dataset.FieldByName('CodigoPostal').AsString+
                                                '. '+dataset.FieldByName('Municipio').AsString +', '+dataset.FieldByName('Estado').AsString);
end;

procedure TdmOrdenesEntregas.ADODtStTelefonosCalcFields(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('TeleconLada').AsString:=DataSet.FieldByName('Lada').AsString +'-'+ Dataset.FieldByName('Telefono').AsString;//May 27/16
end;

procedure TdmOrdenesEntregas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmOrdenesEntregasEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmOrdenesEntregasEdit(gGridEditForm).DSDireccionenvios.DataSet:=ADODtStDireccionesEnvio; //Jun 9/16
  TfrmOrdenesEntregasEdit(gGridEditForm).DSDireccionenvios.DataSet.Open;//Jun 9/16
  TfrmOrdenesEntregasEdit(gGridEditForm).CargarDocGuia:=ActCargarGuia;  //Jun 9/16
end;

end.
