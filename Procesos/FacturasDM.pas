unit FacturasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB,VirtualXML,Forms,dateutils,winapi.windows, ShellApi,
  dialogs,comCtrls,System.IOUtils, ppDB, ppDBPipe, ppParameter, ppDesignLayer,
  ppBands, ppStrtch, ppMemo, ppCtrls, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TDatosCFDIs = record    //Abr 1/16
    IDCFDI_NV: Integer;
    IDPersonaCliente: Integer;
    IDPersonaDomicilio:Integer;
    SaldoDoc:Double;
  end;
  TArrDatosActualiza= Array of TDatosCFDIs; //Abr 1/16
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
    ADODtStProductosKardexIdProducto: TIntegerField;
    ADODtStProductosKardexIdOrdenEntradaItem: TIntegerField;
    ADODtStProductosKardexIdOrdenSalidaItem: TIntegerField;
    ADODtStProductosKardexIdMoneda: TIntegerField;
    ADODtStProductosKardexReferenciaEspacio: TIntegerField;
    ADODtStProductosKardexContenedor: TStringField;
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
    ADODtStProductosKardexIdProductoKardex: TAutoIncField;
    ADODtStProductosKardexIdAlmacen: TIntegerField;
    ADODtStProductosKardexIdProductoKardexEstatus: TIntegerField;
    ADODtStProductosKardexFecha: TDateTimeField;
    ADODtStInformacionEnvioFechaProgramadaEnt: TDateTimeField;
    ADODtStInformacionEnvioFechaRealEnt: TDateTimeField;
    ADODtStInformacionEnvioIdDocumentoGuia: TIntegerField;
    ADODtStInformacionEnvioCantidadCajas: TIntegerField;
    ActCancelarCFDI: TAction;
    adodsMasterRFCEmisor: TStringField;
    ADODtStDatosActInvIDOrdenSalida: TIntegerField;
    adopCopiaOrdenSalida: TADOStoredProc;
    ADODtStOrdenSalidaIdGeneraCFDITipoDoc: TIntegerField;
    ADODtStOrdenSalidaAcumula: TBooleanField;
    ADODtStDireccAuxiliar: TADODataSet;
    AutoIncField2: TAutoIncField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    BooleanField1: TBooleanField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    ADODtStDireccAuxiliarSaldo: TFMTBCDField;
    ADODtStCFDIConceptosIdCFDIConcepto: TLargeintField;
    ADODSNotasVenta: TADODataSet;
    ADODtStConceptosNotasVenta: TADODataSet;
    DSNotasVenta: TDataSource;
    ActPreFacturaNotaVenta: TAction;
    adodsMasterTipoComprobante: TStringField;
    ppRprtNotaVenta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppShape1: TppShape;
    ppShape7: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel35: TppLabel;
    ppDBText11: TppDBText;
    ppDBText19: TppDBText;
    ppLine9: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape8: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel18: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel16: TppLabel;
    ppLblTitulo: TppLabel;
    ppDBText2: TppDBText;
    ppDBText15: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel21: TppLabel;
    ppLine1: TppLine;
    ppLabel23: TppLabel;
    ppDBText16: TppDBText;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDBPplnItemsNotaVenta: TppDBPipeline;
    ppDBPplnGenerales: TppDBPipeline;
    DSConceptosNotasVenta: TDataSource;
    ppDBText3: TppDBText;
    adodsMasterDirCompletaCte: TStringField;
    adodsMasterTotalEnLetra: TStringField;
    ActImpNotasVenta: TAction;
    ActEnvioCorreoNotasVenta: TAction;
    ActCancelaNotaVenta: TAction;
    ADODtStOrdenSalidaItemCostoUnitario: TFMTBCDField;
    ADODtStMetodoPagoClaveSAT2016: TStringField;
    adodsMasterMetPagoClaveSAT: TStringField;
    adodsMasterClaveMoneda: TStringField;
    ADODSAuxiliar: TADODataSet;
    ADODtStCostoFactura: TADODataSet;
    ActImpFacturasPresupuestos: TAction;
    ActMostrarGuia: TAction;
    ADODtStVerificaGuia: TADODataSet;
    ActDocACotiza: TAction;
    ADODtStVerificaDocs: TADODataSet;
    ADODtStVerificaDocsIdDocumento: TIntegerField;
    ADODtStVerificaDocsNombreArchivo: TStringField;
    ADODtStOrdenSalidaIDMetododePago: TIntegerField;
    ADODtStOrdenSalidaNumCtaPagoCliente: TStringField;
    ActRevertirinventarioExtra: TAction;
    ActImprimeFactura: TAction;
    ADODtStDireccionesClienteIDMetododePago: TIntegerField;
    ADODtStDireccionesClienteNumCtaPagoCliente: TStringField;
    ADODtStConsultaDireccionesIDMetododePago: TIntegerField;
    ADODtStConsultaDireccionesNumCtaPagoCliente: TStringField;
    ADODtStDireccAuxiliarIDMetododePago: TIntegerField;
    ADODtStDireccAuxiliarNumCtaPagoCliente: TStringField;
    ActAplicaOrdenPendiente: TAction;
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
    procedure ActCancelarCFDIExecute(Sender: TObject);
    procedure ADODtStCFDIConceptosValorUnitarioChange(Sender: TField);
    procedure ADODtStCFDIConceptosAfterPost(DataSet: TDataSet);
    procedure ActPreFacturaNotaVentaExecute(Sender: TObject);
    procedure adodsMasterCalcFields(DataSet: TDataSet);
    procedure ActImpNotasVentaExecute(Sender: TObject);
    procedure ActEnvioCorreoNotasVentaExecute(Sender: TObject);
    procedure ADODtStCFDIConceptosNewRecord(DataSet: TDataSet);
    procedure adodsMasterBeforeInsert(DataSet: TDataSet);
    procedure ActCancelaNotaVentaExecute(Sender: TObject);
    procedure ADODtStCFDIConceptosBeforeInsert(DataSet: TDataSet);
    procedure ADODtStCFDIConceptosNoIdentificaChange(Sender: TField);
    procedure adodsMasterBeforeDelete(DataSet: TDataSet);
    procedure ActMostrarGuiaExecute(Sender: TObject);
    procedure ActDocACotizaExecute(Sender: TObject);
    procedure ActRevertirinventarioExtraExecute(Sender: TObject);
    procedure ActImprimeFacturaExecute(Sender: TObject);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
    procedure ActAplicaOrdenPendienteExecute(Sender: TObject);
  private
    fidordenSal: Integer;
    ffiltro: String;
    fImpresion: Integer;
    ArrBinario:TArrDinamico;
    fCreoCFDI: Boolean;
    FMuestra: Boolean;//Ene7/16
    FTipoDoc:Integer; //Mar 29/16
    fCreadaAntes: Boolean;
    FGenSinAct: boolean;  //Dic 19/16

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
    Function ActualizaSaldoCliente(IdCFDI, IDCliente, IDDomicilioCliente:Integer;Importe :Double; operacion:String):Boolean;

    function SacaListaDatos(idCFDI: Integer; Lista: TArrDatosActualiza):Boolean;
    procedure ImprimeNotaVPDF(Mostrar: Boolean; nombre: TFileName='');
    function ActualizaAsociadosACFDI(idCFDIAct: Integer): Boolean;
    function SacaPaqueteria(IdPerDom: integer): String;
    procedure CrearPagoNota(serie: string; Folio, idCFDINota, IDCliente,IDDomicilioCliente,
      IdMetodoPago: integer; Total: Double);
    function EncuentraProd(IdProd: String; var ValUni: Double;
      var ID: Integer): String;  //Jun 2/16
    procedure RevertirInventario(IDOrdenSalida, IDCFDI: Integer);
    function VerificaArchivo(var IDArchivo: Integer; Archivo: String;
      var Respuesta: String): Boolean;
    function ExisteFacturaPrevia(idOrdensalida: Integer): Boolean;
    function CrearArchivos_TimbrePrueba(var Ruta: String;
      var TimbradoCFDI: TTimbreCFDI;Adicional:String): Boolean; //Regresado

  public
    { Public declarations }
    EsProduccion:Boolean;
    property PIDordenSalida:Integer read fidordenSal write fIdOrdenSal;
    property FiltroCon:String read ffiltro write ffiltro; //Dic 29/15
    property DMImpresion:Integer read GetfImpresion write FImpresion;

    property CreoCFDI:Boolean read fCreoCFDI write fCreoCFDI; //Ene29/16
    property CreadaAntes:Boolean read fCreadaAntes write fCreadaAntes; //Dic 19/16
//
    constructor CreateWMostrar(AOwner: TComponent; Muestra: Boolean;TipoDoc:Integer); virtual;
    property Muestra:Boolean read FMuestra write SetMuestra; //Feb 10/16
    property TipoDocumento:Integer read FTipoDoc write FTipoDoc; //Mar 28/16

    Property GeneraSinActualizar:boolean read FGenSinAct write FGenSinAct; //Jun 13/17



  end;

var
  DMFacturas: TDMFacturas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FacturasFormEdit, DocComprobanteFiscal, FacturaTipos, XMLtoPDFDmod, _Utils,
  UDMEnvioMail, _ConectionDmod, MainForm;

{$R *.dfm}

procedure TDMFacturas.ActAplicaOrdenPendienteExecute(Sender: TObject);
begin
  inherited;     //Dic 27/16   //Habilitar sólo si tiene pendientes en productos kardex
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from CFDIConceptos Co where  exists(SElect * from ProductosKardex  P '+
                          'where  P.Movimiento=''S'' and P.IdProductoKardexEstatus=1 and '+
                          'Co.IdOrdenSalidaItem=p.IdOrdenSalidaItem )and Co.idcfdi='+adodsMaster.FieldByName('IDCFDI').AsString);
  ADOQryAuxiliar.Open;
  if not ADOQryAuxiliar.eof then
     ActualizaInventario(adodsMaster.FieldByName('IDOrdenSalida').AsInteger,adodsMaster.FieldByName('IDCFDI').AsInteger);
end;

procedure TDMFacturas.ActBuscarExecute(Sender: TObject);

begin
//  FiltroCon:=(Sender as TToolButton).hint;
  inherited;
//  adodsMaster.close;

//  adodsMaster.filter:=FiltroCon;
//  adodsMaster.filtered:=filtrocon<>'';
//  adodsMaster.Open;


end;

procedure TDMFacturas.ActCancelaNotaVentaExecute(Sender: TObject);
var
   dato, motivo : String;
   EsPresupuesto:Boolean;
begin
  inherited;
  //ShowMessage('Cancelación En proceso');
  dato:= '¿Está seguro CANCELAR el documento con Folio:'
           +adodsMaster.fieldbyname('Folio').ASString+' Serie: '
           +adodsMaster.fieldbyname('Serie').ASString +'?';

  motivo:= ' ';
  if (Application.MessageBox(pChar(dato),'Confirmación',MB_YESNO)=IDYES) and(inputQuery('Motivo Cancelación','Motivo cancelacion',motivo)) then
  begin
    EsPresupuesto:= adodsMasterIdCFDIEstatus.AsInteger=5 ; //Presupuestos, las Acumuladas son las que quedan en 4 y esas no aplica


    adodsMaster.Edit;
    adodsMasterFechaCancelacion.AsDateTime:=Now;
    adodsMasterIdCFDIEstatus.AsInteger:=3;
    adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo;
    adodsMaster.Post;

    if ESPresupuesto then// (adodsMasterIdCFDITipoDocumento.AsInteger=4) and (adodsMasterIdCFDIFacturaGral.IsNull) then //Jun 17/16 Solo Notas Ventas  que no esten
    begin
      //Verificar aca si se va a generar orden de entrada o sólo se revierten datos..

      RevertirInventario(adodsMasterIdOrdenSalida.value,adodsMasterIdCFDI.value); //Jun 17/16    Desde NotasVenta   Remision
      //Siempre  aplica porque es remision
      ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'- ');//Mar 7/16 cancela Remision
    end;
  end;
end;

procedure TDMFacturas.ActCancelarCFDIExecute(Sender: TObject);
var
  Certificado: TFECertificado;
  FileCertificado, FileKey : TFileName;
  Clave, RutaBase, carpeta, Respuesta, ArchivoSal,dato, motivo : String;
  Anio,dia,mes:Word;
  F:TextFile;
