unit FacturasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB,VirtualXML,Forms,dateutils,winapi.windows, ShellApi,
  dialogs,comCtrls,System.IOUtils;

type
  TArrDinamico= array of integer; //ene 7/16
  TDMFacturas = class(T_dmStandar)
    DSMaster: TDataSource;
    ADODtStOrdenSalida: TADODataSet;
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
    ADODtStCFDIConceptos: TADODataSet;
    ADODtStCFDIImpuestos: TADODataSet;
    ADODtStPersonaEmisor: TADODataSet;
    ADODtStPersonaReceptor: TADODataSet;
    ADODtStCFDIConceptosIdCFDI: TLargeintField;
    ADODtStCFDIConceptosIdProducto: TIntegerField;
    ADODtStCFDIConceptosIdUnidadMedida: TIntegerField;
    ADODtStCFDIConceptosCantidad: TFloatField;
    ADODtStCFDIConceptosUnidad: TStringField;
    ADODtStCFDIConceptosDescripcion: TStringField;
    ADODtStCFDIConceptosNoIdentifica: TStringField;
    ADODtStCFDIConceptosValorUnitario: TFMTBCDField;
    ADODtStCFDIConceptosImporte: TFMTBCDField;
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIdCFDITipoDocumento: TIntegerField;
    adodsMasterIdCFDIFormaPago: TIntegerField;
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdPersonaEmisor: TIntegerField;
    adodsMasterIdPersonaReceptor: TIntegerField;
    adodsMasterIdDocumentoCBB: TIntegerField;
    adodsMasterIdDocumentoXML: TIntegerField;
    adodsMasterIdDocumentoPDF: TIntegerField;
    adodsMasterIdCFDIEstatus: TIntegerField;
    adodsMasterIdCFDIFacturaGral: TLargeintField;
    adodsMasterCuentaCte: TStringField;
    adodsMasterTipoCambio: TStringField;
    adodsMasterTipoComp: TStringField;
    adodsMasterSerie: TStringField;
    adodsMasterFolio: TLargeintField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterLugarExpedicion: TStringField;
    adodsMasterSello: TStringField;
    adodsMasterCondPago: TStringField;
    adodsMasterNoCertificado: TStringField;
    adodsMasterCertificado: TStringField;
    adodsMasterDescto: TFloatField;
    adodsMasterMotivoDescto: TStringField;
    adodsMasterNumCtaPago: TStringField;
    adodsMasterCadenaOriginal: TStringField;
    adodsMasterTotalImpuestoRetenido: TFloatField;
    adodsMasterTotalImpuestoTrasladado: TFloatField;
    adodsMasterSaldoDocumento: TFloatField;
    adodsMasterFechaCancelacion: TDateTimeField;
    adodsMasterObservaciones: TStringField;
    adodsMasterPorcentajeIVA: TFloatField;
    adodsMasterEmailCliente: TStringField;
    adodsMasterUUID_TB: TStringField;
    adodsMasterSelloCFD_TB: TStringField;
    adodsMasterSelloSAT_TB: TStringField;
    adodsMasterCertificadoSAT_TB: TStringField;
    adodsMasterFechaTimbrado_TB: TDateTimeField;
    ADODtStDatosDocumentoSalida: TADODataSet;
    ADODtStDatosDocumentoSalidaIdPersona: TIntegerField;
    ADODtStDatosDocumentoSalidaIDDocumentoSalida: TAutoIncField;
    ADODtStDatosDocumentoSalidaRazonSocial: TStringField;
    DSDatosDocSalida: TDataSource;
    ADODtStDatosDocumentoSalidaIdMetodoPagoCliente: TIntegerField;
    ADODtStDatosDocumentoSalidaRFC: TStringField;
    ADODtStDatosDocumentoSalidaNumCtaPagoCliente: TStringField;
    ADODtStCFDIImpuestosIdCFDI: TLargeintField;
    ADODtStCFDIImpuestosTipoImp: TStringField;
    ADODtStCFDIImpuestosImpuesto: TStringField;
    ADODtStCFDIImpuestosTasa: TFloatField;
    ADODtStCFDIImpuestosImporte: TFloatField;
    ADODtStCFDIConceptosIdOrdenSalidaItem: TIntegerField;
    ADODtStOrdenSalidaItemClaveProducto: TStringField;
    adodsProductos: TADODataSet;
    ADODtStOrdenSalidaItemProducto: TStringField;
    ADODtStDireccionesCliente: TADODataSet;
    ADODtStDatosDocumentoSalidaIdDomicilioCliente: TIntegerField;
    ActProcesaFactura: TAction;
    ADODtStPersonaEmisoridpersona: TAutoIncField;
    ADODtStPersonaEmisorRazonSocial: TStringField;
    ADODtStPersonaEmisorRFC: TStringField;
    ADODtStPersonaEmisorIdMetodoPagoCliente: TIntegerField;
    ADODtStPersonaEmisorNumCtaPagoCliente: TStringField;
    ADODtStPersonaEmisorIdPersonaDomicilio: TAutoIncField;
    ADODtStPersonaEmisorIdDomicilio: TIntegerField;
    ADODtStPersonaEmisorIdDomicilioTipo: TIntegerField;
    ADODtStPersonaEmisorIdentificador: TIntegerField;
    ADODtStPersonaEmisorPredeterminado: TBooleanField;
    ADODtStPersonaEmisorCalle: TStringField;
    ADODtStPersonaEmisorNoExterior: TStringField;
    ADODtStPersonaEmisorNoInterior: TStringField;
    ADODtStPersonaEmisorColonia: TStringField;
    ADODtStPersonaEmisorCodigoPostal: TStringField;
    ADODtStPersonaEmisorMunicipio: TStringField;
    ADODtStPersonaEmisorPoblacion: TStringField;
    ADODtStPersonaEmisorEstado: TStringField;
    ADODtStPersonaEmisorPais: TStringField;
    ADODtStPersonaReceptoridpersona: TAutoIncField;
    ADODtStPersonaReceptorRazonSocial: TStringField;
    ADODtStPersonaReceptorRFC: TStringField;
    ADODtStPersonaReceptorIdMetodoPagoCliente: TIntegerField;
    ADODtStPersonaReceptorNumCtaPagoCliente: TStringField;
    ADODtStPersonaReceptorIdPersonaDomicilio: TAutoIncField;
    ADODtStPersonaReceptorIdDomicilio: TIntegerField;
    ADODtStPersonaReceptorIdDomicilioTipo: TIntegerField;
    ADODtStPersonaReceptorIdentificador: TIntegerField;
    ADODtStPersonaReceptorPredeterminado: TBooleanField;
    ADODtStPersonaReceptorCalle: TStringField;
    ADODtStPersonaReceptorNoExterior: TStringField;
    ADODtStPersonaReceptorNoInterior: TStringField;
    ADODtStPersonaReceptorColonia: TStringField;
    ADODtStPersonaReceptorCodigoPostal: TStringField;
    ADODtStPersonaReceptorMunicipio: TStringField;
    ADODtStPersonaReceptorPoblacion: TStringField;
    ADODtStPersonaReceptorEstado: TStringField;
    ADODtStPersonaReceptorPais: TStringField;
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
    adodsArchivosCerKey: TADODataSet;
    adodsArchivosCerKeyIdPersona: TIntegerField;
    adodsArchivosCerKeyIdDocumentoCER: TIntegerField;
    adodsArchivosCerKeyIdDocumentoKEY: TIntegerField;
    adodsArchivosCerKeyClave: TStringField;
    adodsArchivosCerKeyVencimiento: TDateTimeField;
    adodsArchivosCerKeyNomCert: TStringField;
    adodsArchivosCerKeyIdCert: TGuidField;
    adodsArchivosCerKeyArchiCer: TBlobField;
    adodsArchivosCerKeyNomKey: TStringField;
    adodsArchivosCerKeyIdKey: TGuidField;
    adodsArchivosCerKeyArchiKey: TBlobField;
    ADODtStPersonaEmisorRegimenFiscalEmisor: TStringField;
    ADODtStMetodoPago: TADODataSet;
    adodsMasterMetodoPago: TStringField;
    ADODtStBuscaFolioSerie: TADODataSet;
    ADODtStBuscaFolioSerieIdCFDITipoDocumento: TAutoIncField;
    ADODtStBuscaFolioSerieDescripcion: TStringField;
    ADODtStBuscaFolioSerieSerieDoc: TStringField;
    ADODtStBuscaFolioSerieFolioDoc: TLargeintField;
    ADODtStBuscaFolioSerieTipoComprobante: TStringField;
    adodsMasterIdClienteDomicilio: TIntegerField;
    ADODtStOrdenSalidaidOrdenSalida: TAutoIncField;
    ADODtStOrdenSalidaIdDocumentoSalida: TIntegerField;
    ADODtStOrdenSalidaIdOrdenEstatus: TIntegerField;
    ADODtStOrdenSalidaIdPersonaRecolecta: TIntegerField;
    ADODtStOrdenSalidaIdPersonaRevisa: TIntegerField;
    ADODtStOrdenSalidaIdPersonaEmpaca: TIntegerField;
    ADODtStOrdenSalidaFechaRegistro: TDateTimeField;
    ADODtStOrdenSalidaTotal: TFMTBCDField;
    ADODtStOrdenSalidaFechaIniRecolecta: TDateTimeField;
    ADODtStOrdenSalidaFechaFinRecolecta: TDateTimeField;
    ADODtStOrdenSalidaFechaIniRevisa: TDateTimeField;
    ADODtStOrdenSalidaFechaFinRevisa: TDateTimeField;
    ADODtStOrdenSalidaFechaIniEmpaca: TDateTimeField;
    ADODtStOrdenSalidaFechaFinEmpaca: TDateTimeField;
    ADODtStOrdenSalidaSubtotal: TFMTBCDField;
    ADODtStOrdenSalidaIVA: TFMTBCDField;
    adodsMasterSubTotal: TFloatField;
    adodsMasterTotal: TFloatField;
    ADODtStMonedas: TADODataSet;
    adodsMasterMoneda: TStringField;
    ADODtStTiposDocumentos: TADODataSet;
    ADODtStMetodoPagoIdMetodoPago: TAutoIncField;
    ADODtStMetodoPagoIdentificador: TStringField;
    ADODtStMetodoPagoDescripcion: TStringField;
    ADODtStMetodoPagoExigeCuenta: TIntegerField;
    ADODtStTiposDocumentosIdCFDITipoDocumento: TAutoIncField;
    ADODtStTiposDocumentosDescripcion: TStringField;
    ADODtStTiposDocumentosSerieDoc: TStringField;
    ADODtStTiposDocumentosFolioDoc: TLargeintField;
    ADODtStTiposDocumentosTipoComprobante: TStringField;
    adodsMasterTipoDocumento: TStringField;
    adodsMasterCliente: TStringField;
    ADODtStCFDIEstatus: TADODataSet;
    adodsMasterEstatus: TStringField;
    ActCrearPrefacturas: TAction;
    ADODataSetOrdensalidaOriginal: TADODataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    AutoIncField1: TAutoIncField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    DateTimeField1: TDateTimeField;
    FMTBCDField1: TFMTBCDField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    ADODtStOrdenSalidaIDDomicilioCliente: TIntegerField;
    ADODtStOrdenSalidaIDMetodoPagoCliente: TIntegerField;
    ADODtStOrdenSalidaRFC: TStringField;
    ADODtStOrdenSalidaNombreCliente: TStringField;
    ADODtStOrdenSalidaIDPersonaCliente: TAutoIncField;
    adodsMasterRFC: TStringField;
    ADODtStDireccionesClienteDirCompleta: TStringField;
    ADODtStFormasPago: TADODataSet;
    ADODtStFormasPagoIDCFDIFormaPago: TAutoIncField;
    ADODtStFormasPagoIdentificador: TStringField;
    ADODtStFormasPagoDescripcion: TStringField;
    adodsMasterFormaPago: TStringField;
    ADODtStConsultaDirecciones: TADODataSet;
    ADODtStConsultaDireccionesIdPersonaDomicilio: TAutoIncField;
    ADODtStConsultaDireccionesIdPersona: TIntegerField;
    ADODtStConsultaDireccionesIdDomicilio: TIntegerField;
    ADODtStConsultaDireccionesIdDomicilioTipo: TIntegerField;
    ADODtStConsultaDireccionesIdentificador: TIntegerField;
    ADODtStConsultaDireccionesPredeterminado: TBooleanField;
    ADODtStConsultaDireccionesCalle: TStringField;
    ADODtStConsultaDireccionesNoExterior: TStringField;
    ADODtStConsultaDireccionesNoInterior: TStringField;
    ADODtStConsultaDireccionesColonia: TStringField;
    ADODtStConsultaDireccionesCodigoPostal: TStringField;
    ADODtStConsultaDireccionesMunicipio: TStringField;
    ADODtStConsultaDireccionesPoblacion: TStringField;
    ADODtStConsultaDireccionesEstado: TStringField;
    ADODtStConsultaDireccionesPais: TStringField;
    ADODtStConsultaDireccionesDirCompleta: TStringField;
    ADODtStOrdenSalidaItemIdUnidadMedida: TIntegerField;
    adodsDocumento: TADODataSet;
    adodsDocumentoIdDocumento: TAutoIncField;
    adodsDocumentoIdDocumentoTipo: TIntegerField;
    adodsDocumentoIdDocumentoClase: TIntegerField;
    adodsDocumentoDescripcion: TStringField;
    adodsDocumentoNombreArchivo: TStringField;
    adodsDocumentoIdArchivo: TGuidField;
    adodsDocumentoArchivo: TBlobField;
    ActRegeneraPDF: TAction;
    ActBuscar: TAction;
    ADODtStProductosKardex: TADODataSet;
    ADODtStProductosKardexIdProductosKardex: TAutoIncField;
    ADODtStProductosKardexIdProducto: TIntegerField;
    ADODtStProductosKardexIdOrdenEntradaItem: TIntegerField;
    ADODtStProductosKardexIdOrdenSalidaItem: TIntegerField;
    ADODtStProductosKardexIdMoneda: TIntegerField;
    ADODtStProductosKardexIdSeccion: TIntegerField;
    ADODtStProductosKardexReferenciaEspacio: TIntegerField;
    ADODtStProductosKardexContenedor: TStringField;
    ADODtStProductosKardexFecha: TWideStringField;
    ADODtStProductosKardexMovimiento: TStringField;
    ADODtStProductosKardexCantidad: TFloatField;
    ADODtStProductosKardexImporte: TFMTBCDField;
    ADODtStInventario: TADODataSet;
    ADODtStInformacionEnvio: TADODataSet;
    ADODtStInformacionEnvioIdInfoEntrega: TAutoIncField;
    ADODtStInformacionEnvioIdCFDI: TLargeintField;
    ADODtStInformacionEnvioIDPersonaCliente: TIntegerField;
    ADODtStInformacionEnvioIDPersonaDomicilio: TIntegerField;
    ADODtStInformacionEnvioIDResponsableEntrega: TIntegerField;
    ADODtStInformacionEnvioFechaProgramadaEnt: TWideStringField;
    ADODtStInformacionEnvioFechaRealEnt: TWideStringField;
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
    ADODtStIdentificadores: TADODataSet;
    adodsMasterIdentificadorCte: TStringField;
    adodsMasterIdOrdenSalida: TIntegerField;
    ADOQryActualizaInventario: TADOQuery;
    ADODtStDatosActInv: TADODataSet;
    ADODtStDatosActInvIdCFDIConcepto: TLargeintField;
    ADODtStDatosActInvIdCFDI: TLargeintField;
    ADODtStDatosActInvIdProducto: TIntegerField;
    ADODtStDatosActInvIdUnidadMedida: TIntegerField;
    ADODtStDatosActInvIdOrdenSalidaItem: TIntegerField;
    ADODtStDatosActInvCantidad: TFloatField;
    ADODtStDatosActInvUnidad: TStringField;
    ADODtStDatosActInvDescripcion: TStringField;
    ADODtStDatosActInvNoIdentifica: TStringField;
    ADODtStDatosActInvValorUnitario: TFMTBCDField;
    ADODtStDatosActInvImporte: TFMTBCDField;
    ADODtStDatosActInvIdAlmacen: TIntegerField;
    ADODtStDatosActInvIdProductoKardex: TAutoIncField;
    ActEnvioCorreoFact: TAction;
    ADOQryAuxiliar: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure ADODtStCFDIImpuestosNewRecord(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemNewRecord(DataSet: TDataSet);
    procedure ActProcesaFacturaExecute(Sender: TObject);
    procedure ActCrearPrefacturasExecute(Sender: TObject);
    procedure ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
    procedure ActRegeneraPDFExecute(Sender: TObject);
    procedure ActBuscarExecute(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure ActEnvioCorreoFactExecute(Sender: TObject);
  private
    fidordenSal: Integer;
    ffiltro: String;
    fImpresion: Integer;
    ArrBinario:TArrDinamico;
    fCreoCFDI: Boolean;
    FMuestra: Boolean;//Ene7/16
    procedure ReadFileCERKEY(FileNameCER,FileNameKEY: TFileName);
    function ConvierteFechaT_DT(Texto: String): TDateTime;
    procedure actXMLaPDFExecute(Sender: TObject);
    function CargaXMLPDFaFS(Archivo, Describe: string): integer;
    procedure SubirXMLPDFaFS(FileName: TFileName);
    procedure ReadFile(FileName: TFileName);
    function GetfImpresion: Integer;

    procedure ConvierteBinADec(Numero: integer; var B:TArrDinamico);
    procedure LlenaDatosEnvio; //Ene7/16
    procedure ActualizaInventario(IDOrdenSalida,IDCFDI:Integer);  //Feb 8/16
    procedure SetMuestra(const Value: Boolean);
    { Private declarations }
    function GetFileName(IdDocumento: Integer): TFileName;    //Feb 17/16
    function SacaCorreoEmisor(ADatosCorreo:TStringList):Boolean;   //Feb 17/16
    function SacaCorreoReceptor(IdCliente:Integer;var CorreoCliente :String ):Boolean; //Feb 17/16

  public
    { Public declarations }
    EsProduccion:Boolean;
    property IDordenSalida:Integer read fidordenSal write fIdOrdenSal;
    property FiltroCon:String read ffiltro write ffiltro; //Dic 29/15
    property DMImpresion:Integer read GetfImpresion write FImpresion;

    property CreoCFDI:Boolean read fCreoCFDI write fCreoCFDI; //Ene29/16
//
    constructor CreateWMostrar(AOwner: TComponent; Muestra: Boolean); virtual;
    property Muestra:Boolean read FMuestra write SetMuestra; //Feb 10/16

  end;

var
  DMFacturas: TDMFacturas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FacturasFormEdit, DocComprobanteFiscal, FacturaTipos, XMLtoPDFDmod, _Utils,
  UDMEnvioMail;

{$R *.dfm}

procedure TDMFacturas.ActBuscarExecute(Sender: TObject);

begin
//  FiltroCon:=(Sender as TToolButton).hint;
  inherited;
//  adodsMaster.close;

//  adodsMaster.filter:=FiltroCon;
//  adodsMaster.filtered:=filtrocon<>'';
//  adodsMaster.Open;


end;

procedure TDMFacturas.ActCrearPrefacturasExecute(Sender: TObject);
begin   //Dic 16/15 Mod. para que sólo cree la prefactura Actual (habria que mandar el id de la orden)
  inherited;
    //Verificar y generar prefacturas() Orden sigue como Revisada, pero cuando se genere la Factura se cambiará a autorizada
 try
  adodsMaster.Open;
  ADODtStOrdenSalida.Parameters.ParamByName('IdOrdenSalida').Value:=IDordenSalida;  //Enviar el parametro
  ADODtStOrdenSalida.Open;
  ADODtStOrdenSalidaItem.Open;

  ADODtStCFDIConceptos.Open;
  ADODtStCFDIImpuestos.Open;

//  while not ADODtStOrdenSalida.eof do //Dic 16/15
//  begin

    adodsMaster.Insert;                                   //Verificar si se coloca autopmatica por la relacion
    adodsMaster.FieldByName('IdOrdenSalida').AsInteger := ADODtStOrdenSalida.FieldByName('IdOrdenSalida').AsInteger;
    adodsMaster.FieldByName('Subtotal').AsFloat := ADODtStOrdenSalida.FieldByName('Subtotal').AsFloat;
    adodsMaster.FieldByName('Total').AsFloat := ADODtStOrdenSalida.FieldByName('Total').AsFloat;
    adodsMaster.FieldByName('SaldoDocumento').AsFloat := ADODtStOrdenSalida.FieldByName('Total').AsFloat; //Ene 14/16

    adodsMaster.FieldByName('TotalImpuestoTrasladado').AsFloat := ADODtStOrdenSalida.FieldByName('IVA').AsFloat;
//    adodsMaster.FieldByName('IDPersonaEmisor').AsInteger:=SacarEmisor;  //ADODtStOrdenSalida.FieldByName('Total').AsFloat;

    adodsMaster.FieldByName('IDPersonaReceptor').AsInteger := ADODtStOrdenSalida.FieldByName('IDPersonaCliente').ASInteger;
    if  not ADODtStOrdenSalida.FieldByName('IDMetodoPagoCliente').IsNull then //Ene 29/16
      adodsMaster.FieldByName('IdMetodoPago').AsInteger := ADODtStOrdenSalida.FieldByName('IDMetodoPagoCliente').ASInteger
    else
       adodsMaster.FieldByName('IdMetodoPago').AsInteger :=4; //No identificado   //Ene 29/16
    if  not ADODtStOrdenSalida.FieldByName('IDDomicilioCliente').Isnull then
      adodsMaster.FieldByName('IdClienteDomicilio').AsInteger := ADODtStOrdenSalida.FieldByName('IDDomicilioCliente').ASInteger;
                                                          //Verificar que tenga algo
//    adodsMaster.FieldByName('').AsInteger := ADODtStOrdenSalida.FieldByName('').ASInteger;
    adodsMaster.Post;
    ADODtStCFDIImpuestos.Insert;
   // ADODtStCFDIImpuestos.FieldByName('').AsInteger := ADODtStOrdenSalida.FieldByName('').AsInteger; //Verificar asociacion CFDI
    ADODtStCFDIImpuestos.FieldByName('Importe').asFloat := ADODtStOrdenSalida.FieldByName('IVA').AsFloat;
    ADODtStCFDIImpuestos.Post;


    while(not ADODtStOrdenSalidaItem.eof) do
    begin
      ADODtStCFDIConceptos.Insert;

      ADODtStCFDIConceptos.FieldByName('IDOrdenSalidaItem').AsInteger := ADODtStOrdenSalidaItem.FieldByName('IDOrdenSalidaItem').AsInteger;
      ADODtStCFDIConceptos.FieldByName('IDProducto').AsInteger := ADODtStOrdenSalidaItem.FieldByName('IDProducto').AsInteger;
      ADODtStCFDIConceptos.FieldByName('Cantidad').AsFloat := ADODtStOrdenSalidaItem.FieldByName('CantidadDespachada').AsFloat;
      ADODtStCFDIConceptos.FieldByName('Descripcion').asString := ADODtStOrdenSalidaItem.FieldByName('Producto').asString;
      ADODtStCFDIConceptos.FieldByName('NoIdentifica').ASString := ADODtStOrdenSalidaItem.FieldByName('ClaveProducto').ASString;
      ADODtStCFDIConceptos.FieldByName('IdUnidadMedida').ASInteger := ADODtStOrdenSalidaItem.FieldByName('IDUnidadMedida').AsInteger;
      ADODtStCFDIConceptos.FieldByName('Unidad').ASString := 'PZA';//ADODtStOrdenSalidaItem.FieldByName('ClaveProducto').ASString;
      ADODtStCFDIConceptos.FieldByName('ValorUnitario').ASFloat := ADODtStOrdenSalidaItem.FieldByName('Precio').ASFloat;
      ADODtStCFDIConceptos.FieldByName('Importe').ASFloat := ADODtStOrdenSalidaItem.FieldByName('Importe').ASFloat;


      ADODtStCFDIConceptos.Post;
      ADODtStOrdenSalidaItem.Next;
    end;
//    ADODtStOrdenSalida.Next;
//  end;
    fCreoCFDI:=True;
 except
   fCreoCFDI:=False;
 end;
end;

procedure TDMFacturas.ActEnvioCorreoFactExecute(Sender: TObject);
var
  DmEnvioMail:TDMEnvioMails;
  ArcXml,ArcPDF, ArcGuia: TFileName;
  IdDoc:Integer;
  ADatosEmisor:TStringList;
  CorreoRec:String;
  ArchivosLista:TStringList;
begin
  inherited;
  ADatosEmisor:=TStringList.Create;
  ArchivosLista:=TStringList.Create;//Feb 22/16
  adodsMaster.Open; //debe estar abierto
  //Sacar CFDI y PDF si se require
  ShowProgress(10,100.1,'Obteniendo información de documentos ' + IntToStr(10) + '%');
  IdDoc:=adodsMasterIdDocumentoXML.AsInteger;
  ArcXml:=GetFileName(IdDoc);
  ArchivosLista.Add(ArcXml);
  ShowProgress(20,100.1,'Obteniendo información de documentos ' + IntToStr(20) + '%');
  IdDoc:=adodsMasterIdDocumentoPDF.AsInteger;
  ArcPDF:=GetFileName(IdDoc);
  ArchivosLista.Add(ArcPDF);
  ShowProgress(30,100.1,'Obteniendo Datos de Receptor ' + IntToStr(30) + '%');
  if SacaCorreoEmisor(ADatosEmisor) and SacaCorreoReceptor(adodsMasterIdPersonaReceptor.AsInteger,CorreoRec) then
  begin //Sacar datos Correo Emisor           //SAcar datos Correo Receptor
    DMEnvioMail:=TDMEnvioMails.Create(self);
    ShowProgress(50,100.1,'Enviando Correo... ' + IntToStr(50) + '%');
    if  DMEnvioMails.SendEmail(CorreoRec+';'+ADatosEmisor.Values['emailNoti'],'Envio Factura '+adodsMasterSerie.asstring+'-'+adodsMasterFolio.asstring ,'Envio Factura relacionada al Pedido No.'+ adodsMasteridOrdenSalida.asstring,
             ArcXml,ArcPDF,ArcGuia, ArchivosLista, ADatosEmisor.Values['host'], ADatosEmisor.Values['usuario'], ADatosEmisor.Values['contrasenia'],
             'Tracto Partes MAS', StrToInt(ADatosEmisor.Values['puerto']),StrToInt(ADatosEmisor.Values['MetSSL']),
             StrToInt(ADatosEmisor.Values['ModSSL'])) then
     begin
       ShowProgress(90,100.1,'Finalizando envio de Correo... ' + IntToStr(90) + '%');
       ShowProgress(100,100.1,'Proceso de envio de Correo Terminado... ' + IntToStr(100) + '%');
       ShowMessage('Datos enviados al Cliente');
     end
     else
     begin
       ShowProgress(100,100.1,'Error en Proceso de envio de Correo ... ' + IntToStr(100) + '%');
       ShowMessage('Error en envio del Correo. Verifique conexión a internet');
     end;
    DMEnvioMail.Free;
  end
  else
  begin
    ShowProgress(100,100.1,'Error en Proceso de envio de Correo ... ' + IntToStr(100) + '%');
    ShowMessage('No se pudo enviar el Correo. Falta Información para el envio. '+#13 +'Asegurese de tener definida la información del servidor de salida y el correo del Cliente.');
  end;
  ShowProgress(100,100);
  ADatosEmisor.Free; //Feb 22/16
  ArchivosLista.Free; //Feb 22/16

end;

procedure TDMFacturas.ActProcesaFacturaExecute(Sender: TObject);
const  //Copiado de sistema RH Dic 7/15
  _SEGUNDOS_A_RESTAR = -30;
var
  DocumentoComprobanteFiscal: TDocumentoComprobanteFiscal;
  Certificado: TFECertificado;
  Emisor, Receptor: TFEContribuyente;
  ImpuestoRet: TFEImpuestoRetenido;
  ImpuestoTras : TFEImpuestoTrasladado;
//  ImpuestoLocal: TFEImpuestoLocal;
  ConceptoActual : TFEConcepto;    // Dic 7/15 Se cambio  para que en el se coloque cada concepto y luiego se mande agregaer en un ciclo

  TimbreCFDI: TTimbreCFDI;
  FileCertificado, FileKey : TFileName;
  Clave : String;
  Anio, Mes, Dia : Word;
  RutaBase, SubCarpeta, RutaFactura, RutaPDF : String;
  XMLpdf : TdmodXMLtoPDF;
  Max, Avance, i : integer;

  FechaAux:TDAteTime;//Porque si se intento generar le mande la misma fecha original
begin
  inherited;
  //Habilitado Dic 21/15
  XMLpdf := TdmodXMLtoPDF.Create(Self);
  XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIInterva.rtm';
  XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';
   //Habilitado Dic 21/15 hasta aca
  //verificar si no se intento generar antes
  FechaAux:=IncSecond(Now, _SEGUNDOS_A_RESTAR);
                                      //Prefactura
  if adodsMasterIdCFDIEstatus.AsInteger =1 then
  begin
    //Poner Folio Serie
    if adodsMasterFolio.AsInteger=0 then
    begin
      ADODtStBuscaFolioSerie.Close;
      ADODtStBuscaFolioSerie.Parameters.ParamByName('IdCFDITipoDocumento').Value:= adodsMasterIdCFDITipoDocumento.AsInteger; //Asegurarse que tenga valor
      ADODtStBuscaFolioSerie.Open;
      if (not ADODtStBuscaFolioSerie.eof) and (ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger >0)then
      begin
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMasterFolio.AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger;
        adodsMasterSerie.AsString:= ADODtStBuscaFolioSerie.FieldByName('SerieDoc').AsString;
        adodsMaster.Post;

        ADODtStBuscaFolioSerie.Edit;
        ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger+1;
        ADODtStBuscaFolioSerie.Post;
      end
      else //Verificar si se debe hacer algun ajuste antes de generar!!
      begin //dic 29/15
        Showmessage('Se generara sin serie ,ni folio ');
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMaster.Post;

      end;
    end
    else //Dic 29/15 ya se intento pero no se genero
    begin
      if FechaAux-adodsMasterFecha.AsDateTime >3 then
      begin
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMaster.Post
      end
      else
        FechaAux:=adodsMasterFecha.AsDateTime; //Para que use esa con los datos que tiene
    end;
   // ScreenCursorProc(-11);  //Deshabilitado Dic 29/15
    DecodeDate(Now, Anio, Mes, Dia);
//    RutaBase :=SacaRutaBase;

    adodsArchivosCerKey.Close;

    ADODtStPersonaEmisor.Close;
    ADODtStPersonaReceptor.Close;
    // Verificar si se require esto... o borrar  adodsEmisor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
    // adodsReceptor.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaRelacionada').Value;
     adodsArchivosCerKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaEmisor').asInteger;
    // adodsKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersona').Value;
    adodsArchivosCerKey.Open;
    ADODtStPersonaEmisor.Open;
    ADODtStPersonaReceptor.Open;

    RutaBase:=ExtractFilePath(application.ExeName);
    SubCarpeta := '\' + UpperCase(System.SysUtils.FormatSettings.ShortMonthNames[MonthOfTheYear(Now)]) + IntToStr(Anio) + '\';
    Esproduccion:=FileExists(RutaBase+'EnProduccion.txt'); //Temporal Dic 8/15
    DocumentoComprobanteFiscal:= TDocumentoComprobanteFiscal.Create;



    try
        Emisor.RFC                    := TFERFC(ADODtStPersonaEmisorRFC.AsString);
        Emisor.Nombre                 := ADODtStPersonaEmisorRazonSocial.AsString;
        Emisor.Direccion.Calle        := ADODtStPersonaEmisorCalle.AsString;
        Emisor.Direccion.NoExterior   := ADODtStPersonaEmisorNoExterior.AsString;
        Emisor.Direccion.NoInterior   := ADODtStPersonaEmisorNoInterior.AsString;
        Emisor.Direccion.CodigoPostal := ADODtStPersonaEmisorCodigoPostal.AsString;
        Emisor.Direccion.Colonia      := ADODtStPersonaEmisorColonia.AsString;
        Emisor.Direccion.Municipio    := ADODtStPersonaEmisorMunicipio.AsString;
        Emisor.Direccion.Estado       := ADODtStPersonaEmisorEstado.AsString;
        Emisor.Direccion.Pais         := ADODtStPersonaEmisorPais.AsString;
        Emisor.Direccion.Localidad    := ADODtStPersonaEmisorPoblacion.AsString;
         // 2. Agregamos los régimenes fiscales (requerido en CFD >= 2.2)
        SetLength(Emisor.Regimenes, 1);
        Emisor.Regimenes[0] := ADODtStPersonaEmisorRegimenFiscalEmisor.AsString;
        // Asignamos los valores iguales a la direcion del emisor suponiendo que se genera en el mismo lugar que se emitio
        // Se debe verificar antes de colocar el expedido. ya que sólo debe hacerse para cuando son diferentes
   (*     Emisor.ExpedidoEn.Calle        := Emisor.Direccion.Calle;
        Emisor.ExpedidoEn.NoExterior   := Emisor.Direccion.NoExterior;
        Emisor.ExpedidoEn.NoInterior   := Emisor.Direccion.NoInterior;
        Emisor.ExpedidoEn.CodigoPostal := Emisor.Direccion.CodigoPostal;
        Emisor.ExpedidoEn.Colonia      := Emisor.Direccion.Colonia;
        Emisor.ExpedidoEn.Municipio    := Emisor.Direccion.Municipio;
        Emisor.ExpedidoEn.Estado       := Emisor.Direccion.Estado;
        Emisor.ExpedidoEn.Pais         := Emisor.Direccion.Pais;
        Emisor.ExpedidoEn.Localidad    := Emisor.Direccion.Localidad;
        Emisor.ExpedidoEn.Referencia   := Emisor.Direccion.Referencia;    *)

        Receptor.RFC := TFERFC(ADODtStPersonaReceptorRFC.AsString);
        Receptor.Nombre := ADODtStPersonaReceptorRazonSocial.AsString;
        if (ADODtStPersonaReceptorCalle.AsString<>'')and (ADODtStPersonaReceptorPais.AsString<>'')then
        begin
          Receptor.Direccion.Calle:=ADODtStPersonaReceptorCalle.AsString;
          Receptor.Direccion.NoExterior:=ADODtStPersonaReceptorNoExterior.AsString;
          Receptor.Direccion.NoInterior:=ADODtStPersonaReceptorNoInterior.AsString;
          Receptor.Direccion.CodigoPostal:=ADODtStPersonaReceptorCodigoPostal.AsString;
          Receptor.Direccion.Colonia:=ADODtStPersonaReceptorColonia.AsString;
          Receptor.Direccion.Municipio:=ADODtStPersonaReceptorMunicipio.AsString;
          Receptor.Direccion.Estado:=ADODtStPersonaReceptorEstado.AsString;
          Receptor.Direccion.Pais :=ADODtStPersonaReceptorPais.AsString;
          Receptor.Direccion.Localidad:=ADODtStPersonaReceptorPoblacion.AsString;
        end;


        FileCertificado := ExtractFilePath(application.ExeName)+ adodsArchivosCerKeyNomCert.AsString;
        FileKey := ExtractFilePath(application.ExeName)+  adodsArchivosCerKeyNomKey.AsString;  //  TPath.GetTempPath +
        ReadFileCERKEY(FileCertificado,FileKey);

        Clave := adodsArchivosCerKeyClave.AsString;

        Certificado.Ruta := FileCertificado;
        Certificado.LlavePrivada.Ruta := FileKey;
        Certificado.LlavePrivada.Clave := Clave;

        DocumentoComprobanteFiscal.Folio:= adodsMasterFolio.AsInteger; //Dic 9/15
        DocumentoComprobanteFiscal.Serie:= adodsMasterSerie.AsString;  //Dic 9/15

        DocumentoComprobanteFiscal.Emisor := Emisor;
        DocumentoComprobanteFiscal.Receptor := Receptor;

        DocumentoComprobanteFiscal.TipoCompTexto := adodsMasterTipoComp.AsString; //verificar que venga

        DocumentoComprobanteFiscal.FechaGeneracion := FechaAux; //Para evitar  dobles generaciones

        DocumentoComprobanteFiscal.MetodoDePago :=  adodsMasterMetodoPago.AsString;
        if adodsMasterNumCtaPago.AsString <>''then
          DocumentoComprobanteFiscal.NumeroDeCuenta:= adodsMasterNumCtaPago.AsString;
        // Asignamos el lugar de expedición (requerido en  CFD >= 2.2)
        DocumentoComprobanteFiscal.LugarDeExpedicion := ADODtStPersonaEmisorMunicipio.AsString+ ', ' + ADODtStPersonaEmisorEstado.AsString;
        //adodsEmisorPoblacion.AsString ;
        // Definimos todos los conceptos que incluyo la factura
        ADODtStCFDIConceptos.First;
        while not ADODtStCFDIConceptos.Eof do
        begin
          ConceptoActual.Cantidad := ADODtStCFDIConceptosCantidad.AsFloat;
          ConceptoActual.Unidad := ADODtStCFDIConceptosUnidad.AsString;  //Verificar contenido
          ConceptoActual.Descripcion := ADODtStCFDIConceptosDescripcion.AsString;
          ConceptoActual.ValorUnitario := ADODtStCFDIConceptosValorUnitario.AsFloat;
          ConceptoActual.NoIdentificacion := ADODtStCFDIConceptosNoIdentifica.asstring;
//        ConceptoActual.CuentaPredial := ADOdsConceptocdsCuentaPredial.Value;
          DocumentoComprobanteFiscal.AgregarConcepto(ConceptoActual);
          ADODtStCFDIConceptos.Next;
        end;

        ADODtStCFDIImpuestos.First;
        while not ADODtStCFDIImpuestos.Eof do
        begin
          if ADODtStCFDIImpuestosTipoImp.AsString='Trasladado' then //Verificar que se coloque
          begin
            Impuestotras.Nombre := ADODtStCFDIImpuestosImpuesto.AsString;
            Impuestotras.Tasa := ADODtStCFDIImpuestosTasa.AsFloat;
            Impuestotras.Importe := ADODtStCFDIImpuestosImporte.AsFloat;
            DocumentoComprobanteFiscal.AgregarImpuestoTrasladado(Impuestotras);
          end
          else
          begin
            ImpuestoRet.Nombre := ADODtStCFDIImpuestosImpuesto.AsString;
            ImpuestoRet.Importe := ADODtStCFDIImpuestosImporte.AsFloat;
            DocumentoComprobanteFiscal.AgregarImpuestoRetenido(ImpuestoRet);
          end;
          ADODtStCFDIImpuestos.Next;
        end;
        RutaFactura := RutaBase + ADODtStPersonaEmisorRFC.AsString + SubCarpeta;
        if not DirectoryExists (RutaFactura) then
           ForceDirectories(RutaFactura);
        if  DirectoryExists (RutaFactura) then
        begin
        if GenerarCFDI(RutaFactura, DocumentoComprobanteFiscal, Certificado, TimbreCFDI,EsProduccion) then
        begin
          XMLpdf.FileIMG := RutaFactura + fePNG; //Dic 21/15
          XMLpdf.CadenaOriginalTimbre:= TimbreCFDI.CadenaTimbre; //Dic 28/15
          RutaPDF := XMLpdf.GeneratePDFFile(RutaFactura); //Dic 21/15  //verificar si sirve ese Formato
          //Actualizar datos de Timbre en CFDI
          adodsMaster.Edit;
          adodsMasterUUID_TB.AsString:=  TimbreCFDI.UUID;
          adodsMasterSelloCFD_TB.AsString:=TimbreCFDI.SelloEmisor;
          adodsMasterSelloSAT_TB.AsString:=TimbreCFDI.SelloSAT;
          adodsMasterSello.AsString:=TimbreCFDI.SelloEmisor; //Verificar
          adodsMasterCertificadoSAT_TB.AsString:=   TimbreCFDI.NoCertificadoSAT;
          adodsMasterFechaTimbrado_TB.AsDateTime:=ConvierteFechaT_DT(TimbreCFDI.FechaTimbre);
          adodsMasterCadenaOriginal.AsString:= TimbreCFDI.CadenaTimbre ; // Dic 23/15
         // adodsMaster
          adodsMasterIdCFDIEstatus.AsInteger:=2; //Dic 29/15
          adodsMasterIdDocumentoXML.Value := CargaXMLPDFaFS(RutaFactura,'Factura ' + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
          adodsMasterIdDocumentoPDF.Value := CargaXMLPDFaFS(RutaPDF,'Factura ' + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));

          adodsMasterIdDocumentoCBB.Value := CargaXMLPDFaFS(XMLpdf.FileIMG,'PNG Factura ' + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));//Ene 5/2016

          adodsMaster.Post;
          //Actualiza inventario
          ActualizaInventario(adodsMasterIdOrdenSalida.Value,adodsMasterIdCFDI.value);  //Feb 8/16

        //  Showmessage('CFDI Generado');//Dic 29/15

          if FileExists(RutaPDF) then
            ShellExecute(application.Handle, 'open', PChar(RutaPDF), nil, nil, SW_SHOWNORMAL);     //VErificar el FRM Edit
          ShowMessage('Envio a Cliente por Correo Electronico en proceso');
        end
        else
          Showmessage('Error Generando CFDI '+TimbreCFDI.MensajeError);//Dic 29/15
        end
        else
          application.MessageBox('No se pudo Crear el directorio. Verifique permisos', 'Error', MB_Ok);
        LlenaDatosEnvio; //Ene 27/16  Se hace aun y cuando no se haya alcanzado a Timbrar la Factura.



      finally

    end ;
  end
  else
    Showmessage('CFDI generado con anterioridad');

end;


procedure TDMFacturas.LlenaDatosEnvio; //Ene 27/16
begin

  ADODtStInformacionEnvio.Open;
  if ADODtStInformacionEnvio.eof then     //Verificar o cambiar....
  begin
    ADODtStInformacionEnvio.Insert;
    ADODtStInformacionEnvio.Fieldbyname('IdPersonaCliente').AsInteger:= adodsMaster.FieldByName('IdPersonaReceptor').AsInteger;
    ADODtStInformacionEnvio.Fieldbyname('IDPersonaDomicilio').AsInteger:=adodsMaster.FieldByName('IdClienteDomicilio').AsInteger;
    ADODtStInformacionEnvio.Fieldbyname('FechaProgramadaEnt').AsDateTime:= Date+10;
    ADODtStInformacionEnvio.Fieldbyname('Servicio').AsString:= 'Domicilio';
    ADODtStInformacionEnvio.Fieldbyname('PagoFlete').AsBoolean:= False;
    ADODtStInformacionEnvio.Fieldbyname('Valor').AsFloat:=  adodsMaster.FieldByName('Total').ASFloat;
    ADODtStInformacionEnvio.Fieldbyname('Asegurado').AsBoolean:= False;
    ADODtStInformacionEnvio.Post; //Errror de operacion en varios pasos

  end
  else      //Por si hubiese algún cambio
  begin
    ADODtStInformacionEnvio.Edit;
 //   ADODtStInformacionEnvio.Fieldbyname('IdPersonaCliente').AsInteger:= adodsMaster.FieldByName('IdPersonaReceptor').AsInteger;
    ADODtStInformacionEnvio.Fieldbyname('IDPersonaDomicilio').AsInteger:=adodsMaster.FieldByName('IdClienteDomicilio').AsInteger;
    ADODtStInformacionEnvio.Fieldbyname('Valor').AsFloat:=  adodsMaster.FieldByName('Total').ASFloat;
    ADODtStInformacionEnvio.Post;
  end;
  ADODtStInformacionEnvio.Close;
end;

procedure TDMFacturas.ActRegeneraPDFExecute(Sender: TObject);
var      //Dic 22/15
  IdDoc, Avance:Integer;
  nombreArchi, nomImagen,nomAux:TfileName;
  XMLpdf: TdmodXMLtoPDF;
begin
  inherited;
  Avance:=0; //Ene8/16
  ShowProgress(5,100.1,'Buscando Archivos...' + IntToStr(5) + '%');
  ConvierteBinADec(DMImpresion,ArrBinario);
    //Sacar ID del Archivo XML del Master
  idDoc:=adodsMasteridDocumentoXML.asInteger;
  adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
  adoDSDocumento.filtered:=True;
  adoDSDocumento.open;
  nombreArchi:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);

  readFile( nombreArchi); //sacaxml

  //Sacar PNG Ene6/16
  idDoc:=adodsMasterIdDocumentoCBB.asInteger;
  if idDoc>0 then
  begin
    adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
    adoDSDocumento.filtered:=True;
    adoDSDocumento.open;
    nomImagen:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);

    readFile( nomImagen); //sacaPng
  end;
  //Hasta aca ene6/16


  //nombreArchi:= ChangeFileExt(nombreArchi, fePDF);
  //nombreArchi:=ExtractfilePath(Application.exename)+nombreArchi;
  //Se manda el nombre del XML
  XMLpdf := TdmodXMLtoPDF.Create(Self);
  XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIInterva.rtm'; //dic28/15  HAy  que actualizarlos
  XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';   //dic28/15
  XMLpdf.CadenaOriginalTimbre:= adodsMasterCadenaOriginal.AsString; //dic 28/15 verificar
  try
     XMLpdf.FileIMG := nomImagen;//nombreArchi + fePNG; //Ajustado ene6/16
     if fileExists(XMLpdf.FileIMG) then//dic 28/15
     begin
       ShowProgress(20,100.1,'Generando para imprimir...' + IntToStr(20) + '%');
       if ArrBinario[0]=1 then
       begin
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,'FISCAL');
         XMLpdf.PrintPDFFile(nomAux);
         ShowProgress(40,100.1,'Imprimiendo FISCAL...' + IntToStr(40) + '%');
       end;
       if ArrBinario[1]=1 then
       begin
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,'COBRANZA');
         XMLpdf.PrintPDFFile(nomAux);
         ShowProgress(60,100.1,'Imprimiendo COBRANZA...' + IntToStr(60) + '%');
       end;
       if ArrBinario[2]=1 then
       begin
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,'EMBARQUE');
         XMLpdf.PrintPDFFile(nomAux);
         ShowProgress(80,100.1,'Imprimiendo EMBARQUE...' + IntToStr(80) + '%');
       end;
       if ArrBinario[3]=1 then
       begin
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,'EXPEDIENTE');
         XMLpdf.PrintPDFFile(nomAux);
         ShowProgress(95,100.1,'Imprimiendo EXPEDIENTE...' + IntToStr(95) + '%');
       end;
       if high(ArrBinario)=0 then
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,''); //SE genera un original, pero no se guarda.
     end
     else
     begin
       nombreArchi:='';

     end;
  finally
    XMLpdf.Free;
  end;


  adoDSDocumento.filter:='';
  adoDSDocumento.filtered:=false;
  if high(ArrBinario)=0 then
  begin
    if nombreArchi<>'' then                        //Ultimo
       ShellExecute(application.Handle, 'open', PChar(nomAux), nil, nil, SW_SHOWNORMAL)
    else
      Showmessage ('No fue posible regenerar el PDF, puede que no se haya encontrado el archivo PNG');
  end
  else
     ShowProgress(100,100.1,'Impresión terminada' + IntToStr(Avance) + '%');
   ShowProgress(100,100);
  //Filtrar con ID enDocumento
  //Sacar Documento
  //Aun no guarda de nuevo.. (Verificar)
