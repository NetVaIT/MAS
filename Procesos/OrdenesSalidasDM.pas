unit OrdenesSalidasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB,Dialogs,System.IOUtils,Forms, windows;

type
  TDMOrdenesSalidas = class(T_dmStandar)
    ADODtStOrdenSalidaItem: TADODataSet;
    ADODtStOrdenSalidaItemIdOrdenSalidaItem: TAutoIncField;
    ADODtStOrdenSalidaItemIdOrdenSalida: TIntegerField;
    ADODtStOrdenSalidaItemIdDocumentoSalidaDetalle: TIntegerField;
    ADODtStOrdenSalidaItemIdProducto: TIntegerField;
    ADODtStOrdenSalidaItemCantidadDespachada: TFloatField;
    ADODtStOrdenSalidaItemPrecio: TFMTBCDField;
    adodsMasteridOrdenSalida: TAutoIncField;
    adodsMasterIdDocumentoSalida: TIntegerField;
    adodsMasterIdOrdenEstatus: TIntegerField;
    adodsMasterIdPersonaRecolecta: TIntegerField;
    adodsMasterIdPersonaRevisa: TIntegerField;
    adodsMasterIdPersonaEmpaca: TIntegerField;
    adodsMasterFechaRegistro: TDateTimeField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterFechaIniRecolecta: TDateTimeField;
    adodsMasterFechaFinRecolecta: TDateTimeField;
    adodsMasterFechaIniRevisa: TDateTimeField;
    adodsMasterFechaFinRevisa: TDateTimeField;
    adodsMasterFechaIniEmpaca: TDateTimeField;
    adodsMasterFechaFinEmpaca: TDateTimeField;
    ADODtStOrdenSalEstatus: TADODataSet;
    ADODtStOrdenSalEstatusIdOrdenEstatus: TIntegerField;
    ADODtStOrdenSalEstatusIdentificador: TStringField;
    ADODtStOrdenSalEstatusDescripcion: TStringField;
    ADODtStPersonaRecolecta: TADODataSet;
    ADODtStPersonaRevisa: TADODataSet;
    ADODtStPersonaEmpaca: TADODataSet;
    ADODtStPersonaRecolectaIdPersona: TAutoIncField;
    ADODtStPersonaRecolectaIdRol: TIntegerField;
    ADODtStPersonaRecolectaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaRecolectaRazonSocial: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterPersonaRecolecta: TStringField;
    adodsMasterPersonaRevisa: TStringField;
    adodsMasterPersonaEmpaca: TStringField;
    ADODtStOrdenSalidaItemCantidadSolicitada: TFloatField;
    ADODtStOrdenSalidaItemObservaciones: TStringField;
    ADODtStOrdenSalidaItemImporte: TFMTBCDField;
    adodsMasterSubtotal: TFMTBCDField;
    adodsMasterIVA: TFMTBCDField;
    adodsProductos: TADODataSet;
    ADODtStOrdenSalidaItemProducto: TStringField;
    dsMaster: TDataSource;
    ADODtStPersonaRevisaIdPersona: TAutoIncField;
    ADODtStPersonaRevisaIdRol: TIntegerField;
    ADODtStPersonaRevisaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaRevisaRazonSocial: TStringField;
    ADODtStPersonaRevisaPermiso: TStringField;
    ADODtStPersonaEmpacaIdPersona: TAutoIncField;
    ADODtStPersonaEmpacaIdRol: TIntegerField;
    ADODtStPersonaEmpacaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaEmpacaRazonSocial: TStringField;
    ADODtStPersonaEmpacaPermiso: TStringField;
    ADODtStPersonaRecolectaPermiso: TStringField;
    adodsMasterClaveURecolecta: TStringField;
    adodsMasterClaveURevisa: TStringField;
    adodsMasterClaveUEmpaca: TStringField;
    ADOQryAuxiliar: TADOQuery;
    ADODtStDatosDocumentoSalida: TADODataSet;
    ADODtStDatosDocumentoSalidaIdPersona: TIntegerField;
    ADODtStDatosDocumentoSalidaIDDocumentoSalida: TAutoIncField;
    ADODtStDatosDocumentoSalidaRazonSocial: TStringField;
    DSDatosDocSalida: TDataSource;
    adodsMasterNombreCliente: TStringField;
    ADODtStOrdenSalidaItemClaveProducto: TStringField;
    ADODtStDireccionesCliente: TADODataSet;
    ADODtStPersonaAutoriza: TADODataSet;
    ADODtStPersonaAutorizaIdPersona: TAutoIncField;
    ADODtStPersonaAutorizaIdRol: TIntegerField;
    ADODtStPersonaAutorizaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaAutorizaRazonSocial: TStringField;
    ADODtStPersonaAutorizaPermiso: TStringField;
    adodsMasterIdPersonaAutoriza: TIntegerField;
    adodsMasterFechaAutoriza: TDateTimeField;
    adodsMasterPersonaAutoriza: TStringField;
    adodsMasterClaveUAutoriza: TStringField;
    ADODtStProductosKardex: TADODataSet;
    ADODtStProductosKardexIdProducto: TIntegerField;
    ADODtStProductosKardexIdOrdenEntradaItem: TIntegerField;
    ADODtStProductosKardexIdOrdenSalidaItem: TIntegerField;
    ADODtStProductosKardexIdMoneda: TIntegerField;
    ADODtStProductosKardexReferenciaEspacio: TIntegerField;
    ADODtStProductosKardexContenedor: TStringField;
    ADODtStProductosKardexMovimiento: TStringField;
    ADODtStProductosKardexCantidad: TFloatField;
    ADODtStProductosKardexImporte: TFMTBCDField;
    ADODtStInformacionEnvio: TADODataSet;
    ADODtStInformacionEnvioIdInfoEntrega: TAutoIncField;
    ADODtStInformacionEnvioIdCFDI: TLargeintField;
    ADODtStInformacionEnvioIDPersonaCliente: TIntegerField;
    ADODtStInformacionEnvioIDPersonaDomicilio: TIntegerField;
    ADODtStInformacionEnvioIDResponsableEntrega: TIntegerField;
    ADODtStInformacionEnvioCondicionEntrega: TStringField;
    ADODtStInformacionEnvioObservaciones: TStringField;
    ADODtStInformacionEnvioEstatusEntrega: TStringField;
    ADODtStInformacionEnvioIdTelefono: TIntegerField;
    ADODtStInformacionEnvioContenido: TStringField;
    ADODtStInformacionEnvioConducto: TStringField;
    ADODtStInformacionEnvioServicio: TStringField;
    ADODtStInformacionEnvioPagoFlete: TBooleanField;
    ADODtStInformacionEnvioValor: TFloatField;
    ADODtStInformacionEnvioAsegurado: TBooleanField;
    ADODtStFacturasCFDI: TADODataSet;
    ADODtStFacturasCFDIIdCFDI: TLargeintField;
    ADODtStFacturasCFDIIDOrdenSalida: TIntegerField;
    dsFacturaCFDI: TDataSource;
    ADODtStTelefonos: TADODataSet;
    ADODtStFacturasCFDIIdPersonaReceptor: TIntegerField;
    ADODtStTelefonosTelefono: TStringField;
    ADODtStTelefonosIdTelefono: TAutoIncField;
    ADODtStTelefonosIdPersona: TIntegerField;
    ADODtStTelefonosIdTelefonoTipo: TIntegerField;
    ADODtStTelefonosIdDomicilio: TIntegerField;
    ADODtStTelefonosLada: TStringField;
    ADODtStTelefonosPredeterminado: TBooleanField;
    ADODtStFacturasCFDIIdClienteDomicilio: TIntegerField;
    ADODtStTelefonosTeleconLada: TStringField;
    ADODtStInformacionEnvioTelefonoCompleto: TStringField;
    ADODtStSalidasUbicaciones: TADODataSet;
    ADODtStPersonaAutorizaPassword: TStringField;
    ADODtStPersonaEmpacaPassword: TStringField;
    ADODtStPersonaRevisaPassword: TStringField;
    ADODtStPersonaRecolectaPassword: TStringField;
    ADODtStSalidasUbicacionesIdSalidaUbicacion: TAutoIncField;
    ADODtStSalidasUbicacionesIdProductoKardexS: TIntegerField;
    ADODtStSalidasUbicacionesIdProductoXEspacio: TIntegerField;
    ADODtStSalidasUbicacionesCantidad: TFloatField;
    ADODtStSalidasUbicacionesIdSalidaUbicacionEstatus: TIntegerField;
    ADODtStSalidasUbicacionesIdOrdenSalidaItem: TIntegerField;
    DSOrdenSalidaItem: TDataSource;
    ADODtStProductosXEspacio: TADODataSet;
    ADODtStProductosXEspacioIdProductoXEspacio: TAutoIncField;
    ADODtStProductosXEspacioIdEspacio: TIntegerField;
    ADODtStProductosXEspacioIdProductoKardexE: TIntegerField;
    ADODtStProductosXEspacioIdProducto: TIntegerField;
    ADODtStProductosXEspacioCantidad: TFloatField;
    ADODtStProductosXEspacioIdCategoria: TIntegerField;
    ADODtStProductosXEspacioIdAlmacen: TIntegerField;
    ADODtStProductosXEspacioEspacio: TStringField;
    ADODtStSalidasUbicacionesIdOrdenSalida: TIntegerField;
    ADODtStSalidasUbicacionesIdProducto: TIntegerField;
    ADODtStSalidasUbicacionesproducto: TStringField;
    ADODtStSalidasUbicacionesDisponible: TFloatField;
    DSInsertaKardex: TDataSource;
    ADOQryInsertaProductoKardex: TADOQuery;
    ADODtStDatosDocumentoSalidaIdentificadorCte: TStringField;
    ADODtStIdentificadores: TADODataSet;
    adodsMasterIdentificadorCte: TStringField;
    DSSalidaUbicacion: TDataSource;
    ADODtStSalidasUbicacionesEspacioA: TStringField;
    ADODtStDocumentoDetalleItem: TADODataSet;
    ADODtStDocumentoDetalleItemIdAlmacen: TIntegerField;
    ADODtStDocumentoDetalleItemIDProducto: TIntegerField;
    ADODtStDocumentoDetalleItemIdDocumentoSalidaDetalle: TAutoIncField;
    ADODtStOrdenSalidaItemIDAlmacen: TIntegerField;
    ADODtStFacturasCFDIIDDomicilio: TIntegerField;
    ADODtStInformacionEnvioOcurre: TBooleanField;
    ADODtStInformacionEnvioDomicilioChk: TBooleanField;
    ADODtStInformacionEnvioCantidadCajas: TIntegerField;
    ADODtStInformacionEnvioIdDocumentoGuia: TIntegerField;
    ActCargarGuia: TAction;
    adodsDocumento: TADODataSet;
    ADODtStInformacionEnvioDocGuia: TStringField;
    adodsDocumentoIdDocumento: TAutoIncField;
    adodsDocumentoNombreArchivo: TStringField;
    ADODtStFacturasCFDIIdDocumentoXML: TIntegerField;
    ADODtStFacturasCFDIIdDocumentoPDF: TIntegerField;
    adodsUpdateIdDocumento: TAutoIncField;
    adodsUpdateIdDocumentoTipo: TIntegerField;
    adodsUpdateIdDocumentoClase: TIntegerField;
    adodsUpdateDescripcion: TStringField;
    adodsUpdateNombreArchivo: TStringField;
    adodsUpdateIdArchivo: TGuidField;
    adodsUpdateArchivo: TBlobField;
    ActEnvioCorreoConArchivos: TAction;
    ADODtStProductosKardexIdProductoKardex: TAutoIncField;
    ADODtStProductosKardexIdAlmacen: TIntegerField;
    ADODtStProductosKardexIdProductoKardexEstatus: TIntegerField;
    ADODtStProductosKardexFecha: TDateTimeField;
    ADODtStInformacionEnvioFechaProgramadaEnt: TDateTimeField;
    ADODtStInformacionEnvioFechaRealEnt: TDateTimeField;
    adodsMasterIdGeneraCFDITipoDoc: TIntegerField;
    adodsMasterAcumula: TBooleanField;
    ADODtStCambioEstadoInv: TADODataSet;
    ADODtStCambioEstadoInvIdOrdenSCambioEstatus: TIntegerField;
    ADODtStCambioEstadoInvIdOrdenSalida: TIntegerField;
    ADODtStCambioEstadoInvIdPersonaAutCambio: TIntegerField;
    ADODtStCambioEstadoInvIdOrdenSalidaEstatusNvo: TIntegerField;
    ADODtStCambioEstadoInvFechaCambio: TDateTimeField;
    ADODtStCambioEstadoInvObservaciones: TStringField;
    ADODtStUsuarioRegresa: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    ADODtStCambioEstadoInvPersonaCambio: TStringField;
    ADODtStCambioEstadoInvClaveUsr: TStringField;
    ActActualizaApartado: TAction;
    ActRevierteApartado: TAction;
    AdoDtStInfoEntregaDetalle: TADODataSet;
    adodsMasterIDPersonaDomicilio: TIntegerField;
    AdoDtStInfoEntregaDetalleIdInformacionentregaDetalle: TAutoIncField;
    AdoDtStInfoEntregaDetalleIdInfoEntrega: TIntegerField;
    AdoDtStInfoEntregaDetalleIdOrdenSalida: TIntegerField;
    adodsMasterIDPersona: TIntegerField;
    ADODtStDatosDocumentoSalidaIdPaqueteria: TIntegerField;
    ADODtStDatosDocumentoSalidaServicio: TStringField;
    adodsMasterIdPaqueteria: TIntegerField;
    adodsMasterServicio: TStringField;
    ADODtStPaqueterias: TADODataSet;
    ADODtStPaqueteriasIdPaqueteria: TAutoIncField;
    ADODtStPaqueteriasIdentificador: TStringField;
    ADODtStPaqueteriasDescripcion: TStringField;
    ADODtStInformacionEnvioPaqueteria: TStringField;
    ActCreaInformacionEnvio: TAction;
    ActCompartirEnvio: TAction;
    DSInfoEnviodetalle: TDataSource;
    ADODtstInsertaInfoEntrega: TADODataSet;
    ADODtstInsertaInfoEntregaIdInfoEntrega: TAutoIncField;
    ADODtstInsertaInfoEntregaIdCFDI: TLargeintField;
    ADODtstInsertaInfoEntregaIDPersonaCliente: TIntegerField;
    ADODtstInsertaInfoEntregaIDPersonaDomicilio: TIntegerField;
    ADODtstInsertaInfoEntregaIDResponsableEntrega: TIntegerField;
    ADODtstInsertaInfoEntregaFechaProgramadaEnt: TDateTimeField;
    ADODtstInsertaInfoEntregaFechaRealEnt: TDateTimeField;
    ADODtstInsertaInfoEntregaCondicionEntrega: TStringField;
    ADODtstInsertaInfoEntregaObservaciones: TStringField;
    ADODtstInsertaInfoEntregaEstatusEntrega: TStringField;
    ADODtstInsertaInfoEntregaIdTelefono: TIntegerField;
    ADODtstInsertaInfoEntregaIdDocumentoGuia: TIntegerField;
    ADODtstInsertaInfoEntregaContenido: TStringField;
    ADODtstInsertaInfoEntregaConducto: TStringField;
    ADODtstInsertaInfoEntregaServicio: TStringField;
    ADODtstInsertaInfoEntregaPagoFlete: TBooleanField;
    ADODtstInsertaInfoEntregaValor: TFloatField;
    ADODtstInsertaInfoEntregaAsegurado: TBooleanField;
    ADODtstInsertaInfoEntregaCantidadCajas: TIntegerField;
    ADODtStDatosDocumentoSalidaIdDomicilioCliente: TIntegerField;
    ADODtStDatosDocumentoSalidaIDDomicilio: TIntegerField;
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
    DSInformacionEnvio: TDataSource;
    adodsMasterIDPersonaEntrega: TIntegerField;
    AdoDtstPersonaEntrega: TADODataSet;
    AdoDtstPersonaEntregaIdPersona: TAutoIncField;
    AdoDtstPersonaEntregaIdRol: TIntegerField;
    AdoDtstPersonaEntregaIdPersonaEstatus: TIntegerField;
    AdoDtstPersonaEntregaRazonSocial: TStringField;
    AdoDtstPersonaEntregaPassword: TStringField;
    AdoDtstPersonaEntregaPermiso: TStringField;
    adodsMasterPersonaEntrega: TStringField;
    ADODtstInsertaInfoEntregaIdPersonaEmpaca: TIntegerField;
    ADODtstInsertaInfoEntregaFechaIniEmpaque: TDateTimeField;
    ADODtstInsertaInfoEntregaFechaFinEmpaque: TDateTimeField;
    ADODtstInsertaInfoEntregaIdEstatusOrdenEntrega: TIntegerField;
    ADODtStDatosDocumentoSalidaIdPersonaDomicilioEnvio: TIntegerField;
    ADODtStDatosDocumentoSalidaDireccionEnvio: TStringField;
    adodsMasterDirEnvio: TStringField;
    adodsMasterIdDireccionEnvio: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ADODtStOrdenSalidaItemCantidadDespachadaChange(Sender: TField);
    procedure ADODtStOrdenSalidaItemAfterPost(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemBeforePost(DataSet: TDataSet);
    procedure ADODtStTelefonosCalcFields(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesEspacioChange(Sender: TField);
    procedure ADODtStInformacionEnvioBeforeOpen(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesCantidadChange(Sender: TField);
    procedure ADODtStSalidasUbicacionesAfterPost(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesCantidadSetText(Sender: TField;
      const Text: string);
    procedure ADODtStSalidasUbicacionesBeforePost(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesAfterDelete(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure ActCargarGuiaExecute(Sender: TObject);
    procedure ActEnvioCorreoConArchivosExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure ADODtStCambioEstadoInvAfterPost(DataSet: TDataSet);
    procedure ActActualizaApartadoExecute(Sender: TObject);
    procedure ActRevierteApartadoExecute(Sender: TObject);
    procedure ADODtStOrdenSalidaItemBeforeDelete(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemAfterDelete(DataSet: TDataSet);
    procedure ActCreaInformacionEnvioExecute(Sender: TObject);
    procedure ActCompartirEnvioExecute(Sender: TObject);
    procedure ADODtStDireccionesEnvioCalcFields(DataSet: TDataSet);
  private
    CantAGuardar:Double;
    IdDocDet, IdDocSal: Integer; //Abr 13/16 Actu despues de borrar
    cantSol: Double;//Abr 13/16 Actu despues de borrar

    function EncuentraProdXEspacio(TextoEspacio: String; IDProd:Integer;
      var LaCantidad: Double): Integer;
    function VerificaYCreaResto(IdOrdenSalItem:Integer; CantActual:Double; idSalidaUbicacion:Integer):Boolean;  //Ajustado  //Feb 3/16
    function ValorMaximoPosible(valorAct: Double; idOrdenItem: Integer; idSalidaUbicacion:integer): Double;
    procedure ReadFile(FileName: TFileName);
    function GetFileName(IdDocumento: Integer): TFileName;
    function SacaCorreoEmisor(ADatosCorreo:TStringList):Boolean;
    function SacaCorreoReceptor(IdCliente:Integer;var CorreoCliente :String ):Boolean;
    function SacaPaqueteriaNvo(IdPersonaDocicilio: Integer): String;


    { Private declarations }

  public
    { Public declarations }
    Ajustar,CambioCantidad:Boolean;
    procedure LlenaDatosEnvioNvo;

  end;

var
  DMOrdenesSalidas: TDMOrdenesSalidas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses OrdenesSalidaForm, DocumentosDM, UDMEnvioMail, _Utils;

{$R *.dfm}

procedure TDMOrdenesSalidas.ActActualizaApartadoExecute(Sender: TObject);
var           //Abr 11/16
  cant:Double;
begin
  inherited;
  ADODtStOrdenSalidaItem.First;
  AdoQryAuxiliar.Close;
  while not ADODtStOrdenSalidaItem.eof do
  begin
  //Actualizar inventario de varios
    cant:=ADODtStOrdenSalidaItem.FieldByName('CantidadDespachada').AsFloat;
    AdoQryAuxiliar.sql.clear;
    AdoQryAuxiliar.Sql.ADD('Update Inventario SET PedidoXSurtir=PedidoXSurtir -'+floatToStr(Cant)+', Apartado=Apartado + '+floatToStr(Cant)
                           +'  where IDProducto='+ADODtStOrdenSalidaItem.FieldByName('IdProducto').AsString
                           +' and IdAlmacen= '+ADODtStOrdenSalidaItem.FieldByName('IdAlmacen').AsString) ;
    AdoQryAuxiliar.execSQL;
    ADODtStOrdenSalidaItem.next;
  end;
  ADODtStOrdenSalidaItem.First;
end;

procedure TDMOrdenesSalidas.ActCargarGuiaExecute(Sender: TObject);
var        //Feb 15/16
  dmDocumentos: TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faall;
  Id := ADODtStInformacionEnvioIdDocumentoGuia.AsInteger;
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
      if ADODtStInformacionEnvio.State=dsBrowse then
        ADODtStInformacionEnvio.Edit;
      ADODtStInformacionEnvioIdDocumentoGuia.AsInteger := Id;
      ADODtStInformacionEnvio.Post;//Para asegurar que se guarde Feb 15/16
    end;
  end;
  dmDocumentos.Free;
end;

procedure TDMOrdenesSalidas.ActCompartirEnvioExecute(Sender: TObject);
var IdInfoEntrega:Integer;
begin
  inherited;
  //Tomar losdatos de IDOrdenNueva, IdEntregaExistente, crear Relacion
  //Actualizar total y mostrar.. Para ajustes... Estatus de la nueva orden... Consolidado y quien tiene la orden original debe empacar todo.
  //Asegurarse que si esta en  medio del empaque se avise..
  IdInfoEntrega:=TFrmOrdenesSalida(gGridEditForm).AIdEntregaExistente;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Insert into InformacionEntregasDetalles (IDInfoentrega, IDordenSalida) Values('+intToStr(IdInfoEntrega)+','+adodsMaster.FieldByName('IdOrdenSalida').Asstring+ ')');
  if ADOQryAuxiliar.ExecSQL<>1 then
    ShowMessage('Error Compartiendo Etiqueta de envio NDS')
  else
  begin
    //Actualiza totales y se coloca Estatus nuevo a la Orden.. S
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('Update InformacionEntregas SET Valor=Valor+'+adodsMaster.FieldByName('Total').Asstring+ ' where IdInfoEntrega='+intToStr(IdInfoEntrega));
    if ADOQryAuxiliar.ExecSQL<>1 then
       ShowMessage('Error Actualizando Total NDS')
    else
    begin
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.SQL.Clear;
      ADOQryAuxiliar.SQL.Add('Update OrdenesSalidas SET IDOrdenEstatus=10 where IDOrdenSalida='+adodsMaster.FieldByName('IdOrdenSalida').Asstring);
      if ADOQryAuxiliar.ExecSQL<>1 then
         ShowMessage('Error Actualizando Orden NDS')
    end;
  end;

end;

procedure TDMOrdenesSalidas.ActCreaInformacionEnvioExecute(Sender: TObject);
begin    //May 23/16     //Se llama desde Ordenes de Salida ()
  inherited;
  LlenaDatosEnvioNvo;

  AdoDtStInfoEntregaDetalle.Refresh;  //Verificar que actualice
  ADODtStInformacionEnvio.Refresh;
  ADODtStTelefonos.Open;
end;

procedure TDMOrdenesSalidas.ActEnvioCorreoConArchivosExecute(Sender: TObject);
var
  DmEnvioMail:TDMEnvioMails;
  ArcXml,ArcPDF, ArcGuia: TFileName;
  IdDoc:Integer;
  ADatosEmisor:TStringList;
  CorreoRec:String;
  ArchivosLista:TStringList; //Feb 22/16
begin
  inherited;
  ADatosEmisor:=TStringList.Create;
  ArchivosLista:=TStringList.Create;  //Feb 22/16
  ShowProgress(10,100.1,'Preparando documentos ' + IntToStr(10) + '%');
  ADODtStFacturasCFDI.Open;
  if Application.MessageBox('¿Desea Enviar el CFDI y el PDF junto con la Guía?','Confirmación Archivos de Envio',MB_YESNO)=idYes then
  begin
  //Sacar CFDI y PDF si se require
    ShowProgress(20,100.1,'Obteniendo documento  XML ' + IntToStr(10) + '%');
    IdDoc:=ADODtStFacturasCFDIIdDocumentoXML.AsInteger;
    ArcXml:=GetFileName(IdDoc);
    ArchivosLista.Add(ArcXml);  //Feb 22/16
    ShowProgress(30,100.1,'Obteniendo documento  PDF ' + IntToStr(30) + '%');
    IdDoc:=ADODtStFacturasCFDIIdDocumentoPDF.AsInteger;
    ArcPDF:=GetFileName(IdDoc);
    ArchivosLista.Add(ArcPDF);   //Feb 22/16
  end;
  //Sacar Guia
  ShowProgress(40,100.1,'Obteniendo documento  de Guia ' + IntToStr(40) + '%');
  IdDoc:=ADODtStInformacionEnvioIdDocumentoGuia.AsInteger;
  ArcGuia:=GetFileName(IdDoc);
  ArchivosLista.Add(ArcGuia);  //Feb 22/16
  ShowProgress(50,100.1,'Obteniendo datos del Receptor para envío ' + IntToStr(50) + '%');
  if SacaCorreoEmisor(ADatosEmisor) and SacaCorreoReceptor(ADODtStFacturasCFDIIdPersonaReceptor.AsInteger,CorreoRec) then
  begin //Sacar datos Correo Emisor           //SAcar datos Correo Receptor
    DMEnvioMail:=TDMEnvioMails.Create(self);
    ShowProgress(60,100.1,'Enviando Correo con archivos adjuntos ' + IntToStr(60) + '%');
    if  DMEnvioMails.SendEmail(CorreoRec+';'+ADatosEmisor.Values['emailNoti'],'Envio Archivos de Orden','Envio de Archivos relacionados a la orden de Salida No.'+ adodsMasteridOrdenSalida.asstring,
             ArcXml,ArcPDF,ArcGuia, ArchivosLista,ADatosEmisor.Values['host'], ADatosEmisor.Values['usuario'], ADatosEmisor.Values['contrasenia'],
             'Tracto Partes MAS', StrToInt(ADatosEmisor.Values['puerto']),StrToInt(ADatosEmisor.Values['MetSSL']),
             StrToInt(ADatosEmisor.Values['ModSSL'])) then
     begin
       ShowProgress(100,100.1,'Proceso de Envio Terminado  ' + IntToStr(100) + '%');
       ShowMessage('Datos enviados al Cliente');
     end
     else
     begin
       ShowProgress(100,100.1,'Error en Envio de correo...' + IntToStr(100) + '%');
       ShowMessage('Error en envio del Correo. Verifique conexión a internet');
     end;
    DMEnvioMail.Free;
  end
  else
  begin
    ShowProgress(100,100.1,'Sin Datos suficicentes para enviar correo...' + IntToStr(100) + '%');
    ShowMessage('No se pudo enviar el correo. Falta Información para el envio. '+#13+'Asegurese de tener definida la información del servidor de salida y el correo del Cliente.');
  end;
  ShowProgress(100,100);
  ADatosEmisor.Free; //Feb 22/16
  ArchivosLista.Free; //Feb 22/16
end;




procedure TDMOrdenesSalidas.ActRevierteApartadoExecute(Sender: TObject);
var           //Abr 11/16
  cant:Double;
begin
  inherited;
  ADODtStOrdenSalidaItem.First;
  AdoQryAuxiliar.Close;
  while not ADODtStOrdenSalidaItem.eof do
  begin
  //Revierte los Apartados hacia Los pendientesXSurtir
    cant:=ADODtStOrdenSalidaItem.FieldByName('CantidadDespachada').AsFloat;
    AdoQryAuxiliar.sql.clear;
    AdoQryAuxiliar.Sql.ADD('Update Inventario SET PedidoXSurtir=PedidoXSurtir +'+floatToStr(Cant)+', Apartado=Apartado - '+floatToStr(Cant)
                           +'  where IDProducto='+ADODtStOrdenSalidaItem.FieldByName('IdProducto').AsString
                           +' and IdAlmacen= '+ADODtStOrdenSalidaItem.FieldByName('IdAlmacen').AsString) ;
    AdoQryAuxiliar.execSQL;
    ADODtStOrdenSalidaItem.next;
  end;
  ADODtStOrdenSalidaItem.First;

end;

procedure TDMOrdenesSalidas.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodtstIdentificadores.Open; //Feb 8/16
end;

procedure TDMOrdenesSalidas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('IDGeneraCFDITipoDoc').AsInteger:=1; //Generar Factura
  Dataset.FieldByName('Acumula').ASBoolean:=False; //No acumula
end;

procedure TDMOrdenesSalidas.ADODtStCambioEstadoInvAfterPost(DataSet: TDataSet);
begin
  inherited;              //Mar 18/16
  //Se debe eliminar de SalidasUbicacion el registro                  //Ya que si pasa a estado 2(recolectada) es donde se ponen las ubicaciones
  if dataset.FieldByName('IdOrdenSalidaEstatusNvo').AsInteger=1 then //Solo debe hacerse si el estatus nuevo es menor que 2 . Abr 12/16
  begin                 //El acabado de guardar
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('Delete From  SalidasUbicaciones Where idOrdenSalida='+ dataset.FieldByName('IdOrdenSalida').asstring);
    ADOQryAuxiliar.ExecSQL;
  end;
end;

procedure TDMOrdenesSalidas.ADODtStDireccionesEnvioCalcFields(
  DataSet: TDataSet);
begin          //Jun 10/16
  inherited;
  DataSet.FieldByName('DirEnvioCompleta').AsString:= Uppercase(dataset.FieldByName('Calle').AsString+ dataset.FieldByName('NoExterior').AsString+
                                                ' '+dataset.FieldByName('Colonia').AsString +' '+ dataset.FieldByName('CodigoPostal').AsString+
                                                '. '+dataset.FieldByName('Municipio').AsString +', '+dataset.FieldByName('Estado').AsString);
end;

procedure TDMOrdenesSalidas.ADODtStInformacionEnvioBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;

  ADODtStFacturasCFDI.Open;
  ADODtStTelefonos.Open;
  AdoDtStInfoEntregaDetalle.Open; //May23/16

  ADODtStDireccionesEnvio.Open; //Jun 10/16
end;

procedure TDMOrdenesSalidas.ADODtStOrdenSalidaItemAfterDelete(
  DataSet: TDataSet);
var Subtotal:Double;
    IDAlmacen, IDProducto:Integer;
begin
  inherited;

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From OrdenesSalidasItems where idOrdenSalida='+intToStr(idDocSal));
  ADOQryAuxiliar.open;

  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE OrdenesSalidas SET Subtotal='+FloattoSTR(subtotal)+' , IVA='+FloatToSTR(subtotal*0.16)+', Total='+FloatToSTR(subtotal*1.16)
                          +' where IDOrdenSalida ='+IntToStr(idDocSal));
  ADOQryAuxiliar.ExecSQL;


  adodsMaster.refresh; //OK
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * From DocumentosSalidasDetalles where IDDocumentoSalidaDetalle ='+IntToStr(idDocDet));
  ADOQryAuxiliar.open;

   IDAlmacen:=ADOQryAuxiliar.FieldByName('IDAlmacen').Asinteger ;
   IDProducto:=  ADOQryAuxiliar.FieldByName('IDProducto').Asinteger ;

   ADOQryAuxiliar.Close;
   ADOQryAuxiliar.SQL.Clear;                                                                             //Es la diferencia
   ADOQryAuxiliar.SQL.Add('UPDATE Inventario SET PedidoXSurtir= PedidoXSurtir-'+FloattoSTR(cantSol)
                          +' where IDAlmacen ='+IntToStr(IDAlmacen)+' and IDProducto ='+IntToStr(IDProducto));
   ADOQryAuxiliar.ExecSQL;

   ADOQryAuxiliar.Close;
   ADOQryAuxiliar.SQL.Clear;                                                                             //Es la diferencia
   ADOQryAuxiliar.SQL.Add('UPDATE DocumentosSalidasDetalles SET CantidadPendiente= CantidadPendiente+'+FloattoSTR(cantSol)
                          +' where IDDocumentoSalidaDetalle ='+IntToStr(idDocDet));
   ADOQryAuxiliar.ExecSQL;

end;

procedure TDMOrdenesSalidas.ADODtStOrdenSalidaItemAfterPost(DataSet: TDataSet);
var idDocSalida, IDDocItem:Integer;
//completo:Boolean;
   Subtotal:Double;
   Cant1, Cant2:Double; //Ene 11/16
begin
  inherited;
  //Verificar si aca actualizar el item respectivo del detalle del documento
  IDDocItem:=DataSet.FieldByName('IDDocumentoSalidaDetalle').AsInteger;
  idDocSalida:=DataSet.FieldByName('IDOrdenSalida').AsInteger;
//  completo:=DataSet.FieldByName('CantidadDespachada').AsFloat=DataSet.FieldByName('CantidadSolicitada').AsFloat;
   //Hay cambio, debe ser menor o igual
  Cant1:=  DataSet.FieldByName('CantidadSolicitada').ASFloat;  //Ene 11/16
  Cant2:=  DataSet.FieldByName('CantidadDespachada').AsFloat;  //Ene 11/16
  Cant2:=Cant1-Cant2;//2 no puede ser mayor a 1 , ya controlado
  //Siempre actualizar

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From OrdenesSalidasItems where idOrdenSalida='+intToStr(idDocSalida));
  ADOQryAuxiliar.open;

  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE OrdenesSalidas SET Subtotal='+FloattoSTR(subtotal)+' , IVA='+FloatToSTR(subtotal*0.16)+', Total='+FloatToSTR(subtotal*1.16)
                          +' where IDOrdenSalida ='+IntToStr(idDocSalida));
  ADOQryAuxiliar.ExecSQL;


  adodsMaster.refresh; //OK

  if ajustar then
  begin  //Actualizar DocumentoSalidaItem
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;                                                                             //Es la diferencia
    ADOQryAuxiliar.SQL.Add('UPDATE DocumentosSalidasDetalles SET CantidadPendiente= CantidadPendiente+'+FloattoSTR(Cant2)
                          +' where IDDocumentoSalidaDetalle ='+IntToStr(idDocItem));
    ADOQryAuxiliar.ExecSQL;
    ajustar:=False;
  end;

end;

procedure TDMOrdenesSalidas.ADODtStOrdenSalidaItemBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  //Guardar datos para poder ajustar Pedido Luego
  IdDocDet:= DataSet.FieldByName('IDDocumentoSalidaDetalle').AsInteger;
  cantSol:=DataSet.FieldByName('CantidadSolicitada').AsFloat;
  IdDocSal:= DataSet.FieldByName('IDOrdenSalida').AsInteger; //OrdenSalida


end;

procedure TDMOrdenesSalidas.ADODtStOrdenSalidaItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  if dataset.FieldByName('CantidadDespachada').AsFloat>dataset.FieldByName('CantidadSolicitada').AsFloat then
  begin
    showmessage('La cantidad despachada no puede ser mayor a la solicitada');
    abort;

  end;

end;

procedure TDMOrdenesSalidas.ADODtStOrdenSalidaItemCantidadDespachadaChange(   //Verificar por que esta cambiando esta
  Sender: TField);
begin
  inherited;
  if ADODtStOrdenSalidaItem.State in [dsEdit,dsInsert] then
  begin
    ADODtStOrdenSalidaItem.FieldByName('Importe').AsFloat:=ADODtStOrdenSalidaItem.FieldByName('Precio').AsFloat* ADODtStOrdenSalidaItem.FieldByName('CantidadDespachada').AsFloat;
    //Aca se supone que deberia habilitar para hacer el ajuste en el documento salida original
    Ajustar:=True;//Nov 26/15
  end;
end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesAfterDelete(
  DataSet: TDataSet);
var
  valornvo:Double;
begin
  inherited;

  Valornvo:=ValorMaximoPosible(-1,ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').AsInteger,ADODtStSalidasUbicaciones.FieldByName('idsalidaUbicacion').AsInteger);
  if ValorNvo>0 then
     Showmessage('Registro incompleto');
end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesAfterPost(
  DataSet: TDataSet);
var IdOrdenSalItem, IdSalidaUbicacion:integer;
    cantidad:Double;
begin
  inherited;
  if CambioCantidad then
  begin
    IdOrdenSalItem:= ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').AsInteger;
    Cantidad:= ADODtStSalidasUbicaciones.FieldByName('Cantidad').Asfloat;
    IdSalidaUbicacion:= ADODtStSalidasUbicaciones.FieldByName('IDSalidaUbicacion').Asinteger; //Feb 3/16
    VerificaYCreaResto(IdOrdenSalItem,Cantidad, IdSalidaUbicacion);
                                     //Verificar que tenga el valor actual

    CambioCantidad:=False;
    ADODtStSalidasUbicaciones.Close;
    ADODtStSalidasUbicaciones.open;

  end;
end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesBeforePost(
  DataSet: TDataSet);
var valor:Double;
begin
  inherited;
  valor:=ValorMaximoPosible(CantAGuardar,DataSet.FieldByName('IdOrdenSalidaItem').ASInteger,DataSet.FieldByName('IdSalidaUbicacion').ASInteger); //Verificar que tenga valor....Feb 2/16
  if valor <CantAGuardar then
  begin
    abort;
    Showmessage('La Cantidad sobre pasa la orden. Máximo valor a poner '+ floatToStr(Valor));  //Verificar
  end;
end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesCantidadChange(
  Sender: TField);
var
  CantOrdenItem:Double;
begin
  inherited;   //No entra
  //Verifica y crea
 // Showmessage('valor Cantidad Change '+ ADODtStSalidasUbicaciones.fieldbyname('Cantidad').asString);
  if ADODtStSalidasUbicaciones.State=dsEdit  then
  begin
 (*   ADOQryAuxiliar.close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.ADD('SElect CantidadDespachada from OrdenesSalidasItems where IdOrdenSalidaItem='+ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').AsString);
    ADOQryAuxiliar.Open;
    CantOrdenItem:= ADOQryAuxiliar.FieldByName('CantidadDespachada').AsFloat;

         *)
    CambioCantidad:=True;
  end;

end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesCantidadSetText(
  Sender: TField; const Text: string);
//var valor:Double;
begin
  inherited;

  CantAGuardar:= StrTofloat(Text);

  CambioCantidad:= ADODtStSalidasUbicaciones.FieldByName('Cantidad').ASFloat<>CantAGuardar;
  sender.AsString:=Text;
 (*
//  Showmessage('valor SEtText'+ Text);
 valor:=ValorMaximoPosible(StrTofloat(Text),ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').ASInteger,ADODtStSalidasUbicaciones.FieldByName('IdSalidaUbicacion').ASInteger); //Verificar que tenga valor....Feb 2/16
 //Solo para validar y enviar msg

   if valor < StrTofloat(Text) then
       Showmessage('La Cantidad sobre pasa la orden. Máximo valor a poner '+ floatToStr(Valor));  //Verificar
//    ADODtStSalidasUbicaciones.FieldByName('Cantidad').ASFloat:= valor;

   *)
end;

Function TDMOrdenesSalidas.ValorMaximoPosible(valorAct:Double; idOrdenItem:Integer; idSalidaUbicacion:integer):Double;
var
  ValOrden, ValSalida:Double;
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  AdoQryAuxiliar.SQL.add('Select cantidadDespachada from OrdenesSalidasItems where idOrdenSalidaItem= '+ intToStr(idOrdenItem)) ;   //Mantiene el valor anterior
  AdoQryAuxiliar.open;
  ValOrden:=  AdoQryAuxiliar.Fieldbyname('cantidadDespachada').AsFloat;


  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  AdoQryAuxiliar.SQL.add('Select Sum(Cantidad) as Total from SalidasUbicaciones where idOrdenSalidaItem= '+ intToStr(idOrdenItem));
  if valorAct<>-1 then  //Para buscar resto es -1  //Feb 3/16
    AdoQryAuxiliar.SQL.add(' and idSalidaUbicacion <> '+intToStr(idSalidaUbicacion)) ;   //Mantiene el valor anterior

  AdoQryAuxiliar.open;                        //Los registrados // Verificar si se usan los diferentes de id //Pendiente de terminar
  ValSalida:= AdoQryAuxiliar.Fieldbyname('Total').asFloat;

  if ValSalida+ValorAct>ValOrden then //No deberia pasarse
  begin
   // Showmessage('La Cantidad sobre pasa la orden. Máximo valor a poner '+ floatToStr(ValOrden-ValSalida));
    Result:=ValOrden-ValSalida;
  end
  else
    if valorAct<>-1 then  //Para buscar resto es -1  //Feb 3/16
       result:= valorAct
    else
      Result:= ValOrden-ValSalida; //Resto //Feb 3/16
end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesEspacioChange(
  Sender: TField);
var
  Cantidad:Double;
  idProdXEsp:integer;
begin
  inherited;
  if adodtstSalidasUbicaciones.State in [dsEdit,dsInsert] then
  begin
    IdProdXEsp:=EncuentraProdXEspacio(adodtstSalidasUbicaciones.FieldByName('Espacio').ASString,adodtstOrdenSalidaItem.FieldByName('IDProducto').ASInteger, Cantidad);
    if IdProdXEsp<>-1 then
    begin
      adodtstSalidasUbicaciones.FieldByName('IdProductoXEspacio').AsInteger:= IdProdXEsp;
      if not adodtstSalidasUbicaciones.FieldByName('IdProductoXEspacio').isnull then
      begin
        adodtstSalidasUbicaciones.FieldByName('Disponible').AsFloat:=Cantidad;
    //    adodtstSalidasUbicaciones.FieldByName('IdProducto').asInteger:=idproducto;
    //    adodtstSalidasUbicaciones.FieldByName('Importe').AsFloat:=ValUni* adodsCotizacionesDetalle.FieldByName('CAntidad').AsFloat;
      end;
    end
    else
    begin
      Showmessage('No existe el producto en ese almacen');
      adodtstSalidasUbicaciones.FieldByName('Espacio').ASString:='';
    end;
  end;
end;


function TDMOrdenesSalidas.EncuentraProdXEspacio(TextoEspacio:String;IDProd:Integer; var LaCantidad:Double):Integer;
begin
  Result:=-1;
  if TextoEspacio<>'' then
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Add('Select Pe.*,E.Descripcion as Espacio from ProductosXEspacio PE'+
    ' inner join Espacios E on Pe.idEspacio =E.IdEspacio where PE.IdProducto='+intToStr(IDProd)
    +' and E.Descripcion='''+TextoEspacio+'''');
    ADOQryAuxiliar.open;
    if not ADOQryAuxiliar.eof then
    begin
      LaCantidad:= ADOQryAuxiliar.FieldByName('Cantidad').AsFloat;
      Result:=ADOQryAuxiliar.FieldByName('IdProductoXEspacio').asinteger ; //Valor del IDinterno
//      Result:=ADOQryAuxiliar.FieldByName('Descripcion').AsString;

    end;
  end;
  ADOQryAuxiliar.Close;
end;




procedure TDMOrdenesSalidas.ADODtStTelefonosCalcFields(DataSet: TDataSet);
begin
  inherited;
  DAtaset.FieldByName('TeleConLada').AsString:=dataset.FieldByName('Lada').AsString+'-'+ dataset.FieldByName('Telefono').AsString;
end;

procedure TDMOrdenesSalidas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  Ajustar:=False;
  gGridEditForm:= TFrmOrdenesSalida.Create(Self);
 // adodsMaster.Parameters.ParamByName('TipoDocto').Value:=FTipoDoc;
  gGridEditForm.DataSet := adodsMaster;
  TFrmOrdenesSalida(gGridEditForm).CargarDocGuia:=ActCargarGuia;
  TFrmOrdenesSalida(gGridEditForm).DtSrcOrdenSalItem.DataSet:=ADODtStOrdenSalidaItem;

  TFrmOrdenesSalida(gGridEditForm).DSInsertaKardex.DataSet:=ADOQryInsertaProductoKardex;//Feb 5/16
  TFrmOrdenesSalida(gGridEditForm).EnviaCorreoConDocs:=ActEnvioCorreoConArchivos;//Feb 16/16
  TFrmOrdenesSalida(gGridEditForm).ActualizaApartado :=ActActualizaApartado;//Abr 11/16
  TFrmOrdenesSalida(gGridEditForm).RevierteApartado :=ActRevierteApartado;//Abr 11/16

  TFrmOrdenesSalida(gGridEditForm).CrearDatosEnvio :=ActCreaInformacionEnvio;//May 23/16
  TFrmOrdenesSalida(gGridEditForm).ComparteEnvio:=ActCompartirEnvio;//May 23/16
   TFrmOrdenesSalida(gGridEditForm).DsdireccionEnvios.dataset:=ADODtStDireccionesEnvio; //Jun 10/16

 (* TfrmCotizaciones(gGridEditForm).TipoDocumento:= FTipoDoc;
  TfrmCotizaciones(gGridEditForm).DataSourceDetail.DataSet:=adodsCotizacionesDetalle;
  TfrmCotizaciones(gGridEditForm).DSAuxiliar.DataSet:=ADODSAuxiliar; //Nov 9/15
  TfrmCotizaciones(gGridEditForm).DSOrdenSalida.DataSet:=ADODtStOrdenSalida; //Nov 18/15
  TfrmCotizaciones(gGridEditForm).DSOrdenSalidaItems.DataSet:=ADODtStOrdenSalidaItem; //Nov 18/15*)
end;

function TDMOrdenesSalidas.VerificaYCreaResto(IdOrdenSalItem:Integer; CantActual:Double; idSalidaUbicacion:Integer):Boolean;  //Ajustado  //Feb 3/16
var
  valornvo:Double;
begin
  REsult:=False;            //Para que sume todo y ve acuanto le queda
  Valornvo:=ValorMaximoPosible(-1,IdOrdenSalItem,idsalidaUbicacion);
  if ValorNvo>0 then
  begin
    AdoQryauxiliar.Close;
    AdoQryauxiliar.SQL.Clear;
    AdoQryauxiliar.SQL.Add('INSERT INTO SalidasUbicaciones (IdSalidaUbicacionEstatus,IdOrdenSalidaItem, IDOrdenSalida, Cantidad) ');
    AdoQryauxiliar.SQL.Add('SElect  IdSalidaUbicacionEstatus,IdOrdenSalidaItem, IDOrdenSalida, '+ floatToSTR(valorNvo)+' from  SalidasUbicaciones Where IdSalidaUbicacion='+intToStr(idsalidaubicacion));
    AdoQryauxiliar.ExecSQL;
    Result:=True;
  end
  else
    ShowMessage('Completo. Asigne las ubicaciones');

end;


procedure TDMOrdenesSalidas.ReadFile(FileName: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob := adodsUpdate.CreateBlobStream(adodsUpdateArchivo, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;

function TDMOrdenesSalidas.SacaCorreoEmisor(ADatosCorreo: TStringList): Boolean;
begin
  Result:=False;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.sql.add('Select * from Configuraciones');
  ADOQryAuxiliar.Open;

   if not (ADOQryAuxiliar.eof) and (ADOQryAuxiliar.FieldByName('HostEnvio').ASString<>'') and (ADOQryAuxiliar.FieldByName('PuertoEnvio').ASString<>'') and
      (ADOQryAuxiliar.FieldByName('PasswordCorreo').ASString<>'') and (ADOQryAuxiliar.FieldByName('CorreoEnvio').ASString<>'') then
  begin
    ADatosCorreo.Values['emailNoti']    := ADOQryAuxiliar.FieldByName('CorreoEnvio').ASString;
    ADatosCorreo.Values['host']    := ADOQryAuxiliar.FieldByName('HostEnvio').ASString;
    ADatosCorreo.Values['usuario'] :=ADOQryAuxiliar.FieldByName('UsuarioCorreo').ASString ;
    ADatosCorreo.Values['contrasenia'] :=ADOQryAuxiliar.FieldByName('PasswordCorreo').ASString ;
    ADatosCorreo.Values['puerto']   :=ADOQryAuxiliar.FieldByName('PuertoEnvio').ASString ;
  //  ADatosCorreo.Values['QEnvia']   :='Notificador'; //ADOQryAuxiliar.FieldByName('').ASString ;
    if not ADOQryAuxiliar.FieldByName('TIPOSEGURIDAD').IsNull then
       ADatosCorreo.Values['MetSSL']   :=ADOQryAuxiliar.FieldByName('TIPOSEGURIDAD').ASString
    else
      ADatosCorreo.Values['MetSSL']   :='3'; //sslvTLSv1
    if not ADOQryAuxiliar.FieldByName('METODOAUTENTICACION').IsNull then
      ADatosCorreo.Values['ModSSL']   :=ADOQryAuxiliar.FieldByName('METODOAUTENTICACION').ASString
    else
      ADatosCorreo.Values['ModSSL']   :='0';//sslmUnassigned

    Result:=True;
  end;
  ADOQryAuxiliar.Close;

end;

function TDMOrdenesSalidas.SacaCorreoReceptor(IdCliente: Integer;
  var CorreoCliente: String): Boolean; //Feb 16/16
begin
  Result:=False;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;                                                                            //Notificador o preguntar cual???  o ver si el predeterminado
  ADOQryAuxiliar.sql.add('Select * from Emails where idPersona='+IntToStr(IdCliente)+' and ((IdEmailTipo=3) or(Predeterminado=1))');
  ADOQryAuxiliar.Open;
  if not (ADOQryAuxiliar.eof) and (ADOQryAuxiliar.FieldByName('email').ASString<>'') then
  begin
    CorreoCliente:=ADOQryAuxiliar.FieldByName('email').ASString;
    REsult:=True;
  end;
end;

function TDMOrdenesSalidas.GetFileName(IdDocumento: Integer): TFileName; //Copiado   de Documentos Feb 16/16
var
  FileName: TFileName;
begin
  adodsUpdate.Close;
  adodsUpdate.Parameters[0].Value:= IdDocumento;
  adodsUpdate.Open;
  FileName:= TPath.GetTempPath + adodsUpdateNombreArchivo.AsString;
  ReadFile(FileName);
  Result:= FileName;
end;



procedure TDMOrdenesSalidas.LlenaDatosEnvioNvo; //May 23/16
var ID,i:Integer;

begin
  if adodsMaster.FieldByName('IdPersona').AsInteger<>-1 then
  begin          //Verificar que  nose puedan crear de publico en general
    ADODtstInsertaInfoEntrega.Open;
//    if ADODtStInformacionEnvio.eof then     //Verificar o cambiar....
//    begin
      ADODtstInsertaInfoEntrega.Insert;
      ADODtstInsertaInfoEntrega.Fieldbyname('IdPersonaCliente').AsInteger:= adodsMaster.FieldByName('IdPersona').AsInteger;
      if not adodtstDatosDocumentoSalida.FieldByName('IdPersonaDomicilioEnvio').isnull then  //Jun 16/16
      begin
  //      ShowMessage('NULLLLL Dir referenciada '+adodsMaster.FieldByName('IdDireccionEnvio').asstring+' Dir envio'+ADODtStDireccionesEnvioIdPersonaDomicilio.asstring);
        ADODtstInsertaInfoEntrega.Fieldbyname('IDPersonaDomicilio').AsInteger:=adodtstDatosDocumentoSalida.FieldByName('IdPersonaDomicilioEnvio').Value //Jun 16/16
      end
      else   //Jun 16/16
      begin
//        ShowMessage('Dir referenciada '+adodtstDatosDocumentoSalida.FieldByName('IdPersonaDomicilioEnvio').Value);
        ADODtstInsertaInfoEntrega.Fieldbyname('IDPersonaDomicilio').AsInteger:=   adodsMaster.FieldByName('IdPersonaDomicilio').AsInteger;
      end;
      ADODtstInsertaInfoEntrega.Fieldbyname('FechaProgramadaEnt').AsDateTime:= Date+10;
      ADODtstInsertaInfoEntrega.Fieldbyname('Conducto').AsString:= SacaPaqueteriaNvo(adodsMaster.FieldByName('IdPersonaDomicilio').AsInteger);//May 12/16
      ADODtstInsertaInfoEntrega.Fieldbyname('Servicio').AsString:=adodsMaster.FieldByName('Servicio').AsString; ;
      ADODtstInsertaInfoEntrega.Fieldbyname('PagoFlete').AsBoolean:= False;
      ADODtstInsertaInfoEntrega.Fieldbyname('Valor').AsFloat:=  adodsMaster.FieldByName('Total').ASFloat;
      ADODtstInsertaInfoEntrega.Fieldbyname('Asegurado').AsBoolean:= False;
      ADODtstInsertaInfoEntrega.Fieldbyname('IDEstatusOrdenEntrega').AsInteger:= adodsMaster.FieldByName('IdOrdenEstatus').AsInteger; //Jun 10/16

      ADODtstInsertaInfoEntrega.Post; //Errror de operacion en varios pasos //Fecha
      id:=   ADODtstInsertaInfoEntrega.Fieldbyname('IdInfoentrega').AsInteger;
      //Crear asociacion
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.SQL.Clear;
      ADOQryAuxiliar.SQL.Add('Insert into InformacionEntregasDetalles (IDInfoentrega, IDordenSalida) Values('+intToStr(id)+','+adodsMaster.FieldByName('IdOrdenSalida').Asstring+ ')');
      if ADOQryAuxiliar.ExecSQL<>1 then
        ShowMessage('Errores Creando Detalles Entrega');
  end;


end;

Function TDMOrdenesSalidas.SacaPaqueteriaNvo(IdPersonaDocicilio:Integer):String;    //May 23/16
                               //Ver si se cambia para programar que sesaque lo de lultima paqueteria usada.. Jun 16/16
begin
  Result:='SIN IDENTIFICAR';
  if not DsMaster.DataSet.FieldByName('IdPaqueteria').Isnull then
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.Sql.Add('Select * from Paqueterias where IDPaqueteria='+DsMaster.DataSet.FieldByName('IdPaqueteria').asstring);
    ADOQryAuxiliar.Open;
    if not ADOQryAuxiliar.eof then //Solo puede tener si existe
    begin
      result:=ADOQryAuxiliar.fieldbyname('Identificador').AsString; //Se cambio Jun 16/16
    end
  end
  else
  begin//Buscar en Cliente
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.Sql.Add('Select PA.* from PersonasDomicilios PD inner join Paqueterias PA on PA.idPaqueteria=PD.IDEnvioTipo'
                          +' where IDpersonadomicilio='+intToStr(IdPersonaDocicilio));
    ADOQryAuxiliar.Open;
    if not ADOQryAuxiliar.eof then //Solo puede tener si existe
      result:=ADOQryAuxiliar.fieldbyname('Identificador').AsString;
  end;
end;

end.