begin
  inherited;
  dato:= '¿Está seguro CANCELAR el documento con Folio:'
           +adodsMaster.fieldbyname('Folio').ASString+' Serie: '
           +adodsMaster.fieldbyname('Serie').ASString +'?';
      //Borrar luego
      motivo:= ' ';
  if (Application.MessageBox(pChar(dato),'Confirmación',MB_YESNO)=IDYES) and(inputQuery('Motivo Cancelación','Motivo cancelacion',motivo)) then
  begin
    adodsArchivosCerKey.Close;

    adodsArchivosCerKey.Parameters.ParamByName('IdPersona').Value := adodsMaster.FieldByName('IdPersonaEmisor').asInteger;
    adodsArchivosCerKey.Open;

    DecodeDate(Now, Anio, Mes, Dia);

    //Poner Proceso para Cancelar
    FileCertificado := ExtractFilePath(application.ExeName)+ adodsArchivosCerKeyNomCert.AsString;
    FileKey := ExtractFilePath(application.ExeName)+  adodsArchivosCerKeyNomKey.AsString;  //  TPath.GetTempPath +
    ReadFileCERKEY(FileCertificado,FileKey);

    Clave := adodsArchivosCerKeyClave.AsString;
    Certificado.RFCAlQuePertenece:= adodsMasterRFCEmisor.AsString;
    Certificado.Ruta := FileCertificado;
    Certificado.LlavePrivada.Ruta := FileKey;
    Certificado.LlavePrivada.Clave := Clave;

    RutaBase:=ExtractFilePath(application.ExeName);
    Carpeta := RutaBase+'Canceladas\';
    ArchivoSal:= UpperCase(System.SysUtils.FormatSettings.ShortMonthNames[MonthOfTheYear(Now)]) +
                IntToStr(Anio) +'_'+adodsmasterserie.AsString +adodsMasterFolio.asstring+'.txt' ;


    Esproduccion:=FileExists(RutaBase+'EnProduccion.txt'); //Temporal Dic 8/15
    // := RutaBase + ADODtStPersonaEmisorRFC.AsString + SubCarpeta;
    if not DirectoryExists (Carpeta) then
       ForceDirectories(Carpeta);
    if DirectoryExists (Carpeta) then
    begin
      if cancelarCFDI(adodsMasterUUID_TB.Value,carpeta+ArchivoSal,Certificado,Respuesta,Esproduccion) then
      begin
        dato:=Respuesta;

        Assignfile(F,carpeta+ArchivoSal);
        reset(F);
        readln(F,Respuesta);
        CloseFile(F);
        if pos('previamente',Respuesta)>0 then
        begin
          adodsMaster.Edit;
          adodsMasterFechaCancelacion.AsDateTime:=Now;
          adodsMasterIdCFDIEstatus.AsInteger:=3;
          adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' Previo '+ motivo+' '+ respuesta;
          adodsMaster.Post;
           //Actualiza Inventario y demás   //Mar 7/16
          if (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=4) then //abr 15/16 Solo Factura o Notas Ventas (No Notas Credito ni Cargo)
             RevertirInventario(adodsMasterIdOrdenSalida.value,adodsMasterIdCFDI.value); //Mar 10/16     //Cancelado Antes   FActuras (No entra si es REmision)

          if adodsMasterIdPersonaReceptor.Value=-1 then   //Abr 18/16
             ActualizaAsociadosACFDI(adodsMasterIdCFDI.value);//  Quita IDCFDIGeneral cuando es una factura de cliente -1 en cada una de las Notas asociadas Abr 18/16

          //Actualiza datos   //Verificar que no sea tipo2 (nota Credito)  Abr 28/16                    NCArgo
          if  (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=3) then //Dic 29/16
             ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'- ');//Mar 7/16
          //Actualizar Saldo Cliente //No debio actualizar antes

          ShowMessage('El comprobante ya habia sido cancelado anteriormente');
        end
        else                                      //Ajuste por si acaso cambio Abr 18/16
           if pos('UUID CANCELADO CORRECTAMENTE' ,UpperCase(Respuesta))>0 then
           begin
             adodsMaster.Edit;
             adodsMasterFechaCancelacion.AsDateTime:=Now;
             adodsMasterIdCFDIEstatus.AsInteger:=3;
             adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo+' '+ respuesta;
             adodsMaster.Post;

               //Actualiza Inventario y demás   //Mar 7/16       //Este nunca estará aca ya que es factura la asociada abr 18/16
             if (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=4) then //abr 15/16 Solo Factura o Notas Ventas (No Notas Credito ni Cargo)
                RevertirInventario(adodsMasterIdOrdenSalida.value,adodsMasterIdCFDI.value); //Mar 10/16   Normal cancelacion
             if adodsMasterIdPersonaReceptor.Value=-1 then   //Abr 18/16 //Verificar que no existan con -1 a menos que sea global jul 11/16
               ActualizaAsociadosACFDI(adodsMasterIdCFDI.value);//  Quita IDCFDIGeneral cuando es una factura de cliente -1 en cada una de las Notas asociadas Abr 18/16
            //Actualizar Saldo Cliente
            if (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=3) then //CancelandoCFDI   Canceladop anterior //Dic 2916
             ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'- ');//Mar 7/16
             if adodsMasterIdPersonaReceptor.Value=-1 then  //Verificar que no existan con -1 a menos que sea global jul 11/16
                ActualizaAsociadosACFDI(adodsMasterIdCFDI.value);//  Quita IDCFDIGeneral cuando es una factura de cliente -1 en cada una de las Notas asociadas Abr 18/16

             ShowMessage(adodsMasterUUID_TB.Value + #13+'Documento cancelado en SAT. Recuerde que debe descargar del SAT, los acuses de cancelación');

           end
           else                                                                                    //Antes lo mandaba en la respuesta  ago 19/16
             if (not EsProduccion) and ((pos('205 - El',respuesta)>0) or (pos('74305F11-FFFF-FFFF-FFFF-BD200698C5EA', adodsMasterUUID_TB.Value)>0)) then
             begin  //Pruebas..
               adodsMaster.Edit;
               adodsMasterFechaCancelacion.AsDateTime:=Now;
               adodsMasterIdCFDIEstatus.AsInteger:=3;
               adodsMasterObservaciones.asString:= adodsMasterObservaciones.asString+' '+ motivo+' '+ respuesta;
               adodsMaster.Post;
                 //Actualiza Inventario y demás   //Mar 7/16
               if (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=4) then //abr 15/16 Solo Factura o Notas Ventas (No Notas Credito ni Cargo)
                  RevertirInventario(adodsMasterIdOrdenSalida.value,adodsMasterIdCFDI.value); //Mar 10/16    PruebaCancelacion
               if adodsMasterIdPersonaReceptor.Value=-1 then   //Abr 18/16
                  ActualizaAsociadosACFDI(adodsMasterIdCFDI.value);//  Quita IDCFDIGeneral cuando es una factura de cliente -1 en cada una de las Notas asociadas Abr 18/16
                  //Actualizar Saldo Cliente
               //Ajuste
              if (adodsMasterIdCFDITipoDocumento.AsInteger=1) or (adodsMasterIdCFDITipoDocumento.AsInteger=3) then //CancelandoCFDI   Pruebas //Dic 2916
                 ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'- ');//Mar 7/16
               ShowMessage(adodsMasterUUID_TB.Value + #13+'Prueba de Cancelación ');
             end
             else
               ShowMessage(Respuesta);
      end
      else
        ShowMessage('Ocurrio un error Cancelando el CFDI . Error '+DAto);
    end; // No existe carpeta. nDS
  end; //else Cancelada por usuario
end;

function TDMFacturas.ActualizaAsociadosACFDI (idCFDIAct:Integer):Boolean; //Abr 18/26
var
  i:integer;
begin
  ADOQryAuxiliar.close;
  ADOQryAuxiliar.Sql.Clear;
                                                                    //Quede otra vez precargada?
  ADOQryAuxiliar.SQL.Add('Update CFDI SET IDCFDIFacturaGral =NULL , IDCFDIEstatus=1 Where IDCFDIFacturaGral='+ intTostr(idCFDIAct));
  i:=ADOQryAuxiliar.ExecSQL;
  Result:= i>0;
end;

procedure TDMFacturas.ActCrearPrefacturasExecute(Sender: TObject);   (*SOLO USAR PARA FACTURAS Y NOTAS DE VENTA *)
var auxIDOS:integer;
begin   //Dic 16/15 Mod. para que sólo cree la prefactura Actual (habria que mandar el id de la orden)
  inherited;
    //Verificar y generar prefacturas() Orden sigue como Revisada, pero cuando se genere la Factura se cambiará a autorizada
  //Verificar No existencia de Factura para esa Orden de Salida Dic 19/16
  if not ExisteFacturaPrevia(PIDordenSalida) then
  begin

    try
      adodsMaster.Open;
      ADODtStOrdenSalida.Parameters.ParamByName('IdOrdenSalida').Value:=PIDordenSalida;  //Enviar el parametro
      ADODtStOrdenSalida.Open;
      ADODtStOrdenSalidaItem.Open;

      ADODtStCFDIConceptos.Open;
      ADODtStCFDIImpuestos.Open;

    //  while not ADODtStOrdenSalida.eof do //Dic 16/15
    //  begin

        adodsMaster.Insert;
        //Desde Mar 28/16 Cambiar datos cuando no es una Factura sino una Nota de Venta
       //Puede ser que exista una Factura que  no se relacione con Orden de Salida, no se genera por aca
        adodsMaster.FieldByName('IDCFDITipoDocumento').AsInteger :=ADODtSTOrdenSalida.fieldByname('IdGeneraCFDITipoDoc').ASInteger;//Mod. Mar 28/16
        //Verificar el tipo de comprobante(ingreso egreso)
    // ya lo tenia    adodsMaster.FieldByName('TipoComp').asString:= adodsMaster.FieldByName('TipoComprobante').asString;
                                                     //Verificar si se coloca autopmatica por la relacion
    (*    if GeneraSinActualizar then        //jun
        begin
          auxidos:= ADODtStOrdenSalida.FieldByName('IdOrdenSalida').AsInteger;
          adodsMaster.FieldByName('IdOrdenSalida').AsInteger := 45698;   //Verificar consultas asociadas jun 14/17
        end
        else*)
          adodsMaster.FieldByName('IdOrdenSalida').AsInteger := ADODtStOrdenSalida.FieldByName('IdOrdenSalida').AsInteger;

        adodsMaster.FieldByName('Subtotal').AsFloat := ADODtStOrdenSalida.FieldByName('Subtotal').AsFloat;
        //Ajuste para no poner IVa en el presupuesto y en los Fletes //Ago 30/16
        if  (ADODtSTOrdenSalida.fieldByname('IdGeneraCFDITipoDoc').ASInteger=4)  //solo 4 Fletes no se generan por aca
                //and (not ADODtSTOrdenSalida.fieldByname('Acumula').ASBoolean)   //DEshabilitado.. aca nunca deberia acumular Jun 15/17 para evitarlo
                then
        begin
          adodsMaster.FieldByName('Total').AsFloat := ADODtStOrdenSalida.FieldByName('Subtotal').AsFloat;   //Cambiado
          adodsMaster.FieldByName('SaldoDocumento').AsFloat := ADODtStOrdenSalida.FieldByName('Subtotal').AsFloat; //Cambiado
          adodsMaster.FieldByName('TotalImpuestoTrasladado').AsFloat :=0;//Cambiado
        end
        else
        begin
          adodsMaster.FieldByName('Total').AsFloat := ADODtStOrdenSalida.FieldByName('Total').AsFloat;
          adodsMaster.FieldByName('SaldoDocumento').AsFloat := ADODtStOrdenSalida.FieldByName('Total').AsFloat; //Ene 14/16
          adodsMaster.FieldByName('TotalImpuestoTrasladado').AsFloat := ADODtStOrdenSalida.FieldByName('IVA').AsFloat;
        end;


    //    adodsMaster.FieldByName('IDPersonaEmisor').AsInteger:=SacarEmisor;  //ADODtStOrdenSalida.FieldByName('Total').AsFloat;

        adodsMaster.FieldByName('IDPersonaReceptor').AsInteger := ADODtStOrdenSalida.FieldByName('IDPersonaCliente').ASInteger;
        //Se cambia para lusar el metodo de la direccion  FieldByName('IDMetodoPagoCliente').IsNull
        if  not ADODtStOrdenSalida.FieldByName('IDMetododePago').IsNull then //ajustado Ago 4/16
        begin
          adodsMaster.FieldByName('IdMetodoPago').AsInteger := ADODtStOrdenSalida.FieldByName('IDMetododePago').ASInteger;  //ajustado Ago 4/16
          if not ADODtStOrdenSalida.FieldByName('NumCtaPagoCliente').IsNull then
             adodsMaster.FieldByName('NumCtaPago').AsString:= ADODtStOrdenSalida.FieldByName('NumCtaPagoCliente').asString;   //ajustado Ago 4/16
        end
        else
           adodsMaster.FieldByName('IdMetodoPago').AsInteger :=5; //Otros Jun 27/16   //Ene 29/16
        if  not ADODtStOrdenSalida.FieldByName('IDDomicilioCliente').Isnull then
          adodsMaster.FieldByName('IdClienteDomicilio').AsInteger := ADODtStOrdenSalida.FieldByName('IDDomicilioCliente').ASInteger;
                                                              //Verificar que tenga algo
    //    adodsMaster.FieldByName('').AsInteger := ADODtStOrdenSalida.FieldByName('').ASInteger;

       if (ADODtSTOrdenSalida.fieldByname('IdGeneraCFDITipoDoc').ASInteger=4)
                (*and not ADODtSTOrdenSalida.fieldByname('Acumula').ASBoolean *)  //deshabilitado jun 15/17 nunca dewbe tener Acumula
                then  //Abr 1/16 Es Presupuesto
       begin
         adodsMaster.FieldByName('IdCfdiEstatus').AsInteger := 5; //Presupuesto
       end;


        adodsMaster.Post;
        //Sólo Facturas  ver donde esta las notas de credito y cargo
        if  (ADODtSTOrdenSalida.fieldByname('IdGeneraCFDITipoDoc').ASInteger=1)  then  //Ago 30/16
        begin
          ADODtStCFDIImpuestos.Insert;
         // ADODtStCFDIImpuestos.FieldByName('').AsInteger := ADODtStOrdenSalida.FieldByName('').AsInteger; //Verificar asociacion CFDI
          ADODtStCFDIImpuestos.FieldByName('Importe').asFloat := ADODtStOrdenSalida.FieldByName('IVA').AsFloat;
          ADODtStCFDIImpuestos.Post;
        end;


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
        //Se movio aca por evitar error de edicion mar 29/16
        if adodsMaster.FieldByName('IDCFDITipoDocumento').AsInteger=4 then//Nota Venta  //Si esta debe existir el registro en Tipos
        begin
          //Poner SerieFolio
          ADODtStBuscaFolioSerie.Close;
          ADODtStBuscaFolioSerie.Parameters.ParamByName('IdCFDITipoDocumento').Value:= adodsMasterIdCFDITipoDocumento.AsInteger; //Asegurarse que tenga valor
          ADODtStBuscaFolioSerie.Open;
          if (not ADODtStBuscaFolioSerie.eof) and (ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger >0)then
          begin
            adodsMaster.Edit;
            adodsMasterFecha.AsDateTime:=now;
            adodsMasterFolio.AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger;
            adodsMasterSerie.AsString:= ADODtStBuscaFolioSerie.FieldByName('SerieDoc').AsString;
            adodsMaster.Post;

            ADODtStBuscaFolioSerie.Edit;
            ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger+1;
            ADODtStBuscaFolioSerie.Post;
          end
          else
          begin
            adodsMaster.Edit;
            adodsMasterFecha.AsDateTime:=now;
            adodsMasterFolio.AsInteger:= 1;
            adodsMasterSerie.AsString:= 'NV';
            adodsMaster.Post;

            ADODtStBuscaFolioSerie.Edit;
            ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger:= 2;
            ADODtStBuscaFolioSerie.FieldByName('SerieDoc').AsString:='NV';
            ADODtStBuscaFolioSerie.Post;
          end;
          if (adodsMaster.FieldByName('IDCFDIEstatus').AsInteger=5) and (not GeneraSinActualizar) then //Abr 1/16   //Presupuesto
          begin
            ActualizaSaldoCliente(adodsMaster.FieldByName('IDCFDI').AsInteger,adodsMaster.FieldByName('IDPersonaReceptor').AsInteger,                //Creando Remision
                                  adodsMaster.FieldByName('IdClienteDomicilio').AsInteger, adodsMaster.FieldByName('SaldoDocumento').AsFloat,'+');

            ActualizaInventario(adodsMaster.FieldByName('IDOrdenSalida').AsInteger,adodsMaster.FieldByName('IDCFDI').AsInteger);     //Creando Remision
          end;
          // deshabilitado May 23/16 LlenaDatosEnvio; //Para que se haga siempre que sea 4 (Nota de Venta o Presupuesto) se movio Abr 8/16
          //Se imprime afuera.
        end;
        //Hasta aca Mar 28/16
        FCreadaAntes:=False;
        fCreoCFDI:=True;
     except

       fCreoCFDI:=False;
      // raise;
     end;
  end //DEl if Existe CFDI  Dic 19/16
  else
  begin
    fCreoCFDI:=True;
    FCreadaAntes:=True;
  end;

end;

function TDMFacturas.ExisteFacturaPrevia(idOrdensalida:Integer) :Boolean;
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from CFDI where IDOrdenSalida ='+intToSTR(idOrdensalida));
  ADOQryAuxiliar.open;
  Result:= not ADOQryAuxiliar.eof;

end;


procedure TDMFacturas.ActDocACotizaExecute(Sender: TObject);
var
   IdDoc:Integer;
   nombreArchi:TFileName;
   ConsultaBase, Adicional:String;  //Abr 25/17 agilizar consulta
begin
  inherited;
  ConsultaBase:=' SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase,Descripcion,'
               +' NombreArchivo, IdArchivo, Archivo FROM Documentos ';
//  Select IdDocumentoGuia from InformacionEntregas where IdinfoEntrega=(Select IdInfoEntrega from InformacionEntregasDetalles where IdOrdenSalida = 8100);
  //Vienen abierto  i debe tener algo
  ShowProgress(10,100.1,'Obteniendo archivo 10 %');

  IdDoc:= ADODtStVerificaDocs.FieldByName('IdDocumento').AsInteger;
  ShowProgress(20,100.1,'Obteniendo archivo 20 %');
  Adicional :=' where IdDocumento='+intToSTR(IDDoc);   //Abr 25/17 agilizar consulta

  adoDSDocumento.Close; //Para poderlo poner  //Abr 25/17
  adoDSDocumento.CommandText:= ConsultaBase+Adicional;    //Abr 25/17 agilizar consulta
//  adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
 // adoDSDocumento.filtered:=True;
  //Cambio consulta    //Abr 25/17 agilizar consulta

  adoDSDocumento.open;
  ShowProgress(50,100.1,'Generando archivo 50 %');
  nombreArchi:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);
  ShowProgress(80,100.1,'Generando archivo 80 %');
  readFile( nombreArchi); //saca Archivo
  ShowProgress(100,100.1,'Abriendo archivo 100 %');

  if fileExists(nombreArchi) then
     if ShellExecute(application.Handle, 'open', PChar(nombreArchi), nil, nil, SW_SHOWNORMAL)<=32 then
      showMessage('No es posible abrir el archivo asociado..');
  ShowProgress(100,100);