end;

procedure TDMFacturas.ActualizaInventario(IDOrdenSalida, IDCFDI: Integer);
var
   texto:String;
begin
  ADODtStDatosActInv.Close;
  ADODtStDatosActInv.Parameters.ParamByName('IDCFDI').Value:= idcfdi;
  ADODtStDatosActInv.OPEN;
  //
  try
    ADODtStDatosActInv.Connection.BeginTrans;
    while not ADODtStDatosActInv.EOF do
    begin
      ADOQryActualizaInventario.SQL.Clear;
      ADOQryActualizaInventario.SQL.Add('Update Inventario SET PedidoXSurtir  =PedidoXSurtir-'+ADODtStDatosActInv.FieldByName('Cantidad').AsString
                                       +' ,Existencia =Existencia- '+ADODtStDatosActInv.FieldByName('Cantidad').AsString
                                       +' Where IdProducto='+ADODtStDatosActInv.FieldByName('IDProducto').AsString
                                       +' and IDALmacen= '+ADODtStDatosActInv.FieldByName('IDAlmacen').ASString);

      ADOQryActualizaInventario.ExecSQL;
      Texto:='Actualizo inventario';
      ADOQryActualizaInventario.SQL.Clear;
      ADOQryActualizaInventario.SQL.Add('Update SalidasUbicaciones SET IdSalidaUbicacionEstatus=3  where IdOrdenSalidaItem='
                                        +ADODtStDatosActInv.FieldByName('IDOrdenSalidaItem').ASString);
      ADOQryActualizaInventario.ExecSQL;
       Texto:=Texto +' Actualizo SalidasUbicacion';

      ADOQryActualizaInventario.SQL.Add('Update ProductosXEspacio SET Cantidad = Cantidad - '+ADODtStDatosActInv.FieldByName('Cantidad').AsString
                                       +' where IDProducto='+ADODtStDatosActInv.FieldByName('IdProducto').asString
                                       +' and IdAlmacen= '+ADODtStDatosActInv.FieldByName('IdAlmacen').asString);

      ADOQryActualizaInventario.ExecSQL;

      Texto:=Texto +' Actualizo ProductoEspacio';

      ADOQryActualizaInventario.SQL.Add('Update ProductosKardex SET IDProductoKardexEstatus = 3  '
                                       +' where IDProductoKardex='+ ADODtStDatosActInv.FieldByName('IdProductoKardex').ASString);

      ADOQryActualizaInventario.ExecSQL;

      Texto:=Texto +' Actualizo Producto Kardex';


      ADODtStDatosActInv.Next;
    end;
     ADODtStDatosActInv.Connection.CommitTrans;
   //  ShowMessage('bien '+Texto);
  except
     ADODtStDatosActInv.Connection.RollbackTrans;
     ShowMessage('Error'+ Texto);
  end;