end;

procedure TDMFacturas.ActEnvioCorreoFactExecute(Sender: TObject);
var
  DmEnvioMail:TDMEnvioMails;
  ArcXml,ArcPDF, ArcGuia: TFileName;
  IdDoc:Integer;
  ADatosEmisor:TStringList;
  CorreoRec:String;
  ArchivosLista:TStringList;
  TextoCorreo:String;//Jun 2/16

begin
  inherited;
  ADatosEmisor:=TStringList.Create;
  ArchivosLista:=TStringList.Create;//Feb 22/16
  adodsMaster.Open; //debe estar abierto
  //Jun 2/16 Pone texto Correcto
  if (adodsMasterIdCFDITipoDocumento.asinteger=1) and (adodsMasteridOrdenSalida.asstring<>'') then
    TextoCorreo:='Envio Factura relacionada al Pedido No.'+ adodsMasteridOrdenSalida.asstring
  else
    TextoCorreo:='Envio CFDI correspondiente a '+ adodsMasterTipoDocumento.AsString +' No.'+adodsMasterSerie.AsString+' - '+adodsMasterFolio.AsString;

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
    if  DMEnvioMails.SendEmail(CorreoRec+';'+ADatosEmisor.Values['emailNoti'],'Envio CFDI  '+adodsMasterSerie.asstring+'-'+adodsMasterFolio.asstring ,TextoCorreo,
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

procedure TDMFacturas.ActEnvioCorreoNotasVentaExecute(Sender: TObject);
var         //Abr 6/16
  nombreNV:TFileName;
  DmEnvioMail:TDMEnvioMails;
  ADatosEmisor:TStringList;
  CorreoRec:String;
  ArchivosLista:TStringList;
  TextoCorreo:String;
begin   //Envio Correo de Notas venta y Presupuestos
  inherited;
   //Jun 2/16 Pone texto Correcto
  if (adodsMasterIdCFDITipoDocumento.asinteger=4) and (adodsMasteridOrdenSalida.asstring<>'') then
    TextoCorreo:='Envio Nota de Venta relacionada al Pedido No.'+ adodsMasteridOrdenSalida.asstring
  else
    TextoCorreo:='Envio Nota de Venta correspondiente a '+ adodsMasterTipoDocumento.AsString +' No.'+adodsMasterSerie.AsString+' - '+adodsMasterFolio.AsString;
  if Application.MessageBox('¿Desea enviar correo al Cliente?','Confirmación',MB_YESNO)=IdYes  then
  begin
    nombreNV:=ExtractFilepath(Application.Exename)+'Adjcorreo\'+ adodsMasterRFC.AsString+'_'+adodsMasterSerie.AsString+adodsMasterFolio.AsString+'.pdf';
    ADatosEmisor:=TStringList.Create;
    ArchivosLista:=TStringList.Create;
    if FileExists(nombreNV) then
    begin
      ArchivosLista.Add(nombreNV);
      ShowProgress(30,100.1,'Obteniendo Datos de Receptor ' + IntToStr(30) + '%');
      if SacaCorreoEmisor(ADatosEmisor) then
      begin //Sacar datos Correo Emisor           //SAcar datos Correo Receptor
       if not SacaCorreoReceptor(adodsMasterIdPersonaReceptor.AsInteger,CorreoRec) then
         InputQuery('Solicitud Correo','No tiene correo registrado para ese Cliente. Indique un correo hacer el envio', CorreoRec);
       if CorreoRec<>'' then
       begin
         DMEnvioMail:=TDMEnvioMails.Create(self);
         ShowProgress(50,100.1,'Enviando Correo... ' + IntToStr(50) + '%');
         if  DMEnvioMails.SendEmail(CorreoRec+';'+ADatosEmisor.Values['emailNoti'],'Envio Documento '+adodsMasterSerie.asstring+'-'+adodsMasterFolio.asstring ,TextoCorreo,
             '','','', ArchivosLista, ADatosEmisor.Values['host'], ADatosEmisor.Values['usuario'], ADatosEmisor.Values['contrasenia'],
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
         ShowProgress(100,100.1,'No se tiene datos  de Cliente para envio de Correo ... ' + IntToStr(100) + '%');
         ShowMessage('Cancelación de envio por falta de datos de cliente');
       end;
      end
      else
      begin
        ShowProgress(100,100.1,'Error. No existe configuración del Correo Emisor ... ' + IntToStr(100) + '%');
        ShowMessage('Cancelación de envio por falta de datos del correo Emisor');
      end;
      ShowProgress(100,100);
    end
    else
      //No existe el archivo
       ShowMessage('No se encontro el archivo pare enviar');

    ADatosEmisor.Free; //Feb 22/16
    ArchivosLista.Free;
  end;
end;

procedure TDMFacturas.ActImpNotasVentaExecute(Sender: TObject);
var
   nombreNV:TFileName;
begin   //Impresiones de Notas venta y Presupuestos
  inherited;
  if Directoryexists(ExtractFilePath(application.ExeName)+'Adjcorreo\') then
     BorraSoloArchivos(ExtractFilePath(application.ExeName)+'Adjcorreo\')
  else
    ForceDirectories(ExtractFilePath(application.ExeName)+'Adjcorreo\');
  nombreNV:=ExtractFilepath(Application.Exename)+'Adjcorreo\'+ adodsMasterRFC.AsString+'_'+adodsMasterSerie.AsString+adodsMasterFolio.AsString+'.pdf';
  ImprimeNotaVPDF(false,nombreNV);  //Era true pero no lo crea como archivo
  ShellExecute(application.Handle, 'open', PChar(nombreNV), nil, nil, SW_SHOWNORMAL);  //Para que se muestre
  ActEnvioCorreoNotasVenta.Execute; // Ahi se pregunta si se quiere enviar  o no//Abr 6/16
end;

procedure TDMFacturas.ActImprimeFacturaExecute(Sender: TObject);
var  ArcPDF: TFileName;
  IdDoc:Integer;
begin
  inherited;
  //Saca Factura
  IdDoc:=adodsMasterIdDocumentoPDF.AsInteger;
  ArcPDF:=GetFileName(IdDoc);
  if FileExists(ArcPDF) then
    if ShellExecute(application.Handle, 'open', PChar(ArcPDF), nil, nil, SW_SHOWNORMAL)<=32 then
      showMessage('No es posible abrir el PDF');
end;

procedure TDMFacturas.ActMostrarGuiaExecute(Sender: TObject);
var
   IdDoc:Integer;
   nombreArchi:TFileName;
   ConsultaBase, Adicional:String;  //Abr 25/17 agilizar consulta
begin
  inherited;
  ConsultaBase:=' SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase,Descripcion,'
               +' NombreArchivo, IdArchivo, Archivo FROM Documentos '; //Abr 25/17 agilizar consulta

//  Select IdDocumentoGuia from InformacionEntregas where IdinfoEntrega=(Select IdInfoEntrega from InformacionEntregasDetalles where IdOrdenSalida = 8100)
  //Vienen abierto  i debe tener algo
  ShowProgress(10,100.1,'Obteniendo Guía 10 %');
  IdDoc:= ADODtStVerificaGuia.FieldByName('IdDocumentoGuia').AsInteger;
  ShowProgress(20,100.1,'Obteniendo Guía 20 %');
  //Pendiente  CAmbiar consulta para que no se tarde Abr 25/17
  Adicional :=' where IdDocumento='+intToSTR(IDDoc);   //Abr 25/17 agilizar consulta

  adoDSDocumento.Close; //Para poderlo poner  //Abr 25/17
  adoDSDocumento.CommandText:= ConsultaBase+Adicional;    //Abr 25/17 agilizar consulta
 // adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
//  adoDSDocumento.filtered:=True;
  adoDSDocumento.open;
  ShowProgress(50,100.1,'Generando Guía 50 %');
  nombreArchi:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);
  ShowProgress(80,100.1,'Generando Guía 80 %');
  readFile( nombreArchi); //saca Archivo
 ShowProgress(100,100.1,'Mostrando Guía 100 %');

  if fileExists(nombreArchi) then
     if ShellExecute(application.Handle, 'open', PChar(nombreArchi), nil, nil, SW_SHOWNORMAL)<=32 then
      showMessage('No es posible abrir el archivo asociado..');

  ShowProgress(100,100);



end;

procedure TDMFacturas.ActPreFacturaNotaVentaExecute(Sender: TObject);
var               //FActura diaria .. (No usada por ellos)
  SumaST, SumaIVA, SumaTotal, SumaDescto:Double;
  IdNvo:Integer;
  ListaOrdenSalidas: String;
begin      //Mar 31/16
  inherited;
  ListaOrdenSalidas:='|';
  ADODSNotasVenta.Close;
  ADODtStConceptosNotasVenta.Close;
  ADODSNotasVenta.CommandText:= TAdoDataSet(DSMaster.DataSet).CommandText;                                          //Ojo cambiar la consulta por la del master
  ADODSNotasVenta.open; //Tiene listo lo de hoy y no FActurado
  ADODtStConceptosNotasVenta.open;
  adodsMaster.Close;
  adodsMaster.Filtered:=False;
  adodsMaster.open;
  if not ADODSNotasVenta.eof then
  begin
    adodsMaster.Insert;
    //DAtos Factura VentaDiaria
    adodsMasterIdPersonaReceptor.AsInteger:=-1;
    ADODtStConsultaDirecciones.Close;   //Este esta filtrado por el receptor Abr 14/16
 //   ADODtStConsultaDirecciones.Filter:='IDPersona=-1';
 //   ADODtStConsultaDirecciones.Filtered:=True;
    ADODtStConsultaDirecciones.Open;     //para que ponga el domicilio por default.
    if not ADODtStConsultaDirecciones.Eof then
       adodsMasterIdClienteDomicilio.AsInteger:= ADODtStConsultaDirecciones.FieldByName('IDPersonaDomicilio').AsInteger;

    adodsMasterIdCFDITipoDocumento.AsInteger:=1; //Siempre esta sera Factura
    adodsMasterTipoComp.AsString:=  adodsMasterTipoComprobante.AsString; //??

    adodsMaster.post;
    IDNvo:= adodsMaster.FieldByName('IDCFDI').AsInteger;
  end;
  SumaST:=0;;
  SumaIVA:=0;
  SumaTotal:=0;
  SumaDescto:=0;
  while not ADODSNotasVenta.eof do
  begin
    ListaOrdenSalidas:=ListaOrdenSalidas+ADODSNotasVenta.FieldByName('IDOrdenSalida').AsString +'|';
    SumaST:=SumaST +ADODSNotasVenta.FieldByName('Subtotal').AsFloat;
    SumaIVA:= SumaIVA+ADODSNotasVenta.FieldByName('TotalImpuestoTrasladado').AsFloat;
    SumaTotal:= SumaTotal+ADODSNotasVenta.FieldByName('Total').AsFloat;
    SumaDescto:= SumaDescto +ADODSNotasVenta.FieldByName('Descto').AsFloat;
    while not ADODtStConceptosNotasVenta.eof do
    begin
      ADODtStCFDIConceptos.Insert;
                                                                        //Se dejo por si hay que actualizar inventario y Kardex desde aca.
      ADODtStCFDIConceptos.FieldByName('IDOrdenSalidaItem').AsInteger := ADODtStConceptosNotasVenta.FieldByName('IDOrdenSalidaItem').AsInteger;
      ADODtStCFDIConceptos.FieldByName('IDProducto').AsInteger := ADODtStConceptosNotasVenta.FieldByName('IDProducto').AsInteger;
      ADODtStCFDIConceptos.FieldByName('Cantidad').AsFloat := ADODtStConceptosNotasVenta.FieldByName('Cantidad').AsFloat;
      ADODtStCFDIConceptos.FieldByName('Descripcion').asString := ADODtStConceptosNotasVenta.FieldByName('Descripcion').asString;
      ADODtStCFDIConceptos.FieldByName('NoIdentifica').ASString := ADODtStConceptosNotasVenta.FieldByName('NoIdentifica').ASString;
      ADODtStCFDIConceptos.FieldByName('IdUnidadMedida').ASInteger := ADODtStConceptosNotasVenta.FieldByName('IDUnidadMedida').AsInteger;
      ADODtStCFDIConceptos.FieldByName('Unidad').ASString := ADODtStConceptosNotasVenta.FieldByName('Unidad').ASString;
      ADODtStCFDIConceptos.FieldByName('ValorUnitario').ASFloat := ADODtStConceptosNotasVenta.FieldByName('ValorUnitario').ASFloat;
      ADODtStCFDIConceptos.FieldByName('Importe').ASFloat := ADODtStConceptosNotasVenta.FieldByName('Importe').ASFloat;
      ADODtStCFDIConceptos.Post;



      ADODtStConceptosNotasVenta.Next;
    end;

    ADODSNotasVenta.Edit;
    ADODSNotasVenta.FieldByName('IDCFDIEstatus').ASInteger:=4; //Acumulada
    ADODSNotasVenta.FieldByName('IDCFDIFacturaGral').ASInteger:=IdNvo;
    ADODSNotasVenta.Post;
    ADODSNotasVenta.Next;
  end;
  ADODSMaster.Edit;
  ADoDSMaster.FieldByName('Observaciones').AsString:='NVOS'+ListaOrdenSalidas;
  ADoDSMaster.Post;
   //Se supone que uno a uno de los conceoptos va actualizando el Total y los impuestos. //Mar 31/16
  ActProcesaFactura.Execute; // ??
   //Verificar.
  adodsMaster.Filtered:=True;
  adodsMaster.Refresh;
  ADODSNotasVenta.Close;
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
  Anio, Mes, Dia : Word;                     //Pa prueba dic 20/16
  RutaBase, SubCarpeta, RutaFactura, RutaPDF, RutaIMG : String;
  XMLpdf : TdmodXMLtoPDF;
  Max, Avance, i ,
  IDPDF, IDXML, IDCBB: integer; //Sep 27/16 Para hacer proceso en dos partes
  Respuesta:String; //Sep 27/16

  FechaAux:TDAteTime;//Porque si se intento generar le mande la misma fecha original
  TipoDoc:String; //Mar 31/16 para enviar como parametro
  IdCFDIAuxiliar, idOrdenSalAux:integer; //Oct 27/16 para verificar que este en el mismo
begin
  inherited;
  //Habilitado Dic 21/15
  ShowProgress(10,100.1,'Preparando Datos para Generar CFDI ' + IntToStr(10) + '%');  //Jun 2/16
  XMLpdf := TdmodXMLtoPDF.Create(Self);
  XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIIntervaNvo.rtm'; //Ajustado   sep 1/16
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
    begin //Dic 26/16
      if EsProduccion and (FechaAux-adodsMasterFecha.AsDateTime >3) then
      begin
        adodsMaster.Edit;
        adodsMasterFecha.AsDateTime:=FechaAux;
        adodsMaster.Post
      end
      else //Para cuando sea pruebas toma lo que guarde //Dic 26/16
        FechaAux:=adodsMasterFecha.AsDateTime; //Para que use esa con los datos que tiene
    end;
   // ScreenCursorProc(-11);  //Deshabilitado Dic 29/15
    DecodeDate(Now, Anio, Mes, Dia);
//    RutaBase :=SacaRutaBase;
    ShowProgress(20,100.1,'Preparando Datos para Generar CFDI ' + IntToStr(20) + '%');  //Jun 2/16
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

    TipoDoc:=adodsMaster.FieldByName('TipoDocumento').asString; //Mar 31/16
    ShowProgress(30,100.1,'Extrayendo datos de Emisor ' + IntToStr(30) + '%');  //Jun 2/16
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

        ShowProgress(40,100.1,'Extrayendo datos de Receptor ' + IntToStr(40) + '%');  //Jun 2/16
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
                                                          //Se cambio mar 31/16
        DocumentoComprobanteFiscal.TipoCompTexto := adodsMasterTipoComprobante.AsString; //verificar que venga

        DocumentoComprobanteFiscal.FechaGeneracion := FechaAux; //Para evitar  dobles generaciones

        DocumentoComprobanteFiscal.MetodoDePago := adodsMasterMetPagoClaveSAT.AsString; //Cambiardo por el codigo SAT Jun 27/16  adodsMasterMetodoPago.AsString;
        if adodsMasterNumCtaPago.AsString <>''then
          DocumentoComprobanteFiscal.NumeroDeCuenta:= adodsMasterNumCtaPago.AsString;
        // Asignamos el lugar de expedición (requerido en  CFD >= 2.2)
        DocumentoComprobanteFiscal.LugarDeExpedicion := ADODtStPersonaEmisorMunicipio.AsString+ ', ' + ADODtStPersonaEmisorEstado.AsString;
        //adodsEmisorPoblacion.AsString ;

    //Llevaba ceros..
        DocumentoComprobanteFiscal.Moneda:= adodsMasterClaveMoneda.AsString;//Jun 27/16
        DocumentoComprobanteFiscal.TipoCambio:= (adodsMasterTipoCambio.AsFloat);//Jun 27/16

        // Definimos todos los conceptos que incluyo la factura
        ShowProgress(50,100.1,'Extrayendo datos de conceptos ' + IntToStr(50) + '%');  //Jun 2/16

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
        ADODtStCFDIImpuestos.Close;
        ADODtStCFDIImpuestos.Open;  //Verificar que este ubicado

       // ADODtStCFDIImpuestos.First;
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
          ShowProgress(60,100.1,'Timbrando  CFDI .... ' + IntToStr(60) + '%');  //Jun 2/16
          //Prever si no hay timbres de prueba  hacer un mecanismo para que no los gaste //Dic 20/16
          if not ESProduccion then  //Prueba
          begin

           if CrearArchivos_TimbrePrueba(RutaFactura,TimbreCFDI,adodsMasterRFC.asString+'_'+adodsMasterSerie.asstring + adodsMasterFolio.asString + feXML)then
           begin
             RutaPDF:=ChangeFileExt(RutaFactura, fePDF);
             RutaIMG:= ChangeFileExt(RutaFactura, fePNG);
              //Copiado ddel original
             adodsMaster.Edit;                     //Prueba
             adodsMasterUUID_TB.AsString:=  TimbreCFDI.UUID;
             adodsMasterSelloCFD_TB.AsString:=TimbreCFDI.SelloEmisor;
             adodsMasterSelloSAT_TB.AsString:=TimbreCFDI.SelloSAT;
             adodsMasterSello.AsString:=TimbreCFDI.SelloEmisor;
             adodsMasterCertificadoSAT_TB.AsString:=   TimbreCFDI.NoCertificadoSAT;
             adodsMasterFechaTimbrado_TB.AsDateTime:=StrToDateTime(TimbreCFDI.FechaTimbre); // Dic 20/16 no viene con ese formato por que es prueba  ConvierteFechaT_DT(
             adodsMasterCadenaOriginal.AsString:= TimbreCFDI.CadenaTimbre;
             adodsMasterIdCFDIEstatus.AsInteger:=2;

             IdCFDIAuxiliar:= adodsMasterIdCFDI.AsInteger;
             idOrdenSalAux:= adodsMasterIdOrdenSalida.AsInteger;

             adodsMaster.Post; //Se puso esto primero  y luego se asocia el resto

             adodsMaster.Edit;                                                        //Prueba
             IDXML := CargaXMLPDFaFS(RutaFactura,'Factura Prueba'+String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));

             IDPDF:=  CargaXMLPDFaFS(RutaPDF, 'PDF Prueba'+ String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
             IDCBB:=  CargaXMLPDFaFS(RutaIMG,'PNG Prueba'+ String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));//Ene 5/2016
             Respuesta:='';
             if VerificaArchivo(IDXML,ExtractFileName(RutaFactura), Respuesta) then     //REspuesta debe concatenar las respuestas si no va vacia //Sep 27/16
                adodsMasterIdDocumentoXML.Value :=IDXML ;
             if VerificaArchivo(IDPDF,ExtractFileName(RutaPDF), Respuesta) then
                adodsMasterIdDocumentoPDF.Value :=IDPDF;
             if  VerificaArchivo(IDCBB, ExtractFileName(RutaIMG), Respuesta) then
                 adodsMasterIdDocumentoCBB.Value := IDCBB;

             adodsMaster.Post;
             if respuesta<>'' then
                 frmmain.cxMmErrorProceso.Lines.Add(Respuesta);

              ShowProgress(80,100.1,'Actualizando Datos Cliente Prueba' + IntToStr(80) + '%');  //Jun 2/16

              if IdCFDIAuxiliar <> adodsMasterIdCFDI.value then    //oct 26/16
              begin            // Respuesta+
                 Respuesta:='R'+intToStr(IdCFDIAuxiliar)+' CFDI C'+ intTostr(adodsMasterIdCFDI.value);
                 frmmain.cxMmErrorProceso.Lines.Add(Respuesta);
              end
              //Actualiza Saldos  Mar 1/16
              else  //TEmporel mientras se identifica  el problema
                if (adodsMasterIdCFDITipoDocumento.AsInteger<>2)  then  //Dic21/16 NotaCrédito No hace afectacion a cliente ya que se hace a través del pago generado por ella
                  ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'+ ');  //Mar 7/16

              //Actualiza inventario
                                                               // Jul 27/16 tipo 4 no se timbran , sólo las 1  or (adodsMasterIdCFDITipoDocumento.AsInteger=4)
              if (adodsMasterIdCFDITipoDocumento.AsInteger=1)  then //abr 15/16 Solo Factura o Notas Ventas (No Notas Credito ni Cargo)
              begin
                if adodsMasterIdOrdenSalida.Value <> idOrdenSalAux then // Oct 26/16
                begin         // Respuesta+
                   Respuesta:='2 '+'RCFDI '+intToStr(IdCFDIAuxiliar)+' CFDI C'+ intTostr(adodsMasterIdCFDI.value)+
                           ' OSR'+intToStr(idOrdenSalAux)+' OS C'+ intTostr(adodsMasterIdOrdenSalida.Value);
                   frmmain.cxMmErrorProceso.Lines.Add(Respuesta);
                end
                else
                  ActualizaInventario(adodsMasterIdOrdenSalida.Value,adodsMasterIdCFDI.value);  //Feb 8/16
              end;
              // Oct 26/16

            //  Showmessage('CFDI Generado');//Dic 29/15

              //Jun 2/16 Crear Pago si es NotaCredito
              if  (adodsMasterIdCFDITipoDocumento.AsInteger=2)  then  //Nota credito
              begin
                CrearPagoNota(adodsMasterSerie.Value, adodsMasterFolio.Value,adodsMasterIdCFDI.value,
                adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.Value,
                0,adodsMasterTotal.Value);
                //Tipo nota de crédito Jun 27/16
              end;

              ShowProgress(100,100.1,'Procesando PDF ' + IntToStr(100) + '%');  //Jun 2/16
              ShowProgress(100,100);

              if Respuesta <>'' then //Por los archivos Sep 27/16
                 showMessage('Advertencias de asociacion archivos...'+ Respuesta) ;
              showMessage('Proceso Alternativo de Facturación de Prueba Completo '+#13
                           +'Documento Serie:'+adodsMasterSerie.Value+' Folio:'+ intToStr(adodsMasterFolio.Value));

            end;

          end
          else
          begin
            if GenerarCFDI(RutaFactura, DocumentoComprobanteFiscal, Certificado, TimbreCFDI,EsProduccion) then
            begin
              XMLpdf.FileIMG := RutaFactura + fePNG; //Dic 21/15
              XMLpdf.CadenaOriginalTimbre:= TimbreCFDI.CadenaTimbre; //Dic 28/15
              RutaPDF := XMLpdf.GeneratePDFFile(RutaFactura,TipoDoc,'',adodsMasterIdentificadorCte.AsString); //Dic 21/15  //verificar si sirve ese Formato
              //Actualizar datos de Timbre en CFDI         //Mar 31/16              //Ago 26/16
              adodsMaster.Edit;
              adodsMasterUUID_TB.AsString:=  TimbreCFDI.UUID;
              adodsMasterSelloCFD_TB.AsString:=TimbreCFDI.SelloEmisor;// 26 ago se regreso como estaba Cadenatimbre; XImpresion // ajustado ago 24/16 era SelloEmisor;
              adodsMasterSelloSAT_TB.AsString:=TimbreCFDI.SelloSAT;
              adodsMasterSello.AsString:=TimbreCFDI.SelloEmisor; //Verificar
              adodsMasterCertificadoSAT_TB.AsString:=   TimbreCFDI.NoCertificadoSAT;
              adodsMasterFechaTimbrado_TB.AsDateTime:=ConvierteFechaT_DT(TimbreCFDI.FechaTimbre);
              adodsMasterCadenaOriginal.AsString:= TimbreCFDI.CadenaTimbre;// 26 ago se regreso como estaba//Cadenaoriginal;//CadenaTimbre ;Ago 24/16  // Dic 23/15
             // adodsMaster
              adodsMasterIdCFDIEstatus.AsInteger:=2; //Dic 29/15
                //Sep 27/16  Ajuste desde
              IdCFDIAuxiliar:= adodsMasterIdCFDI.AsInteger;// Oct 27/16
              idOrdenSalAux:= adodsMasterIdOrdenSalida.AsInteger; // Oct 27/16

              adodsMaster.Post; //Se puso esto primero  y luego se asocia el resto

              adodsMaster.Edit;
              IDXML := CargaXMLPDFaFS(RutaFactura,TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));

              IDPDF:=  CargaXMLPDFaFS(RutaPDF, TipoDoc+ String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
              IDCBB:=  CargaXMLPDFaFS(XMLpdf.FileIMG,'PNG '+TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));//Ene 5/2016
              Respuesta:='';
              if VerificaArchivo(IDXML,ExtractFileName(RutaFactura), Respuesta) then     //REspuesta debe concatenar las respuestas si no va vacia //Sep 27/16
                adodsMasterIdDocumentoXML.Value :=IDXML ;
              if VerificaArchivo(IDPDF,ExtractFileName(RutaPDF), Respuesta) then
                adodsMasterIdDocumentoPDF.Value :=IDPDF;
              if  VerificaArchivo(IDCBB, ExtractFileName(XMLpdf.FileIMG), Respuesta) then
                 adodsMasterIdDocumentoCBB.Value := IDCBB;

              if respuesta<>'' then
                 frmmain.cxMmErrorProceso.Lines.Add(Respuesta);
              // sep 27/16

             (* Original                                                      //   'Factura ' //Cambio Mar 31/16
              adodsMasterIdDocumentoXML.Value := CargaXMLPDFaFS(RutaFactura,TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));
              adodsMasterIdDocumentoPDF.Value := CargaXMLPDFaFS(RutaPDF, TipoDoc+ String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));

              adodsMasterIdDocumentoCBB.Value := CargaXMLPDFaFS(XMLpdf.FileIMG,'PNG '+TipoDoc + String(DocumentoComprobanteFiscal.Serie) + IntToStr(DocumentoComprobanteFiscal.Folio));//Ene 5/2016
              *)
              adodsMaster.Post;

              ShowProgress(80,100.1,'Actualizando Datos Cliente ' + IntToStr(80) + '%');  //Jun 2/16

              if IdCFDIAuxiliar <> adodsMasterIdCFDI.value then    //oct 26/16
              begin           //  Respuesta+
                 Respuesta:='R'+intToStr(IdCFDIAuxiliar)+' CFDI C'+ intTostr(adodsMasterIdCFDI.value);
                 frmmain.cxMmErrorProceso.Lines.Add(Respuesta);
              end
              //Actualiza Saldos  Mar 1/16
              else  //TEmporel mientras se identifica  el problema
                if (adodsMasterIdCFDITipoDocumento.AsInteger<>2)  then  //Dic21/16 NotaCrédito No hace afectacion a cliente ya que se hace a través del pago generado por ella
                  ActualizaSaldoCliente(adodsMasterIdCFDI.value,adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.value, adodsMasterTotal.Value,'+ '); //Mar 7/16

              //Actualiza inventario
                                                               // Jul 27/16 tipo 4 no se timbran , sólo las 1  or (adodsMasterIdCFDITipoDocumento.AsInteger=4)
              if (adodsMasterIdCFDITipoDocumento.AsInteger=1)  then //abr 15/16 Solo Factura o Notas Ventas (No Notas Credito ni Cargo)
              begin
                if adodsMasterIdOrdenSalida.Value <> idOrdenSalAux then // Oct 26/16
                begin         // Respuesta+
                   Respuesta:='2 '+'RCFDI '+intToStr(IdCFDIAuxiliar)+' CFDI C'+ intTostr(adodsMasterIdCFDI.value)+
                           ' OSR'+intToStr(idOrdenSalAux)+' OS C'+ intTostr(adodsMasterIdOrdenSalida.Value);
                            frmmain.cxMmErrorProceso.Lines.Add(Respuesta);
                end
                else
                  ActualizaInventario(adodsMasterIdOrdenSalida.Value,adodsMasterIdCFDI.value);  //Feb 8/16
              end;
              // Oct 26/16

            //  Showmessage('CFDI Generado');//Dic 29/15

              //Jun 2/16 Crear Pago si es NotaCredito
              if  (adodsMasterIdCFDITipoDocumento.AsInteger=2)  then  //Nota credito
              begin
                CrearPagoNota(adodsMasterSerie.Value, adodsMasterFolio.Value,adodsMasterIdCFDI.value,
                adodsMasterIdPersonaReceptor.Value,adodsMasterIdClienteDomicilio.Value,
                0,adodsMasterTotal.Value);
                //Tipo nota de crédito Jun 27/16
              end;

              ShowProgress(100,100.1,'Procesando PDF ' + IntToStr(100) + '%');  //Jun 2/16
              ShowProgress(100,100);

              if Respuesta <>'' then //Por los archivos Sep 27/16
                 showMessage('Advertencias de asociacion archivos...'+ Respuesta);

              if FileExists(RutaPDF) then
                ShellExecute(application.Handle, 'open', PChar(RutaPDF), nil, nil, SW_SHOWNORMAL);     //VErificar el FRM Edit
              ActEnvioCorreoFact.Execute; //verificar  Abr5/16

              //ShowMessage('Envio a Cliente por Correo Electronico en proceso');
            end
            else
            begin
              Showmessage('Error Generando CFDI '+TimbreCFDI.MensajeError);//Dic 29/15
              ShowProgress(100,100.1,'Proceso Terminado con errores ' + IntToStr(100) + '%');  //Jun 16/16
              ShowProgress(100,100); //Jun 16/16
            end
          end; //DEl else que ahora será  produccion
        end //DEl directorio
        else
          application.MessageBox('No se pudo Crear el directorio. Verifique permisos', 'Error', MB_Ok);
        // Verificar si
        //DEshabilitado May 23/16 LlenaDatosEnvio; //Ene 27/16  Se hace aun y cuando no se haya alcanzado a Timbrar la Factura.

      finally

    end ;
  end
  else
    Showmessage('CFDI generado con anterioridad');