end;

procedure TDMFacturas.ConvierteBinADec(Numero: integer; var B: TArrDinamico); //Ene 7/16
var      // Este convierte Decimal a Binario
  aux,i:integer;
  cadena:String;
begin
   //Limpiar B
   for i:= Low(B) to High(B) do
      B[i]:=0;
   i:=0;
   while numero >1 do
   begin
     aux:=numero mod 2;
     numero:= numero div 2;
     SetLength(B,i+1);
     B[i]:=aux;
     inc(i);
   end;
   SetLength(B,i+1);
   B[i]:=numero;

   for i:= high(B) downto 0 do
   begin
     cadena:=Cadena + intTostr(B[i]);
   end;
 //  showmessage(Cadena);

end;

function TDMFacturas.ConvierteFechaT_DT(Texto:String):TDateTime;  //Habilitada Dic 9/15
var                      //Texto Viene en formato 'yyyy-mm-dd''T''hh:nn:ss'
 anio, mes, dia:word;
 tiempo:string;
 dato2:TDatetime;
 t:Ttime;
begin
   anio:= STRToint(copy(texto,1,4)) ;
   mes:= STRToint(copy(texto,6,2)) ;
   dia:= STRToint(copy(texto,9,2)) ;

   dato2:=encodedate(anio,mes,dia);

   tiempo:=copy(texto,12,8);
   t:=strToTime(tiempo);
   dato2:=Dato2+t;

   Result:=Dato2;