end;

//Para Pruebas Alternativo Dic 20/16

function TDMFacturas.CrearArchivos_TimbrePrueba( var Ruta : String; var TimbradoCFDI: TTimbreCFDI; Adicional :String):Boolean;
const
    XMLF='XMLPruebaST.xml';
    PDFF='PDFPruebaST.pdf';
    PNGF='PNGPruebaST.png';
var
  rutaAux, BAse:String;
  XRuta:String;
begin

  Base:=ExtractFilePath(application.exename);
  Result:=True;
  Ruta := Ruta + adicional;
  XRuta:=Base+XMLF;
//  if FileExists(XRuta) then
 //    ShowMessage('XML existe');

   XRuta:=Base+PDFF;
 // if FileExists(XRuta) then
 //    ShowMessage('pdf existe');

  XRuta:=Base+PNGF;
 // if FileExists(XRuta) then
   //  ShowMessage('png existe');


  if FileExists(Base+XMLF) and FileExists(Base+PDFF) and FileExists(Base+PNGF) then
  begin
    CopyFile(pwidechar(Base+XMLF),pwidechar(Ruta),false);
    RutaAux:= Ruta ;

    RutaAux:= ChangeFileExt(Ruta, fePDF);
    CopyFile(pwidechar(Base+PDFF),pwidechar(RutaAux), False);

    RutaAux:= ChangeFileExt(Ruta, fePNG);
    CopyFile(pwidechar(Base+PNGF),pwidechar(RutaAux),false);

    TimbradoCFDI.Resultado := 'PRUEBA';      // constante de descripcion del error
    TimbradoCFDI.MensajeError:= '';      // descripcion del error
    TimbradoCFDI.CertificadoEmisor:= '111111111';      // No certificado del emisor
    TimbradoCFDI.SelloEmisor:='fffffffffffffffffff';      // Sello del emisor
    TimbradoCFDI.CadenaOriginal:= '||prueba|||';      // Cadena Original del documento
    TimbradoCFDI.NoCertificadoSAT:='aaaaaaaaaaaaaaaaaaaaaa';      // No. certificado del SAT
    TimbradoCFDI.SelloSAT:= '==aaaaaaaaaa=';      // Sello del SAT
    TimbradoCFDI.CadenaTimbre:= 'cadenatimbre';      // Cadena del timbre
    TimbradoCFDI.UUID:= '74305F11-FFFF-FFFF-FFFF-BD200698C5EA';      // UUID
    TimbradoCFDI.FechaTimbre:= dateTimeToStr(now);     // fecha del timbrado
    TimbradoCFDI.InicioVigenciaCertificado:= dateTimeToStr(date-10);     // inicio de vigencia del certificado
    TimbradoCFDI.FinVigenciaCertificado:= dateTimeToStr(date+10);     // fin de vigencia del certificado
    TimbradoCFDI.VirtualPACID:= 'Prueba';     // VPID
    TimbradoCFDI.TimbresRestantes:= '1';     // timbres restantes
    TimbradoCFDI.VersionLibreria:= '00';     // version de la libreria
    TimbradoCFDI.NombreArchivo:= Ruta;
  end
  else
    REsult:=FAlse;