end;


constructor TDMFacturas.CreateWMostrar(AOwner: TComponent; Muestra: Boolean);
begin
  FMuestra:=Muestra;
  inherited Create(AOwner);
end;

procedure TDMFacturas.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodtstIdentificadores.Open; //Feb 8/16
end;

procedure TDMFacturas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  try
  DataSet.FieldByName('IDCFDIEstatus').AsInteger:=1; //Prefactura
  DataSet.FieldByName('IDCFDITipoDocumento').AsInteger:=1; //Factura
  DataSet.FieldByName('TipoComp').AsString:='ingreso'; //columna TipoComprobante de Tabla CFDItipoDocumento
  //Verificar si serie yFolio se colocan aca o se colocan justo antes de generar el CFDI
  DataSet.FieldByName('Folio').AsInteger:=0; //Sin asignar aun
  DataSet.FieldByName('Fecha').AsDateTime:=now; //Se supondría que se van a generar inmediatamente pero hay que verificar(por si se requiere cambio de fecha antes de generar)
  DataSet.FieldByName('LugarExpedicion').AsString:=ADODtStPersonaEmisorMunicipio.Value +', '+ADODtStPersonaEmisorEstado.Value;//'Zapopan, Jalisco' ; //Verificar si se saca de  la direccion del emisor?

// DataSet.FieldByName('Serie').AsString:=
  DataSet.FieldByName('IdCFDIFormaPago').AsInteger :=1;
  DataSet.FieldByName('IDMoneda').AsInteger:=106;

  DataSet.FieldByName('IdPersonaEmisor').AsInteger:=ADODtStPersonaEmisoridpersona.AsInteger; //Debe estar abierta y debe tener una direccion fiscal
  Except
    Raise;
  end;
end;

procedure TDMFacturas.ADODtStCFDIImpuestosNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TipoImp').ASString:='Trasladado';
  DataSet.FieldByName('Impuesto').ASString:='IVA';
  DataSet.FieldByName('Tasa').ASFloat:=16;
end;

procedure TDMFacturas.ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
begin        //Usada en los dos
  inherited;
  dataset.FieldByName('DirCompleta').AsString:= dataset.FieldByName('Municipio').AsString +', '+dataset.FieldByName('Estado').AsString+
                                                '. '+dataset.FieldByName('Calle').AsString+ dataset.FieldByName('NoExterior').AsString+
                                                ' '+dataset.FieldByName('Colonia').AsString +' '+ dataset.FieldByName('CodigoPostal').AsString;
end;

procedure TDMFacturas.ADODtStOrdenSalidaItemNewRecord(DataSet: TDataSet);
begin
  inherited;