end;


function TDMFacturas.VerificaArchivo(var IDArchivo: Integer;Archivo:String; var Respuesta:String):Boolean; //Sep 27/16
begin
  result:=False;
  if idArchivo <>0 then
  begin
    AdodsAuxiliar.Close;
    AdodsAuxiliar.CommandText :='Select * from Documentos where IdDocumento='+ intToStr(IDArchivo);
    AdodsAuxiliar.open;
    if AdodsAuxiliar.eof then
    begin
      Respuesta :=Respuesta+' ID no encontrado('+intTostr(IDArchivo)+') '+Archivo;
      AdodsAuxiliar.Close;
      AdodsAuxiliar.CommandText :='Select * from Documentos where NombreArchivo='''+ Archivo+'''';
      AdodsAuxiliar.open;
      if not AdodsAuxiliar.eof then
      begin
        IDArchivo:=  AdodsAuxiliar.fieldbyname('IDDocumento').AsInteger;
        result:=true;
      end;
    end
    else  //Si encontró el id   (pero el archivo es el bueno)
    begin
      if AdodsAuxiliar.fieldbyname('NombreArchivo').AsString<>Archivo then
      begin
        Respuesta :=Respuesta+' Nombres diferentes G:'+AdodsAuxiliar.fieldbyname('NombreArchivo').AsString +' B:'+Archivo;
        //Ajuste porque el bueno es archivo no el del id que viene  Dic 28/16
        AdodsAuxiliar.Close;
        AdodsAuxiliar.CommandText :='Select * from Documentos where NombreArchivo='''+ Archivo+'''';
        AdodsAuxiliar.open;
        if not AdodsAuxiliar.eof then
        begin
          IDArchivo:=  AdodsAuxiliar.fieldbyname('IDDocumento').AsInteger;
          result:=true;
        end
        else
          Respuesta :=Respuesta+'Otro Archivo. No encontro nombre: '+ Archivo;
      end
      else   //Hasta aca   dic 28
         result:=true;
      //Se asocia ID
    end;

  end
  else
  begin
    Respuesta :=Respuesta+' ID (0) '+Archivo;
    AdodsAuxiliar.Close;
    AdodsAuxiliar.CommandText :='Select * from Documentos where NombreArchivo='''+ Archivo+'''';
    AdodsAuxiliar.open;
    if not AdodsAuxiliar.eof then
    begin
      IDArchivo:=  AdodsAuxiliar.fieldbyname('IDDocumento').AsInteger;
      result:=true;
    end
    else
      Respuesta :=Respuesta+' No encontro nombre: '+ Archivo;  //Va falso y no se pone
  end;
end;

procedure TDMFacturas.CrearPagoNota(serie:string;Folio,idCFDINota,IDCliente,IDDomicilioCliente,IdMetodoPago:integer;Total:Double); //Jun 2/16
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.Clear;
  ADOQryAuxiliar.SQL.Add('INSERT INTO PagosRegistros (Fecha, IdmetodoPago,IdPersonaCliente,idDomicilioCliente,FolioPago,SeriePago,Importe,saldo,IDCFDINotaCredito)'
  +' Values(GetDate(),'+inttoStr(idmetodoPago)+','+intToStr(IDcliente)+','+intToStr(IDDomicilioCliente)+','+intToStr(Folio)+','''+serie+''','
  +floatToStr(Total)+','+floatToStr(Total)+','+intToStr(idCFDINota)+')');
  if ADOQryAuxiliar.ExecSql=1then
    ShowMessage('Se ha creado el pago respecto a la nota de crédito')
  else
    ShowMessage('ERROR creando el pago asociado a la nota de crédito')


end;

procedure TDMFacturas.LlenaDatosEnvio; //Ene 27/16
var IDCFDI,i:Integer;           //no se va a usar asi.. //May 18/16
    DatosDireccion:TArrDatosActualiza;
begin
   IDCFDI:= adodsMaster.FieldByName('IdCFDI').AsInteger;
  if adodsMaster.FieldByName('IdPersonaReceptor').AsInteger<>-1 then // Abr 1/16 Adicional para que ponga datos de CFDis Asociados
  begin
    ADODtStInformacionEnvio.Open;
    if ADODtStInformacionEnvio.eof then     //Verificar o cambiar....
    begin
      ADODtStInformacionEnvio.Insert;
      ADODtStInformacionEnvio.Fieldbyname('IdPersonaCliente').AsInteger:= adodsMaster.FieldByName('IdPersonaReceptor').AsInteger;
      ADODtStInformacionEnvio.Fieldbyname('IDPersonaDomicilio').AsInteger:=adodsMaster.FieldByName('IdClienteDomicilio').AsInteger;
      ADODtStInformacionEnvio.Fieldbyname('FechaProgramadaEnt').AsDateTime:= Date+10;
      ADODtStInformacionEnvio.Fieldbyname('Conducto').AsString:= SacaPaqueteria(adodsMaster.FieldByName('IdClienteDomicilio').AsInteger);//May 12/16
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
      ADODtStInformacionEnvio.Fieldbyname('Conducto').AsString:= SacaPaqueteria(adodsMaster.FieldByName('IdClienteDomicilio').AsInteger);//May 12/16
      ADODtStInformacionEnvio.Fieldbyname('Valor').AsFloat:=  adodsMaster.FieldByName('Total').ASFloat;
      ADODtStInformacionEnvio.Post;
    end;
    ADODtStInformacionEnvio.Close;
  end;
(*  else  //Abr 1/16  //Es posible que aca ya no se requiera , ya que esto se haria al final del día Abr 8/16 DEshabilitado
  begin
    if SacaListaDatos(IdCFDI,DatosDireccion) then
    begin
      for i:=low(DatosDireccion) to high(DatosDireccion) do
      begin
        ADOQryAuxiliar.Close;
        ADOQryAuxiliar.SQL.Clear;
        ADOQryAuxiliar.SQL.Add('select * from InformacionEntregas where IdCFDI='+intToStr(DatosDireccion[i].IDCFDI_NV));
        AdoQryAuxiliar.Open;
        if AdoQryAuxiliar.eof then //No existe
        begin
          ADOQryAuxiliar.Close;
          ADOQryAuxiliar.SQL.Clear;
          ADOQryAuxiliar.SQL.Add('Insert Into InformacionEntregas (IdCFDI,IdPersonaCliente,IDPersonaDomicilio,FechaProgramadaEnt,Servicio,valor)'+
                                 ' Values('+intToStr(DatosDireccion[i].IDCFDI_NV)+','+intToStr(DatosDireccion[i].IDPersonaCliente)+
                                 ','+intToStr(DatosDireccion[i].IDPersonaDomicilio)+',getdate()+10,''Domicilio'','+FloatToStr(DatosDireccion[i].SaldoDoc));
          AdoQryAuxiliar.ExecSQL;

        end
        else // Ya existe
        begin
          ADOQryAuxiliar.Close;
          ADOQryAuxiliar.SQL.Clear;
          ADOQryAuxiliar.SQL.Add('Update InformacionEntregas SET IdPersonaCliente='+intToStr(DatosDireccion[i].IDPersonaCliente)+
                                 ',IDPersonaDomicilio= '+intToStr(DatosDireccion[i].IDPersonaDomicilio)+
                                 ',valor='+FloatToStr(DatosDireccion[i].SaldoDoc)+
                                 'Where IdCFDI= '+intToStr(DatosDireccion[i].IDCFDI_NV));
          AdoQryAuxiliar.ExecSQL;

        end;


      end;
    end;
  end;*)

end;

function TDMFacturas.SacaPaqueteria(IdPerDom:integer) :String;    //May 12/16
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select pd.*, PA.Descripcion from personasDomicilios pd left join '
                         +'Paqueterias pa on pa.IdPaqueteria=pd.idenviotipo  where idpersonadomicilio='+intToStr(IdPerDom) );

  ADOQryAuxiliar.Open;
  if ADOQryAuxiliar.Eof or (ADOQryAuxiliar.fieldbyname('Descripcion').isNull) then
    Result:=''
  else
    Result:= ADOQryAuxiliar.fieldbyname('Descripcion').asString;
end;



procedure TDMFacturas.ActRegeneraPDFExecute(Sender: TObject);
var      //Dic 22/15
  IdDoc, Avance:Integer;
  nombreArchi, nomImagen,nomAux:TfileName;
  XMLpdf: TdmodXMLtoPDF;
  TipoDoc:String; //Mar 31/16
  ConsultaBase, Adicional:String;  //Abr 25/17 agilizar consulta
begin
  inherited;
  ConsultaBase:=' SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase,Descripcion,'
               +' NombreArchivo, IdArchivo, Archivo FROM Documentos ';  //Abr 25/17 agilizar consulta
  Avance:=0; //Ene8/16
  ShowProgress(5,100.1,'Buscando Archivos...' + IntToStr(5) + '%');
  ConvierteBinADec(DMImpresion,ArrBinario);
    //Sacar ID del Archivo XML del Master
  idDoc:=adodsMasteridDocumentoXML.asInteger;

//  adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
//  adoDSDocumento.filtered:=True;
    //Pendiente  CAmbiar consulta para que no se tarde Abr 25/17
  Adicional :=' where IdDocumento='+intToSTR(IDDoc);   //Abr 25/17 agilizar consulta
  adoDSDocumento.Close; //Para poderlo poner  //Abr 25/17
  adoDSDocumento.CommandText:= ConsultaBase+Adicional;    //Abr 25/17 agilizar consulta

  adoDSDocumento.open;
  nombreArchi:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);

  readFile( nombreArchi); //sacaxml


  //Sacar PNG Ene6/16
  idDoc:=adodsMasterIdDocumentoCBB.asInteger;
  if idDoc>0 then
  begin     // CAmbio consulta para que no se tarde Abr 25/17
    adoDSDocumento.Close;  //Abr 25/17  Por si no tiene  que se mantnga abierto
    Adicional :=' where IdDocumento='+intToSTR(IDDoc);   //Abr 25/17 agilizar consulta

    adoDSDocumento.Close; //Para poderlo poner  //Abr 25/17
    adoDSDocumento.CommandText:= ConsultaBase+Adicional;    //Abr 25/17 agilizar consulta
  //  adoDSDocumento.filter:='IdDocumento='+intToSTR(IDDoc);
  //  adoDSDocumento.filtered:=True;

    adoDSDocumento.open;
    nomImagen:=ExtractFileName(AdoDSDocumentoNombreArchivo.asstring);

    readFile( nomImagen); //sacaPng
  end;
  //Hasta aca ene6/16

  TipoDoc:= adodsMaster.FieldByName('TipoDocumento').AsString ; //Mar 31/16
  //nombreArchi:= ChangeFileExt(nombreArchi, fePDF);
  //nombreArchi:=ExtractfilePath(Application.exename)+nombreArchi;
  //Se manda el nombre del XML
  XMLpdf := TdmodXMLtoPDF.Create(Self);
  XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIIntervaNvo.rtm'; //dic28/15  HAy  que actualizarlos
  XMLpdf.FileXTR:= ExtractFilePath(Application.ExeName) + 'Transfor32.xtr';   //dic28/15
  XMLpdf.CadenaOriginalTimbre:= adodsMasterCadenaOriginal.AsString; //dic 28/15 verificar
  try
     XMLpdf.FileIMG := nomImagen;//nombreArchi + fePNG; //Ajustado ene6/16
     if fileExists(XMLpdf.FileIMG) then//dic 28/15
     begin
       ShowProgress(20,100.1,'Generando para imprimir...' + IntToStr(20) + '%');
       if ArrBinario[0]=1 then
       begin
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,TipoDoc,'FISCAL',adodsMasterIdentificadorCte.AsString);
         XMLpdf.PrintPDFFile(nomAux);
         ShowProgress(40,100.1,'Imprimiendo FISCAL...' + IntToStr(40) + '%');
       end;
       if ArrBinario[1]=1 then
       begin
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,TipoDoc,'COBRANZA',adodsMasterIdentificadorCte.AsString);
         XMLpdf.PrintPDFFile(nomAux);
         ShowProgress(60,100.1,'Imprimiendo COBRANZA...' + IntToStr(60) + '%');
       end;
       if ArrBinario[2]=1 then
       begin
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,TipoDoc,'EMBARQUE',adodsMasterIdentificadorCte.AsString);
         XMLpdf.PrintPDFFile(nomAux);
         ShowProgress(80,100.1,'Imprimiendo EMBARQUE...' + IntToStr(80) + '%');
       end;
       if ArrBinario[3]=1 then
       begin
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,TipoDoc,'EXPEDIENTE',adodsMasterIdentificadorCte.AsString);
         XMLpdf.PrintPDFFile(nomAux);
         ShowProgress(95,100.1,'Imprimiendo EXPEDIENTE...' + IntToStr(95) + '%');
       end;
       if high(ArrBinario)=0 then
         nomAux:=XMLpdf.GeneratePDFFile(nombreArchi,TipoDoc,'',adodsMasterIdentificadorCte.AsString); //SE genera un original, pero no se guarda.
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

procedure TDMFacturas.ActRevertirinventarioExtraExecute(Sender: TObject);
begin
  inherited;
  RevertirInventario(adodsmaster.fieldbyname('Idordensalida').asinteger,adodsmaster.fieldbyname('IdCFDI').asinteger);
end;

procedure TDMFacturas.ActualizaInventario(IDOrdenSalida, IDCFDI: Integer);
var                //No se modifico porque se asocia con los IdOrdenSalidaItem que son los mismos.  Ab. 1/16
   texto:String;
   cont, IDPXE:Integer;   //Abr 1/16    //Abr 14/16
begin
  ADODtStDatosActInv.Close;
  ADODtStDatosActInv.Parameters.ParamByName('IDCFDI').Value:= idcfdi;
  ADODtStDatosActInv.OPEN;
  cont :=0;

  try
    ADODtStDatosActInv.Connection.BeginTrans;
    while not ADODtStDatosActInv.EOF do
    begin
         //verificar existencia en inventario Abr 1/16
      AdoQryAuxiliar.Close;
      AdoQryAuxiliar.SQL.Clear;
      AdoQryAuxiliar.SQL.Add('Select * from Inventario Where IdProducto='+ADODtStDatosActInv.FieldByName('IDProducto').AsString
                                         +' and IDALmacen= '+ADODtStDatosActInv.FieldByName('IDAlmacen').ASString);
      AdoQryAuxiliar.Open;
      if AdoQryAuxiliar.Eof then
      begin
        cont:=Cont+1;
      end;
      if cont=0 then
      begin
        Texto:='UI';
        ADOQryActualizaInventario.SQL.Clear;                   // PedidoXSurtir  =PedidoXSurtir cambio //Abr 11/16
        ADOQryActualizaInventario.SQL.Add('Update Inventario SET Apartado =Apartado-'+ADODtStDatosActInv.FieldByName('Cantidad').AsString
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

        AdoQryAuxiliar.Close; //desde Abr. 14/16
        AdoQryAuxiliar.SQL.Clear;
        AdoQryAuxiliar.SQL.Add('Select * from SalidasUbicaciones  where IdOrdenSalidaItem='
                                          +ADODtStDatosActInv.FieldByName('IDOrdenSalidaItem').ASString);
        AdoQryAuxiliar.Open;  //Hasta Abr. 14/16
        while not AdoQryAuxiliar.eof do    //Jul 15/16 para que actualice todos
        begin
          IDPXE:= AdoQryAuxiliar.FieldByName('IdProductoXEspacio').Value;

          //necesitamos el id de productoXEspacio producto                                         //Solo puede afectar si hay varias ubicaciones en almacen
          ADOQryActualizaInventario.SQL.Clear; //No estaba Mar 8/16                               // Nov 1/16  era   ADODtStDatosActInv deberia ser de la salida ubicacion
          ADOQryActualizaInventario.SQL.Add('Update ProductosXEspacio SET Cantidad = Cantidad - '+AdoQryAuxiliar.FieldByName('Cantidad').AsString
                                           +' where IDProducto='+ADODtStDatosActInv.FieldByName('IdProducto').asString
                                           +' and IdAlmacen= '+ADODtStDatosActInv.FieldByName('IdAlmacen').asString+' and IDProductoXEspacio='+intToStr(IDPXE));
                                                                                                                     //Agregado Ab. 14, por si hay mas ubicaciones
          ADOQryActualizaInventario.ExecSQL;
          AdoQryAuxiliar.Next; //Jul 15/16
        end;
        Texto:=Texto +' Actualizo ProductoEspacio';
        ADOQryActualizaInventario.SQL.Clear; //No estaba Mar 8/16
        ADOQryActualizaInventario.SQL.Add('Update ProductosKardex SET IDProductoKardexEstatus = 3  '
                                         +' where IDProductoKardex='+ ADODtStDatosActInv.FieldByName('IdProductoKardex').ASString);

        ADOQryActualizaInventario.ExecSQL;

        Texto:=Texto +' Actualizo Producto Kardex';


      end; //Ab 1/16
      ADODtStDatosActInv.Next;
    end;
    if Cont=0 then
      ADODtStDatosActInv.Connection.CommitTrans
    else
    begin
      ADODtStDatosActInv.Connection.RollbackTrans;
      ShowMessage('No existe algún producto en Inventario');
    end;
   //  ShowMessage('bien '+Texto);
  except
     ADODtStDatosActInv.Connection.RollbackTrans;
     ShowMessage('Error'+ Texto);
  end;

end;

procedure TDMFacturas.RevertirInventario(IDOrdenSalida, IDCFDI: Integer);//Por Cancelación FActura Mar 7/16
var                                                     //
   texto:String;
   cont,IDPXE, idReceptor, IDTipoDoc:Integer;
begin
   //Abr 14/16   Para traer el idPersonaReceptor
  AdoQryAuxiliar.Close;
  AdoQryAuxiliar.SQL.Clear;
  AdoQryAuxiliar.SQL.Add('Select IDPersonaReceptor, IDCFDITipoDocumento from CFDI where IdCFDI='+intToStr(idcfdi));
  AdoQryAuxiliar.Open;
  IDReceptor:=  AdoQryAuxiliar.FieldByName('IdPersonaReceptor').AsInteger;      //Abr 14/16
  IDTipoDoc:= AdoQryAuxiliar.FieldByName('IDCFDITipoDocumento').AsInteger; //Abr 15/16

  ADODtStDatosActInv.Close;
  ADODtStDatosActInv.Parameters.ParamByName('IDCFDI').Value:= idcfdi;
  ADODtStDatosActInv.OPEN;
  cont :=0;//abr 1/16
  try
    ADODtStDatosActInv.Connection.BeginTrans;
    if (idreceptor<>-1) and ((IDTipoDoc=1)or (IDTIpoDoc=4)) then
    begin                                   //Jun 17/16 debe tener el Estatus 5  sino no debe llegar aca
      ADOQryActualizaInventario.SQL.Clear; // Mar 8/16
       //  Cancela  OrdenSalida  //Verificar si a los registros de Items de OrdenSalida se les quita el IDDocumentoDetalle..
      ADOQryActualizaInventario.SQL.Add('Update OrdenesSalidas SET IDOrdenEstatus = 8  , FechaCancela = getdate() ' //Cancelada
                                         +' where IDOrdenSalida='+ intToStr(IDOrdenSalida));   //Ajustado mar 17/16

      ADOQryActualizaInventario.ExecSQL;

      Texto:='Cancela Orden Salida ';  //Verificar existencia de Producto Almacen para  asegurarse que se agreguen.. sino dar error... mar 28/16
    end;
    while not ADODtStDatosActInv.EOF do
    begin
    //verificar existencia en inventario Abr 1/16
       AdoQryAuxiliar.Close;
       AdoQryAuxiliar.SQL.Clear;
       AdoQryAuxiliar.SQL.Add('Select * from Inventario Where IdProducto='+ADODtStDatosActInv.FieldByName('IDProducto').AsString
                                         +' and IDALmacen= '+ADODtStDatosActInv.FieldByName('IDAlmacen').ASString);
      AdoQryAuxiliar.Open;
      if AdoQryAuxiliar.Eof then
      begin
        cont:=Cont+1;
      end;
      if Cont=0 then
      begin                                                                                    //se puso en el pedido
        ADOQryActualizaInventario.SQL.Clear;                  // PedidoXSurtir  =PedidoXSurtir cambio //Abr 11/16
        ADOQryActualizaInventario.SQL.Add('Update Inventario SET Apartado  =Apartado+'+ADODtStDatosActInv.FieldByName('Cantidad').AsString
                                         +' ,Existencia =Existencia+ '+ADODtStDatosActInv.FieldByName('Cantidad').AsString
                                         +' Where IdProducto='+ADODtStDatosActInv.FieldByName('IDProducto').AsString
                                         +' and IDALmacen= '+ADODtStDatosActInv.FieldByName('IDAlmacen').ASString);

        ADOQryActualizaInventario.ExecSQL;
        Texto:='Revierte inventario';
         if idreceptor<>-1 then   //Abr 14/16
        begin
          ADOQryActualizaInventario.SQL.Clear;                                                 //Cancelado
          ADOQryActualizaInventario.SQL.Add('Update SalidasUbicaciones SET IdSalidaUbicacionEstatus=4  where IdOrdenSalidaItem='
                                            +ADODtStDatosActInv.FieldByName('IDOrdenSalidaItem').ASString);
          ADOQryActualizaInventario.ExecSQL;
          Texto:=Texto +' Cancela SalidasUbicacion';
        end;

        AdoQryAuxiliar.Close; //desde Abr. 14/16
        AdoQryAuxiliar.SQL.Clear;
        AdoQryAuxiliar.SQL.Add('Select * from SalidasUbicaciones  where IdOrdenSalidaItem='
                                          +ADODtStDatosActInv.FieldByName('IDOrdenSalidaItem').ASString);
        AdoQryAuxiliar.Open;  //Hasta Abr. 14/16
        if not AdoQryAuxiliar.eof then
        begin // Jun 17/16 Se coloco todo en el if
          IDPXE:= AdoQryAuxiliar.FieldByName('IdProductoXEspacio').Value;

          //Necesitamos el espacio  //Abr 14/16

          ADOQryActualizaInventario.SQL.Clear;            //Aca se regresa la sumatoria C. Mar 18/16
          ADOQryActualizaInventario.SQL.Add('Update ProductosXEspacio SET Cantidad = Cantidad + '+ADODtStDatosActInv.FieldByName('Cantidad').AsString
                                           +' where IDProducto='+ADODtStDatosActInv.FieldByName('IdProducto').asString
                                           +' and IdAlmacen= '+ADODtStDatosActInv.FieldByName('IdAlmacen').asString +' and IDProductoXEspacio='+intToStr(IDPXE));
                                                                                                                     //Agregado Ab. 14, por si hay mas ubicaciones);

          ADOQryActualizaInventario.ExecSQL;

          Texto:=Texto +' Revierte ProductoEspacio';
        end;
        if idreceptor<>-1 then
        begin
          ADOQryActualizaInventario.SQL.Clear; //No estaba                        //Cancelar registro
          ADOQryActualizaInventario.SQL.Add('Update ProductosKardex SET IDProductoKardexEstatus = 4  '
                                           +' where IDProductoKardex='+ ADODtStDatosActInv.FieldByName('IdProductoKardex').ASString);

          ADOQryActualizaInventario.ExecSQL;

          Texto:=Texto +' Cancela Producto Kardex';
        end;

       end;

       ADODtStDatosActInv.Next;
    end;
    if (Cont=0) then //Abr 1/16
    begin
      // Copiar Orden de Salida en nuevo registro con Estatus y cantidades respectivos.. verificar.
      //LLamar al procedimiento almacenado creado y ver que más se requiere
      if (idreceptor<>-1 )then  //Ajuste abr 14/16
      begin
        adopCopiaOrdenSalida.Parameters.ParamByName('@IdOrdenSalida').Value:= IDOrdenSalida;
        adopCopiaOrdenSalida.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdPersona;  //deberia ser persona y no usuario  nmandaba usuario
        adopCopiaOrdenSalida.ExecProc;         //Actualizado Jun 13/16
        //VErificar si se debe crear salida ubicacion aca en estatus 1 e igual que la otra?? que quedaria cancelada Jun 13/17


      end;


      ADODtStDatosActInv.Connection.CommitTrans;
      ShowMessage('Recuerde Regresar el proceso hasta al pedido, para poder establecer las salidas de forma correcta');
    end
    else
    begin
      ADODtStDatosActInv.Connection.RollbackTrans;
      ShowMessage('Algún Producto no existe en inventario');
    end;
   //  ShowMessage('bien '+Texto);
  except
    on e:Exception do
    begin
     ADODtStDatosActInv.Connection.RollbackTrans;
      ShowMessage('Error'+ Texto+#13+ e.Message);
    end;

  end;

end;



function TDMFacturas.ActualizaSaldoCliente(IdCFDI, IDCliente,
    IDDomicilioCliente: Integer;Importe :Double; operacion:String): Boolean;
var
  DatosDireccion:TArrDatosActualiza;
  i:Integer;
begin

  if IDCliente<>-1 then //No  es de Publico en general    abr 01/15   //presupuestos deberia ir por aca..  //Pero hay que mandar la llamar de forma especifioca
  begin
    try
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.Sql.Clear;
      ADOQryAuxiliar.Sql.add('Update PersonasDomicilios set Saldo =Saldo '+operacion+floatToStr(Importe)+' where IDPersonaDomicilio='+intToStr(IdDomiciliocliente));
      ADOQryAuxiliar.ExecSQL;

      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.Sql.Clear;
      ADOQryAuxiliar.Sql.add('Update Personas set SaldoCliente =SaldoCliente '+operacion+floatToStr(Importe)+' where IDPersona='+intToStr(IdCliente));
      ADOQryAuxiliar.ExecSQL;
      result:=true;
    except
       result:=False;
    end;
  end
  else //Es de Publico en General y se debe actualizar de los CFDIsAsociados   abr 01/15
  begin
   // Sacar lista de CFDIs Asociados, IDCLientes, IDDomicilios, saldo
    if SacaListaDatos(IdCFDI,DatosDireccion) then
    begin
      for i:=low(DatosDireccion) to high(DatosDireccion) do
      begin
        try
          ADOQryAuxiliar.Close;
          ADOQryAuxiliar.Sql.Clear;
          ADOQryAuxiliar.Sql.add('Update PersonasDomicilios set Saldo =Saldo '+operacion+floatToStr(Datosdireccion[i].SaldoDoc)+' where IDPersonaDomicilio='+intToStr(Datosdireccion[i].IDPersonaDomicilio));
          ADOQryAuxiliar.ExecSQL;

          ADOQryAuxiliar.Close;
          ADOQryAuxiliar.Sql.Clear;
          ADOQryAuxiliar.Sql.add('Update Personas set SaldoCliente =SaldoCliente '+operacion+floatToStr(Datosdireccion[i].SaldoDoc)+' where IDPersona='+intToStr(Datosdireccion[i].IDPersonaCliente));
          ADOQryAuxiliar.ExecSQL;
          result:=true;
        except
           result:=False;
        end;
      end;
    end
    else
      result:=False;
  end;

end;

function TDMFacturas.SacaListaDatos(idCFDI:Integer; Lista:TArrDatosActualiza):Boolean;   //Abr 1/16
var i :Integer; //Sirve para traer los datos de CFDIs de Notas ventas asociadas a una Factura diaria.
begin
  i:=1;
  Result:=False;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.sql.clear;
  ADOQryAuxiliar.SQL.Add('Select * from CFDI where IDCFDIFacturaGral= '+ intToStr(idCFDI));
  ADOQryAuxiliar.open;

  while not ADOQryAuxiliar.eof do
  begin
    SetLength(Lista, i);
    Lista[i-1].IDCFDI_NV:=ADOQryAuxiliar.FieldByName('IDCFDI').AsInteger;
    Lista[i-1].IDPersonaCliente:=ADOQryAuxiliar.FieldByName('IDPersonaReceptor').AsInteger;
    Lista[i-1].IDPersonaDomicilio:=ADOQryAuxiliar.FieldByName('IDClienteDomicilio').AsInteger;

    Lista[i-1].SaldoDoc:=ADOQryAuxiliar.FieldByName('SaldoDocumento').AsInteger;

    i:=i+1;
    ADOQryAuxiliar.next;
    Result:=True;
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


constructor TDMFacturas.CreateWMostrar(AOwner: TComponent; Muestra: Boolean;TipoDoc:Integer);
begin
  FMuestra:=Muestra;
  FTipoDoc:=TipoDoc;
  inherited Create(AOwner);
end;

procedure TDMFacturas.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodtstIdentificadores.Open; //Feb 8/16
end;

procedure TDMFacturas.adodsMasterBeforeDelete(DataSet: TDataSet);
var continuar:Boolean;
begin
  inherited;
  if DataSet.FieldByName('IDCFDITipoDocumento').asInteger=1   then  //Sep 9/16
  begin
    ShowMessage('No es posible eliminar Facturas');
    abort;
  end
  else

  //Buscar Conceptos y si no tiene buscar Impuestos para borrar antes de borrar esto sólo si son notas de credito ao cargo...Jul 22/16
  if DataSet.FieldByName('IDCFDITipoDocumento').asInteger in [2,3,5] then //Notas credito y cargo , unicas que borran
  begin                                                       //Fletes  //Sep 9/16
    Continuar:=true;
    if (DataSet.FieldByName('IDCFDITipoDocumento').asInteger in [2,3]) and  (DataSet.FieldByName('folio').asInteger<>0) and
      (application.messagebox(pchar('¿Esta seguro de Borrar la Nota :'+DataSet.FieldByName('serie').asString+' - '+DataSet.FieldByName('folio').asstring+'?. '
                             +' No podrá ser reutilizado ese número.'),'Confirmación',MB_YESNO)=IDNo) then
      Continuar:=False;
    if Continuar then
    begin
      adoqryAuxiliar.Close;
      adoqryAuxiliar.Sql.Clear;
      adoqryAuxiliar.sql.Add('Select * from CFDIConceptos where idCFDI ='+ DataSet.FieldByName('IDCFDI').asstring);
      adoqryAuxiliar.open;
      if not adoqryAuxiliar.eof then
      begin
        ShowMessage('Debe eliminar primero los conceptos asociados');
        abort;
      end
      else
      begin
        adoqryAuxiliar.Close;
        adoqryAuxiliar.Sql.Clear;
        adoqryAuxiliar.sql.Add('Select * from CFDIImpuestos where idCFDI ='+ DataSet.FieldByName('IDCFDI').asstring);
        adoqryAuxiliar.open;
        if not adoqryAuxiliar.eof then
        begin
          adoqryAuxiliar.Close;
          adoqryAuxiliar.Sql.Clear;
          adoqryAuxiliar.sql.Add('DELETE CFDIImpuestos where idCFDI ='+ DataSet.FieldByName('IDCFDI').asstring);
          adoqryAuxiliar.ExecSQL;
        end;
      end;
    end
    else //Dijo que no
      abort;
  end;
end;

procedure TDMFacturas.adodsMasterBeforeInsert(DataSet: TDataSet);
const
   TxtSQL='select  IdCFDI, IdCFDITipoDocumento, IdCFDIFormaPago, IdMetodoPago, C.IdMoneda, IdPersonaEmisor, IdPersonaReceptor,'+
   'IdDocumentoCBB, IdDocumentoXML, IdDocumentoPDF,IdOrdenSalida, IdCFDIEstatus, IdCFDIFacturaGral, IdClienteDomicilio,'+
   'CuentaCte, TipoCambio, TipoComp, Serie, Folio, Fecha, LugarExpedicion, Sello, CondPago, NoCertificado, Certificado,'+
   'SubTotal, Descto, MotivoDescto, Total, NumCtaPago,CadenaOriginal, TotalImpuestoRetenido, TotalImpuestoTrasladado,'+
   'SaldoDocumento, FechaCancelacion, Observaciones,PorcentajeIVA, EmailCliente, UUID_TB,'+
   'SelloCFD_TB, SelloSAT_TB,CertificadoSAT_TB,FechaTimbrado_TB  from CFDI C ';

var
  txt:String;
begin
  ffiltro:=' where fecha>DATEADD(MM, DATEDIFF(MM,0,GETDATE()), 0)';
  Txt:=   Tadodataset(adodsMaster).CommandText;
  if pos('inner ',Txt)>0 then
  begin
    Tadodataset(adodsMaster).Close;
    Tadodataset(adodsMaster).Close;
    Tadodataset(adodsMaster).CommandText:=TxtSQL+ffiltro;
    Tadodataset(adodsMaster).open;
  end;
  inherited;

end;

procedure TDMFacturas.adodsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;                                  //Flete              //Para que ponga el Folio de Notas de credito y cargo  sep 9/16
  if (DataSet.FieldByName('IDCFDITipoDocumento').AsInteger=5) or (DataSet.FieldByName('IDCFDITipoDocumento').AsInteger in [2,3]) then
  begin  //Colocar Folio de Flete
    if adodsMasterIdCFDIEstatus.AsInteger =1 then
    begin
      //Poner Folio Serie
      if adodsMasterFolio.AsInteger=0 then
      begin
        ADODtStBuscaFolioSerie.Close;
        ADODtStBuscaFolioSerie.Parameters.ParamByName('IdCFDITipoDocumento').Value:= adodsMasterIdCFDITipoDocumento.AsInteger; //Asegurarse que tenga valor
        ADODtStBuscaFolioSerie.Open;


        if (not ADODtStBuscaFolioSerie.eof) and (ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger >0)then
        begin                                       //Sep 14/16
          if (DataSet.FieldByName('IDCFDITipoDocumento').AsInteger=5)or((DataSet.FieldByName('IDCFDITipoDocumento').AsInteger in [2,3]) and
                (application.MessageBox(pchar('Se va a colocar la nota '+ADODtStBuscaFolioSerie.FieldByName('SerieDoc').AsString+' - '
             +ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsString+ ' ¿Seguro de continuar?'), 'Confirmación', MB_YESNO )=idYES))  then //SEp 9/16
          begin

            adodsMasterFolio.AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger;
            adodsMasterSerie.AsString:= ADODtStBuscaFolioSerie.FieldByName('SerieDoc').AsString;

            ADODtStBuscaFolioSerie.Edit;
            ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger:= ADODtStBuscaFolioSerie.FieldByName('FolioDoc').AsInteger+1;
            ADODtStBuscaFolioSerie.Post;
          end
          else
            abort; //
        end
        else
        begin
          ShowMessage('No existen Folios para el Tipo de Documento. Asegurese de colocarlos ');
        end;
      end;

    end;
  end;


end;

procedure TDMFacturas.adodsMasterCalcFields(DataSet: TDataSet);
var
  vTotal: Double;
  Centavos : String;
begin
  inherited;
  vTotal:= StrToFloat(FormatFloat('0.00',dataset.FieldByName('Total').AsFloat));

  Centavos := FormatFloat('.00',Frac(vTotal));
  Delete(Centavos,1,1);
  dataset.FieldByName('TotalenLetra').AsString:= xIntToLletras(Trunc(vTotal)) + ' PESOS ' + Centavos + '/100 M. N. ';

end;

procedure TDMFacturas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  try
  DataSet.FieldByName('IDCFDIEstatus').AsInteger:=1; //Prefactura
                                                       //Modificado Mar 29/16
  DataSet.FieldByName('IDCFDITipoDocumento').AsInteger:=TipoDocumento; //Factura    //ADODtSTOrdenSalida.fieldByname('IdGeneraCFDITipoDoc').ASInteger;//Mod. Mar 28/16
                                            //Verificar que se tenga Mar 31/16
  DataSet.FieldByName('TipoComp').AsString:=DataSet.FieldByName('TipoComprobante').AsString;//'ingreso'; //columna TipoComprobante de Tabla CFDItipoDocumento
  //Verificar si serie yFolio se colocan aca o se colocan justo antes de generar el CFDI
  DataSet.FieldByName('Folio').AsInteger:=0; //Sin asignar aun
  DataSet.FieldByName('Fecha').AsDateTime:=now; //Se supondría que se van a generar inmediatamente pero hay que verificar(por si se requiere cambio de fecha antes de generar)
  DataSet.FieldByName('LugarExpedicion').AsString:=ADODtStPersonaEmisorMunicipio.Value +', '+ADODtStPersonaEmisorEstado.Value;//'Zapopan, Jalisco' ; //Verificar si se saca de  la direccion del emisor?

// DataSet.FieldByName('Serie').AsString:=
  DataSet.FieldByName('IdCFDIFormaPago').AsInteger :=1;
  DataSet.FieldByName('IDMoneda').AsInteger:=106;
  adodsMaster.fieldbyname('TipoCambio').AsInteger:=1; //Jun 27/16
  DataSet.FieldByName('IDMetodoPago').AsInteger:=5; //Otros Jun 27/16  4; //No identificado // abril 1/16      se supone que al seleccionar el cliente debe cambiar, si tiene

  DataSet.FieldByName('IdPersonaEmisor').AsInteger:=ADODtStPersonaEmisoridpersona.AsInteger; //Debe estar abierta y debe tener una direccion fiscal
  Except
    Raise;
  end;
end;

procedure TDMFacturas.ADODtStCFDIConceptosAfterPost(DataSet: TDataSet);
var
  idDocCFDI, IDDocItem, idImp:Integer;
  Subtotal,IVACal,TotalCal:Double; //Agregado ago 25/16
  Existe:Boolean;
begin
  inherited;  //Mar 29/16     //Verificar que no intertfiera con el  proceso normal de facturacion
  idImp:=-1;
  //Verificar si aca actualizar el item respectivo del detalle del documento
  IDDocItem:=DataSet.FieldByName('IDCFDIConcepto').AsInteger;
  idDocCFDI:=DataSet.FieldByName('IDCFDI').AsInteger;

  //Siempre actualizar

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From CFDIConceptos where IDCFDI='+intToStr(idDocCFDI));
  ADOQryAuxiliar.open;

  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;

  if (adodsMaster.FieldByName('IDCFDITipoDocumento').AsInteger = 5)  //Fletes   //  (adodsMaster.FieldByName('IDCFDITipoDocumento').AsInteger = 4) and(adodsMaster.FieldByName('Acumula').asBoolean)
         or (adodsMaster.FieldByName('IdCfdiEstatus').AsInteger=5) then  //Remisiones
  begin
    IVACal:= 0;
    TotalCal:= Subtotal;
  end
  else
  begin
  //Ago 25/16
    IVACal:= subtotal*0.16;
    TotalCal:= Subtotal+IVACal; //subtotal*1.16 ;    //Ago 25/16
  end;
  //Verificar que no sea Tipo 5 que son Fletes ()

  ADOQryAuxiliar.Close;                                                                                       //   subtotal*0.16
  ADOQryAuxiliar.SQL.Clear;                                                                                                                  //  subtotal*1.16                      //  subtotal*1.16
  ADOQryAuxiliar.SQL.Add('UPDATE CFDI SET Subtotal='+FloattoSTR(subtotal)+' , TotalImpuestoTrasladado='+FloatToSTR(IVACal)+', Total='+FloatToSTR(TotalCal) +', SaldoDocumento='+FloatToSTR(TotalCal)
                          +' where IDCFDI ='+IntToStr(idDocCFDI));
  ADOQryAuxiliar.ExecSQL;

  //Acualizar impuestos si no tiene Impuestos //Mar 30/16
  //Si existe actualizar si no existe crear en tabla de impuestos          //Ago 31/16
  if (adodsMaster.FieldByName('IDCFDITipoDocumento').AsInteger <> 5) and (adodsMaster.FieldByName('IdCfdiEstatus').AsInteger<>5) then
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.Add('SElect * from  CFDIImpuestos where IDCFDI ='+IntToStr(idDocCFDI)
                          +' and TipoImp=''Trasladado'' and Impuesto=''IVA''');
    ADOQryAuxiliar.Open;

    if not ADOQryAuxiliar.eof then//No existe
      idImp:=ADOQryAuxiliar.FieldByName('IDCFDIImpuesto').AsInteger;
    // Mar 31/16
    if idImp=-1 then //No existe
    begin
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.SQL.Clear;
      ADOQryAuxiliar.SQL.Add('Insert into CFDIImpuestos (IDCFDI, TipoIMP,Impuesto, Tasa, Importe) VAlues('
                            +IntToStr(idDocCFDI) +', ''Trasladado'', ''IVA'', 16, '+FloatToSTR(IVACal)+')');
      ADOQryAuxiliar.ExecSQL;                                                                 //  subtotal*0.16 Ago 30 /16 ajustado
    end
    else
    begin
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.SQL.Clear;
      ADOQryAuxiliar.SQL.Add('UPDATE CFDIImpuestos SET Importe='+FloatToSTR(IVACal)   //subtotal*0.16
                            +' where IDCFDIImpuesto ='+IntToStr(idImp));
      ADOQryAuxiliar.ExecSQL;
    end;  //Hasta aca
  end; // Fin de if de <>5 (Fletes)

  AdoDSMaster.Refresh;