// Aca no se inserta  DataSet.FieldByName('IDUnidadMedida').AsInteger :=1 ;
end;

procedure TDMFacturas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  ADODtStPersonaEmisor.Open;

  ADODtStCFDIConceptos.open;
  ADODtStCFDIImpuestos.Open; //Dic 21/15

 // gGridEditForm:= TfrmFacturasFormEdit.Create(Self);
  gGridEditForm:= TfrmFacturasFormEdit.CreateWMostrar(Self,Muestra);
//  adodsMaster.Parameters.ParamByName('TipoDocto').Value:=FTipoDoc;
  gGridEditForm.DataSet := adodsMaster;
 // TfrmFacturasFormEdit(gGridEditForm).Mostrar:=Muestra;
  TfrmFacturasFormEdit(gGridEditForm).FacturarCtas := actProcesaFactura;
  TfrmFacturasFormEdit(gGridEditForm).ActPreFacturas := ActCrearPrefacturas;
  TfrmFacturasFormEdit(gGridEditForm).ActRegPdf := ActRegeneraPDF; //Dic 22/15
  TfrmFacturasFormEdit(gGridEditForm).ActBusqueda := ActBuscar; //Dic 29/15
  TfrmFacturasFormEdit(gGridEditForm).DSCFDIConceptos.DataSet:=ADODtStCFDIConceptos;
  TfrmFacturasFormEdit(gGridEditForm).DSDatosCliente.DataSet:=ADODtStDireccionesCliente;