end;

procedure TDMFacturas.ADODtStCFDIConceptosBeforeInsert(DataSet: TDataSet);
begin
  if adodsMaster.State in [dsEdit,dsInsert] then //Jun 27/16
    adodsMaster.post;
  inherited;
end;

procedure TDMFacturas.ADODtStCFDIConceptosNewRecord(DataSet: TDataSet);
begin
  inherited;
  if adodsMasterIdCFDITipoDocumento.AsInteger in [3] then  //Se quito el 2 por que ese es como factura
  begin
    dataset.FieldByName('IDUnidadMedida').AsInteger:=3; //No aplica //Generalmente son Fletes  //Sep 1/16
    dataset.FieldByName('Unidad').AsString:='FLETE';  //Sep 1/16
    dataset.FieldByName('Cantidad').AsFloat:=1; //Sep 1/16

  end;
  if adodsMasterIdCFDITipoDocumento.AsInteger in [2] then //Jun 27/16
  begin
    dataset.FieldByName('IDUnidadMedida').AsInteger:=1; //PZA
    dataset.FieldByName('Unidad').AsString:='PZA';
    dataset.FieldByName('Cantidad').AsFloat:=1;
  end;
  if adodsMasterIdCFDITipoDocumento.AsInteger =5 then  //Flete
  begin
    dataset.FieldByName('IDUnidadMedida').AsInteger:=3; //Flete   //Verificar
    dataset.FieldByName('Unidad').AsString:='FLETE';
     dataset.FieldByName('Cantidad').AsFloat:=1;  //Sep14/16
  end;
end;

procedure TDMFacturas.ADODtStCFDIConceptosNoIdentificaChange(Sender: TField);
var valuni:Double;       //Jun 27/16        //Puede que despues es añada busqueda por Facturas...
  idproducto:integer;
begin
  inherited;
  if adodsMasterIdCFDITipoDocumento.AsInteger=2 then //Notas Credito unicamente
  begin
    if ADODtStCFDIConceptos.State in [dsEdit,dsInsert] then
    begin                            //Cambio
      ADODtStCFDIConceptos.FieldByName('Descripcion').AsString:= EncuentraProd(ADODtStCFDIConceptos.FieldByName('NoIdentifica').ASString,ValUni,idproducto);
      if ADODtStCFDIConceptos.FieldByName('Descripcion').AsString<>'' then
      begin
        ADODtStCFDIConceptos.FieldByName('ValorUnitario').AsFloat:=ValUni;
        ADODtStCFDIConceptos.FieldByName('IdProducto').asInteger:=idproducto;
        ADODtStCFDIConceptos.FieldByName('Importe').AsFloat:=ValUni* ADODtStCFDIConceptos.FieldByName('CAntidad').AsFloat;
      end;
    end;
  end;
end;

function TDMFacturas.EncuentraProd(IdProd: String;Var ValUni:Double;var ID:Integer):String;     //Jun 27/16
begin
  Result:='';
  if IDProd<>'' then
  begin
    ADODSAuxiliar.Close;
    ADODSAuxiliar.CommandText:='Select * from Productos where (Identificador1='''+IDProd+
                               ''' or Identificador2='''+IDProd+''' or Identificador3='''+IDProd+
                               ''')';
    ADODSAuxiliar.open;
    if not ADODSAuxiliar.eof then
    begin
      ValUni:= ADODSAuxiliar.FieldByName('PrecioUnitario').AsFloat;
      ID:=ADODSAuxiliar.FieldByName('IdProducto').asinteger ; //Valor del IDinterno
      Result:=ADODSAuxiliar.FieldByName('Descripcion').AsString;

    end;
  end;
  ADODSAuxiliar.Close;
end;



procedure TDMFacturas.ADODtStCFDIConceptosValorUnitarioChange(Sender: TField);
begin
  inherited;  //Mar 29/16
  if (ADODtStCFDIConceptos.State in [dsEdit,dsInsert]) and (ADODtStCFDIConceptos.FieldByName('ValorUnitario').AsFloat <>0) and (ADODtStCFDIConceptos.FieldByName('Cantidad').AsFloat<>0) then
  begin
    ADODtStCFDIConceptos.FieldByName('Importe').AsFloat:=ADODtStCFDIConceptos.FieldByName('ValorUnitario').AsFloat* ADODtStCFDIConceptos.FieldByName('CAntidad').AsFloat;
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
  adodsMaster.Filter:= 'IdCFDITipoDocumento='+ intToStr(TipoDocumento);
  adodsMaster.Filtered:= True;
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
  TfrmFacturasFormEdit(gGridEditForm).ActCancelaCFDi := ActCancelarCFDI; //Mar 3/16
  TfrmFacturasFormEdit(gGridEditForm).TipoDocumento:=TipoDocumento;
  TfrmFacturasFormEdit(gGridEditForm).ActFacturaDiaria:=ActPreFacturaNotaVenta; //Mar 31/16
  TfrmFacturasFormEdit(gGridEditForm).ActImprimeNotaVenta:= ActImpNotasVenta;

  TfrmFacturasFormEdit(gGridEditForm).ActCancelaNotaVenta:= ActCancelaNotaVenta;
  //Desde Ago 1/16
  TfrmFacturasFormEdit(gGridEditForm).ActDocGuia:=ActMostrarGuia;
  TfrmFacturasFormEdit(gGridEditForm).ActDocsCotizacion:=ActDocACotiza;
  TfrmFacturasFormEdit(gGridEditForm).DSVerificaExistenciaGuia.dataset:= ADODtStVerificaGuia;
  TfrmFacturasFormEdit(gGridEditForm).DsVerificaDocumentos.dataset:=ADODtStVerificaDocs;


  //hasta Ago 1/16
  TfrmFacturasFormEdit(gGridEditForm).ActRevertirExtra:=ActRevertirinventarioExtra;

  TfrmFacturasFormEdit(gGridEditForm).ActImprimeFact:=ActImprimeFactura;

  TfrmFacturasFormEdit(gGridEditForm).ActAplicaOSPendientes:=ActAplicaOrdenPendiente; //Dic 28/16


end;

function TDMFacturas.GetFileName(IdDocumento: Integer): TFileName;
var             //Cambio Feb 17/16
  FileName: TFileName;
  ConsultaBase, Adicional:String;  //Abr 25/17 agilizar consulta
begin
  ConsultaBase:=' SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase,Descripcion,'
               +' NombreArchivo, IdArchivo, Archivo FROM Documentos ';  //Abr 25/17 Agilizar consulta

  adoDSDocumento.Close;
 // adoDSDocumento.filter:='IdDocumento='+intToSTR(IdDocumento);
 // adoDSDocumento.filtered:=True;

    //Cambio consulta para que no se tarde Abr 25/17
  Adicional :=' where IdDocumento='+intToSTR(IdDocumento);   //Abr 25/17 agilizar consulta

  adoDSDocumento.CommandText:= ConsultaBase+Adicional;    //Abr 25/17 agilizar consulta

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
    XMLpdf.FileRTM:= ExtractFilePath(Application.ExeName) + 'CFDIIntervaNvo.rtm'; //'FacturaCFDI.rtm';   //Sep 1/16
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
  ConsultaBase:String; //Abr 25/17
begin
  adoDSDocumento.Close; // Para evitar error
  ConsultaBase:=' SELECT Top (20) IdDocumento, IdDocumentoTipo, IdDocumentoClase,Descripcion,'
               +' NombreArchivo, IdArchivo, Archivo FROM Documentos ';  //Abr 25/17
  FacturaXML := Archivo;
    //Pendiente  CAmbiar consulta para que no se tarde Abr 25/17
  adoDSDocumento.CommandText:= ConsultaBase; //Abr 26/17 FAltaba

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

procedure TDMFacturas.ImprimeNotaVPDF(Mostrar:Boolean;nombre:TFileName='');  //Abr 4/16
var
  vPDFFileName: TFileName;                    //Verificar si reporte de flete es diferente o no tiene  Ago 30/16
begin
    // Configura el reporte
   case adodsMaster.FieldByName('IdCfdiEstatus').AsInteger of
   4: ppLblTitulo.Caption:='NOTA VENTA';
   5: ppLblTitulo.Caption:='PRESUPUESTO';
   end;


    ppRprtNotaVenta.ShowPrintDialog:= False;
    ppRprtNotaVenta.ShowCancelDialog:= False;
    ppRprtNotaVenta.AllowPrintToArchive:= False;
    if Mostrar then
       ppRprtNotaVenta.DeviceType:= 'Screen'
    else
    if nombre<>'' then
    begin
      ppRprtNotaVenta.DeviceType:= 'PDF';
      ppRprtNotaVenta.PDFSettings.OpenPDFFile := False;
      ppRprtNotaVenta.TextFileName:= nombre;
    end
    else
      ppRprtNotaVenta.DeviceType:= 'Printer';
//    ppReport.PrinterSetup.Copies:= 1;
// DES ABAN eNE7/16      ppReport.PrinterSetup.DocumentName:= ExtractFileName(vPDFFileName);
    ppRprtNotaVenta.Print;

end;



end.