//  TfrmFacturasFormEdit(gGridEditForm).DSCFDIConceptos.DataSet:=ADODtStCFDIConceptos;
  TfrmFacturasFormEdit(gGridEditForm).EnviaCorreoConDocs := ActEnvioCorreoFact; //Feb 17/16


end;

function TDMFacturas.GetFileName(IdDocumento: Integer): TFileName;
var             //Cambio Feb 17/16
  FileName: TFileName;
begin
  adoDSDocumento.Close;
  adoDSDocumento.filter:='IdDocumento='+intToSTR(IdDocumento);
  adoDSDocumento.filtered:=True;
  adoDSDocumento.open;
  FileName:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);

  FileName:= TPath.GetTempPath + FileName;
  ReadFile(FileName);
  Result:= FileName;
end;

function TDMFacturas.GetfImpresion: Integer;
begin
 // if True then    //Ya se pierde el valor
  fImpresion:= TfrmFacturasFormEdit(gGridEditForm).MiImpresion;
  Result:=  fImpresion;


end;

procedure TDMFacturas.ReadFileCERKEY(FileNameCER,FileNameKEY: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob := adodsArchivosCerKey.CreateBlobStream(adodsArchivosCerKeyArchiCer, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileNameCER, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;

  Blob := adodsArchivosCerKey.CreateBlobStream(adodsArchivosCerKeyArchiKey, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileNameKEY, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;


end;
//Dic 21/15 Desde
procedure TDMFacturas.actXMLaPDFExecute(Sender: TObject);
var
  XMLpdf: TdmodXMLtoPDF;
begin
  inherited;
  XMLpdf := TdmodXMLtoPDF.Create(Self);
  try
    XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIInterva.rtm'; //'FacturaCFDI.rtm';
    XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';
    XMLpdf.ModifyDocument;
//    XMLpdf.GeneratePDFFile(ArchivoRuta);
  finally
    XMLpdf.Free;
  end;
end;

function TDMFacturas.CargaXMLPDFaFS(Archivo: string; Describe : string):integer;
var
  FacturaXML : TFileName;
begin
  FacturaXML := Archivo;
  adodsDocumento.Open;
  adodsDocumento.Insert;
  adodsDocumentoIdDocumentoTipo.Value := 2;
  adodsDocumentoIdDocumentoClase.Value := 1;
  adodsDocumentoDescripcion.AsString := Describe;
  adodsDocumentoNombreArchivo.AsString := ExtractFileName(Archivo);
  SubirXMLPDFaFS(FacturaXML);
  adodsDocumento.Post;
  Result := adodsDocumentoIdDocumento.Value;
  adodsDocumento.Close;
end;

function TDMFacturas.SacaCorreoEmisor(ADatosCorreo: TStringList): Boolean;
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

function TDMFacturas.SacaCorreoReceptor(IdCliente: Integer;
  var CorreoCliente: String): Boolean;
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

procedure TDMFacturas.SetMuestra(const Value: Boolean);
begin
  FMuestra := Value;
end;

procedure TDMFacturas.SubirXMLPDFaFS(FileName: TFileName);
var
  Blob: TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsDocumentoArchivo, bmWrite);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      Blob.CopyFrom(Fs, Fs.Size)
    finally
      Fs.Free
    end;
  finally
    Blob.Free
  end;
end;

//Dic 21/15 Hasta

procedure TDMFacturas.ReadFile(FileName: TFileName); //Dic 21/15
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob := adodsDocumento.CreateBlobStream(adodsDocumentoArchivo, bmRead);
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

end.
