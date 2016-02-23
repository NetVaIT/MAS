inherited DMFacturas: TDMFacturas
  OldCreateOrder = True
  Height = 650
  Width = 718
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select  IdCFDI, IdCFDITipoDocumento, IdCFDIFormaPago,'#13#10' IdMetodo' +
      'Pago, IdMoneda, IdPersonaEmisor, IdPersonaReceptor, '#13#10'IdDocument' +
      'oCBB, IdDocumentoXML, IdDocumentoPDF, '#13#10'IdOrdenSalida, IdCFDIEst' +
      'atus, IdCFDIFacturaGral, IdClienteDomicilio,'#13#10' CuentaCte, TipoCa' +
      'mbio, TipoComp, Serie, Folio, Fecha,'#13#10' LugarExpedicion, Sello, C' +
      'ondPago, NoCertificado, Certificado,'#13#10' SubTotal, Descto, MotivoD' +
      'escto, Total, NumCtaPago, '#13#10'CadenaOriginal, TotalImpuestoRetenid' +
      'o, TotalImpuestoTrasladado, '#13#10'SaldoDocumento, FechaCancelacion, ' +
      'Observaciones, '#13#10'PorcentajeIVA, EmailCliente, UUID_TB, SelloCFD_' +
      'TB, '#13#10'SelloSAT_TB, CertificadoSAT_TB, FechaTimbrado_TB '#13#10' from C' +
      'FDI '#13#10'order by IDCFDIESTATUS, Fecha '
    Left = 48
    Top = 24
    object adodsMasterIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object adodsMasterIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object adodsMasterIdCFDIFormaPago: TIntegerField
      FieldName = 'IdCFDIFormaPago'
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object adodsMasterIdPersonaEmisor: TIntegerField
      FieldName = 'IdPersonaEmisor'
    end
    object adodsMasterIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object adodsMasterIdDocumentoCBB: TIntegerField
      FieldName = 'IdDocumentoCBB'
    end
    object adodsMasterIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
    end
    object adodsMasterIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
    end
    object adodsMasterIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object adodsMasterIdCFDIFacturaGral: TLargeintField
      FieldName = 'IdCFDIFacturaGral'
    end
    object adodsMasterCuentaCte: TStringField
      FieldName = 'CuentaCte'
      Size = 30
    end
    object adodsMasterTipoCambio: TStringField
      FieldName = 'TipoCambio'
    end
    object adodsMasterTipoComp: TStringField
      FieldName = 'TipoComp'
      Size = 10
    end
    object adodsMasterSerie: TStringField
      FieldName = 'Serie'
    end
    object adodsMasterFolio: TLargeintField
      FieldName = 'Folio'
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterLugarExpedicion: TStringField
      FieldName = 'LugarExpedicion'
      Size = 100
    end
    object adodsMasterSello: TStringField
      FieldName = 'Sello'
      Size = 2000
    end
    object adodsMasterCondPago: TStringField
      FieldName = 'CondPago'
      Size = 250
    end
    object adodsMasterNoCertificado: TStringField
      FieldName = 'NoCertificado'
    end
    object adodsMasterCertificado: TStringField
      FieldName = 'Certificado'
      Size = 2000
    end
    object adodsMasterDescto: TFloatField
      FieldName = 'Descto'
    end
    object adodsMasterMotivoDescto: TStringField
      FieldName = 'MotivoDescto'
      Size = 50
    end
    object adodsMasterNumCtaPago: TStringField
      FieldName = 'NumCtaPago'
    end
    object adodsMasterCadenaOriginal: TStringField
      FieldName = 'CadenaOriginal'
      Size = 2000
    end
    object adodsMasterTotalImpuestoRetenido: TFloatField
      FieldName = 'TotalImpuestoRetenido'
    end
    object adodsMasterTotalImpuestoTrasladado: TFloatField
      FieldName = 'TotalImpuestoTrasladado'
    end
    object adodsMasterSaldoDocumento: TFloatField
      FieldName = 'SaldoDocumento'
    end
    object adodsMasterFechaCancelacion: TDateTimeField
      FieldName = 'FechaCancelacion'
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterPorcentajeIVA: TFloatField
      FieldName = 'PorcentajeIVA'
    end
    object adodsMasterEmailCliente: TStringField
      FieldName = 'EmailCliente'
      Size = 100
    end
    object adodsMasterUUID_TB: TStringField
      FieldName = 'UUID_TB'
      Size = 40
    end
    object adodsMasterSelloCFD_TB: TStringField
      FieldName = 'SelloCFD_TB'
      Size = 400
    end
    object adodsMasterSelloSAT_TB: TStringField
      FieldName = 'SelloSAT_TB'
      Size = 250
    end
    object adodsMasterCertificadoSAT_TB: TStringField
      FieldName = 'CertificadoSAT_TB'
    end
    object adodsMasterFechaTimbrado_TB: TDateTimeField
      FieldName = 'FechaTimbrado_TB'
    end
    object adodsMasterMetodoPago: TStringField
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADODtStMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Lookup = True
    end
    object adodsMasterIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object adodsMasterSubTotal: TFloatField
      FieldName = 'SubTotal'
    end
    object adodsMasterTotal: TFloatField
      FieldName = 'Total'
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = ADODtStMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Lookup = True
    end
    object adodsMasterTipoDocumento: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoDocumento'
      LookupDataSet = ADODtStTiposDocumentos
      LookupKeyFields = 'IdCFDITipoDocumento'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDITipoDocumento'
      Lookup = True
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADODtStPersonaReceptor
      LookupKeyFields = 'idpersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaReceptor'
      Size = 150
      Lookup = True
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = ADODtStCFDIEstatus
      LookupKeyFields = 'IdCFDIEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDIEstatus'
      Lookup = True
    end
    object adodsMasterRFC: TStringField
      FieldKind = fkLookup
      FieldName = 'RFC'
      LookupDataSet = ADODtStPersonaReceptor
      LookupKeyFields = 'idpersona'
      LookupResultField = 'RFC'
      KeyFields = 'IdPersonaReceptor'
      Size = 15
      Lookup = True
    end
    object adodsMasterFormaPago: TStringField
      FieldKind = fkLookup
      FieldName = 'FormaPago'
      LookupDataSet = ADODtStFormasPago
      LookupKeyFields = 'IDCFDIFormaPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCFDIFormaPago'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdentificadorCte: TStringField
      FieldKind = fkLookup
      FieldName = 'IdentificadorCte'
      LookupDataSet = ADODtStIdentificadores
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'Identificador'
      KeyFields = 'IdClienteDomicilio'
      Lookup = True
    end
    object adodsMasterIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
  end
  inherited adodsUpdate: TADODataSet
    OnNewRecord = adodsMasterNewRecord
  end
  inherited ActionList: TActionList
    object ActProcesaFactura: TAction
      Hint = 'Procesa Factura'
      OnExecute = ActProcesaFacturaExecute
    end
    object ActCrearPrefacturas: TAction
      Hint = 'Prefacturaci'#243'n'
      OnExecute = ActCrearPrefacturasExecute
    end
    object ActRegeneraPDF: TAction
      Caption = 'ActRegeneraPDF'
      OnExecute = ActRegeneraPDFExecute
    end
    object ActBuscar: TAction
      Caption = 'ActBuscar'
      OnExecute = ActBuscarExecute
    end
    object ActEnvioCorreoFact: TAction
      Caption = 'Enviar Correo con Factura'
      Hint = 'Enviar Factura por Correo'
      OnExecute = ActEnvioCorreoFactExecute
    end
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 160
    Top = 16
  end
  object ADODtStOrdenSalida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select  OS.*, DS.IDDomicilioCliente, P.IDMetodoPagoCliente ,'#13#10'P.' +
      'RFC, P.RazonSocial NombreCliente, P.idPersona IDPersonaCliente'#13#10 +
      'from OrdenesSalidas OS '#13#10'inner join documentosSalidas DS on DS.i' +
      'ddocumentoSalida= OS.idDocumentoSalida'#13#10'inner Join Personas P on' +
      ' P.IdPersona= DS.IDPersona'#13#10'where OS.IdOrdenEstatus=4'#13#10'and  OS.I' +
      'dOrdenSalida=:IdOrdenSalida'#13#10
    DataSource = DSDatosDocSalida
    IndexFieldNames = 'IdDocumentoSalida'
    MasterFields = 'IDDocumentoSalida'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 160
    object ADODtStOrdenSalidaidOrdenSalida: TAutoIncField
      FieldName = 'idOrdenSalida'
      ReadOnly = True
    end
    object ADODtStOrdenSalidaIdDocumentoSalida: TIntegerField
      FieldName = 'IdDocumentoSalida'
    end
    object ADODtStOrdenSalidaIdOrdenEstatus: TIntegerField
      FieldName = 'IdOrdenEstatus'
    end
    object ADODtStOrdenSalidaIdPersonaRecolecta: TIntegerField
      FieldName = 'IdPersonaRecolecta'
    end
    object ADODtStOrdenSalidaIdPersonaRevisa: TIntegerField
      FieldName = 'IdPersonaRevisa'
    end
    object ADODtStOrdenSalidaIdPersonaEmpaca: TIntegerField
      FieldName = 'IdPersonaEmpaca'
    end
    object ADODtStOrdenSalidaFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object ADODtStOrdenSalidaTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object ADODtStOrdenSalidaFechaIniRecolecta: TDateTimeField
      FieldName = 'FechaIniRecolecta'
    end
    object ADODtStOrdenSalidaFechaFinRecolecta: TDateTimeField
      FieldName = 'FechaFinRecolecta'
    end
    object ADODtStOrdenSalidaFechaIniRevisa: TDateTimeField
      FieldName = 'FechaIniRevisa'
    end
    object ADODtStOrdenSalidaFechaFinRevisa: TDateTimeField
      FieldName = 'FechaFinRevisa'
    end
    object ADODtStOrdenSalidaFechaIniEmpaca: TDateTimeField
      FieldName = 'FechaIniEmpaca'
    end
    object ADODtStOrdenSalidaFechaFinEmpaca: TDateTimeField
      FieldName = 'FechaFinEmpaca'
    end
    object ADODtStOrdenSalidaSubtotal: TFMTBCDField
      FieldName = 'Subtotal'
      Precision = 18
      Size = 6
    end
    object ADODtStOrdenSalidaIVA: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 6
    end
    object ADODtStOrdenSalidaIDDomicilioCliente: TIntegerField
      FieldName = 'IDDomicilioCliente'
    end
    object ADODtStOrdenSalidaIDMetodoPagoCliente: TIntegerField
      FieldName = 'IDMetodoPagoCliente'
    end
    object ADODtStOrdenSalidaRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStOrdenSalidaNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 300
    end
    object ADODtStOrdenSalidaIDPersonaCliente: TAutoIncField
      FieldName = 'IDPersonaCliente'
      ReadOnly = True
    end
  end
  object DSOrdenSalida: TDataSource
    DataSet = ADODtStOrdenSalida
    Left = 164
    Top = 160
  end
  object ADODtStOrdenSalidaItem: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStOrdenSalidaItemNewRecord
    CommandText = 
      'select IdOrdenSalidaItem, IdUnidadMedida, IdOrdenSalida, IdDocum' +
      'entoSalidaDetalle,'#13#10' ClaveProducto, IdProducto, CantidadDespacha' +
      'da, Precio, Importe, CantidadSolicitada, Observaciones'#13#10' from Or' +
      'denesSalidasItems where idOrdenSalida=:IdOrdenSalida'
    DataSource = DSOrdenSalida
    IndexFieldNames = 'IdOrdenSalida'
    MasterFields = 'IdOrdenSalida'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 224
    object ADODtStOrdenSalidaItemIdOrdenSalidaItem: TAutoIncField
      FieldName = 'IdOrdenSalidaItem'
      ReadOnly = True
    end
    object ADODtStOrdenSalidaItemIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object ADODtStOrdenSalidaItemIdDocumentoSalidaDetalle: TIntegerField
      FieldName = 'IdDocumentoSalidaDetalle'
    end
    object ADODtStOrdenSalidaItemIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStOrdenSalidaItemCantidadDespachada: TFloatField
      FieldName = 'CantidadDespachada'
    end
    object ADODtStOrdenSalidaItemCantidadSolicitada: TFloatField
      FieldName = 'CantidadSolicitada'
      ReadOnly = True
    end
    object ADODtStOrdenSalidaItemPrecio: TFMTBCDField
      FieldName = 'Precio'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStOrdenSalidaItemImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStOrdenSalidaItemObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object ADODtStOrdenSalidaItemClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object ADODtStOrdenSalidaItemProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 150
      Lookup = True
    end
    object ADODtStOrdenSalidaItemIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
  end
  object ADODtStCFDIConceptos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDI, IdProducto, IdUnidadMedida, Cantidad, Unidad,'#13#10' D' +
      'escripcion, NoIdentifica, ValorUnitario, Importe, IdOrdenSalidaI' +
      'tem  '#13#10'from  CFDIConceptos'#13#10' Where IdCFDI=:IdCFDI'
    DataSource = DSMaster
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IdCFDI'
    Parameters = <
      item
        Name = 'IdCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 48
    Top = 88
    object ADODtStCFDIConceptosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIConceptosIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStCFDIConceptosIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStCFDIConceptosCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object ADODtStCFDIConceptosUnidad: TStringField
      FieldName = 'Unidad'
      Size = 30
    end
    object ADODtStCFDIConceptosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 400
    end
    object ADODtStCFDIConceptosNoIdentifica: TStringField
      FieldName = 'NoIdentifica'
      Size = 50
    end
    object ADODtStCFDIConceptosValorUnitario: TFMTBCDField
      FieldName = 'ValorUnitario'
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStCFDIConceptosIdOrdenSalidaItem: TIntegerField
      FieldName = 'IdOrdenSalidaItem'
    end
  end
  object ADODtStCFDIImpuestos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStCFDIImpuestosNewRecord
    CommandText = 
      'select IdCFDI, TipoImp, Impuesto, Tasa, Importe  '#13#10'from CFDIImpu' +
      'estos where idCFDI=:IDCFDI'
    DataSource = DSMaster
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IdCFDI'
    Parameters = <
      item
        Name = 'IDCFDI'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 168
    Top = 88
    object ADODtStCFDIImpuestosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStCFDIImpuestosTipoImp: TStringField
      FieldName = 'TipoImp'
      Size = 10
    end
    object ADODtStCFDIImpuestosImpuesto: TStringField
      FieldName = 'Impuesto'
      Size = 10
    end
    object ADODtStCFDIImpuestosTasa: TFloatField
      FieldName = 'Tasa'
    end
    object ADODtStCFDIImpuestosImporte: TFloatField
      FieldName = 'Importe'
    end
  end
  object ADODtStPersonaEmisor: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Pe.idpersona, Pe.RazonSocial,Pe.RFC,'#13#10'Pe.IdMetodoPagoClie' +
      'nte ,Pe.NumCtaPagoCliente ,'#13#10'Pe.IDRegimenFiscalEmisor,RF.Descrip' +
      'cion RegimenFiscalEmisor,'#13#10'PD.IdPersonaDomicilio,  Pd.IdDomicili' +
      'o, '#13#10'Pd.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13#10',' +
      'D.Calle, D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal,'#13 +
      #10'M.DEscripcion Municipio,'#13#10' P.Descripcion Poblacion,'#13#10' E.Descrip' +
      'cion Estado,'#13#10'Pa.descripcion Pais'#13#10#13#10'from  Personas Pe'#13#10'Left Joi' +
      'n PersonasDomicilios PD on Pe.IdPersona=PD.IdPersona '#13#10'and PD.id' +
      'DomicilioTipo=4'#13#10'Left join Domicilios D on PD.IDDomicilio=D.IDDo' +
      'micilio'#13#10'Left Join Poblaciones P on P.idPoblacion=d.IdPoblacion'#13 +
      #10'left join Municipios M on M.idmunicipio=D.IdMunicipio'#13#10'Left Joi' +
      'n Estados E on E.idestado=D.idestado'#13#10'Left Join Paises Pa on Pa.' +
      'idpais=D.Idpais'#13#10'Left join RegimenesFiscales RF on RF.idRegimenF' +
      'iscal=Pe.IdRegimenFiscalEmisor'#13#10'where Pe.iDRol=4 '
    IndexFieldNames = 'idpersona'
    MasterFields = 'IdPersonaEmisor'
    Parameters = <>
    Left = 328
    Top = 152
    object ADODtStPersonaEmisoridpersona: TAutoIncField
      FieldName = 'idpersona'
      ReadOnly = True
    end
    object ADODtStPersonaEmisorRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaEmisorRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStPersonaEmisorIdMetodoPagoCliente: TIntegerField
      FieldName = 'IdMetodoPagoCliente'
    end
    object ADODtStPersonaEmisorNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object ADODtStPersonaEmisorIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStPersonaEmisorIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStPersonaEmisorIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStPersonaEmisorIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object ADODtStPersonaEmisorPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStPersonaEmisorCalle: TStringField
      FieldName = 'Calle'
      Size = 30
    end
    object ADODtStPersonaEmisorNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStPersonaEmisorNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStPersonaEmisorColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStPersonaEmisorCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStPersonaEmisorMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStPersonaEmisorPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStPersonaEmisorEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStPersonaEmisorPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStPersonaEmisorRegimenFiscalEmisor: TStringField
      FieldName = 'RegimenFiscalEmisor'
      Size = 150
    end
  end
  object ADODtStPersonaReceptor: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Pe.idpersona, Pe.RazonSocial,Pe.RFC,'#13#10'Pe.IdMetodoPagoClie' +
      'nte ,Pe.NumCtaPagoCliente ,'#13#10'PD.IdPersonaDomicilio,  Pd.IdDomici' +
      'lio, '#13#10'Pd.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13 +
      #10',D.Calle, D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal' +
      ','#13#10'M.DEscripcion Municipio,'#13#10' P.Descripcion Poblacion,'#13#10' E.Descr' +
      'ipcion Estado,'#13#10'Pa.descripcion Pais'#13#10#13#10'from  Personas Pe'#13#10'Left J' +
      'oin PersonasDomicilios PD on Pe.IdPersona=PD.IdPersona'#13#10'Left joi' +
      'n Domicilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblac' +
      'iones P on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M o' +
      'n M.idmunicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado' +
      '=D.idestado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10'where Pe' +
      '.iDRol=1 '
    Parameters = <>
    Left = 336
    Top = 224
    object ADODtStPersonaReceptoridpersona: TAutoIncField
      FieldName = 'idpersona'
      ReadOnly = True
    end
    object ADODtStPersonaReceptorRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaReceptorRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStPersonaReceptorIdMetodoPagoCliente: TIntegerField
      FieldName = 'IdMetodoPagoCliente'
    end
    object ADODtStPersonaReceptorNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object ADODtStPersonaReceptorIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStPersonaReceptorIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStPersonaReceptorIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStPersonaReceptorIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object ADODtStPersonaReceptorPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStPersonaReceptorCalle: TStringField
      FieldName = 'Calle'
      Size = 30
    end
    object ADODtStPersonaReceptorNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStPersonaReceptorNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStPersonaReceptorColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStPersonaReceptorCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStPersonaReceptorMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStPersonaReceptorPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStPersonaReceptorEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStPersonaReceptorPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
  end
  object ADODtStDatosDocumentoSalida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select DS.IdPersona, ds.IDDocumentoSalida, P.RazonSocial,'#13#10'ds.Id' +
      'DomicilioCliente,P.IdMetodoPagoCliente, P.RFC,P.NumCtaPagoClient' +
      'e'#13#10#13#10' from DocumentosSalidas DS'#13#10' inner join Personas P on P.IDp' +
      'ersona =DS.IdPersona'
    Parameters = <>
    Left = 168
    Top = 283
    object ADODtStDatosDocumentoSalidaIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDatosDocumentoSalidaIDDocumentoSalida: TAutoIncField
      FieldName = 'IDDocumentoSalida'
      ReadOnly = True
    end
    object ADODtStDatosDocumentoSalidaRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStDatosDocumentoSalidaRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStDatosDocumentoSalidaIdMetodoPagoCliente: TIntegerField
      FieldName = 'IdMetodoPagoCliente'
    end
    object ADODtStDatosDocumentoSalidaNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object ADODtStDatosDocumentoSalidaIdDomicilioCliente: TIntegerField
      FieldName = 'IdDomicilioCliente'
    end
  end
  object DSDatosDocSalida: TDataSource
    DataSet = ADODtStDatosDocumentoSalida
    Left = 332
    Top = 283
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdProducto,P.Descripcion,P.PrecioUnitario, I.Existencia' +
      #13#10' FROM Productos P'#13#10' inner join Inventario  I On P.IDProducto=I' +
      '.IdProducto'
    Parameters = <>
    Left = 176
    Top = 224
  end
  object ADODtStDireccionesCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStDireccionesClienteCalcFields
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13#10',D.Calle' +
      ', D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEsc' +
      'ripcion Municipio, P.Descripcion Poblacion, E.Descripcion Estado' +
      ','#13#10'Pa.descripcion Pais'#13#10'from PersonasDomicilios PD'#13#10'inner join D' +
      'omicilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblacion' +
      'es P on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on M' +
      '.idmunicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=D.' +
      'idestado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10#13#10#13#10#13#10
    DataSource = DSMaster
    IndexFieldNames = 'IdPersonaDomicilio'
    MasterFields = 'IdClienteDomicilio'
    Parameters = <>
    Left = 472
    Top = 96
    object ADODtStDireccionesClienteIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStDireccionesClienteIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDireccionesClienteIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStDireccionesClienteIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStDireccionesClienteIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object ADODtStDireccionesClientePredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStDireccionesClienteCalle: TStringField
      FieldName = 'Calle'
      Size = 30
    end
    object ADODtStDireccionesClienteNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStDireccionesClienteNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStDireccionesClienteColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStDireccionesClienteCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStDireccionesClienteMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStDireccionesClientePoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStDireccionesClienteEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStDireccionesClientePais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStDireccionesClienteDirCompleta: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 300
      Calculated = True
    end
  end
  object adodsArchivosCerKey: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdDocumentoCER, IdDocumentoKEY, Clave, '#13#10'Venci' +
      'miento, CER.nombreArchivo NomCert, CER.IdArchivo IdCert, CER.Arc' +
      'hivo ArchiCer, '#13#10'LLave.nombreArchivo NomKey, llave.IdArchivo IdK' +
      'ey, Llave.Archivo  ArchiKey '#13#10' from PersonasCSD '#13#10'inner join Doc' +
      'umentos Cer on CER.IDdocumento=IDDocumentoCER'#13#10'inner join Docume' +
      'ntos Llave on llave.iddocumento =IDDocumentoKey'#13#10'where idPersona' +
      '= :idpersona'
    Parameters = <
      item
        Name = 'idpersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 176
    Top = 360
    object adodsArchivosCerKeyIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsArchivosCerKeyIdDocumentoCER: TIntegerField
      FieldName = 'IdDocumentoCER'
    end
    object adodsArchivosCerKeyIdDocumentoKEY: TIntegerField
      FieldName = 'IdDocumentoKEY'
    end
    object adodsArchivosCerKeyClave: TStringField
      FieldName = 'Clave'
      Size = 100
    end
    object adodsArchivosCerKeyVencimiento: TDateTimeField
      FieldName = 'Vencimiento'
    end
    object adodsArchivosCerKeyNomCert: TStringField
      FieldName = 'NomCert'
      Size = 200
    end
    object adodsArchivosCerKeyIdCert: TGuidField
      FieldName = 'IdCert'
      FixedChar = True
      Size = 38
    end
    object adodsArchivosCerKeyArchiCer: TBlobField
      FieldName = 'ArchiCer'
    end
    object adodsArchivosCerKeyNomKey: TStringField
      FieldName = 'NomKey'
      Size = 200
    end
    object adodsArchivosCerKeyIdKey: TGuidField
      FieldName = 'IdKey'
      FixedChar = True
      Size = 38
    end
    object adodsArchivosCerKeyArchiKey: TBlobField
      FieldName = 'ArchiKey'
    end
  end
  object ADODtStMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta  fr' +
      'om MetodosPago'
    Parameters = <>
    Left = 624
    Top = 208
    object ADODtStMetodoPagoIdMetodoPago: TAutoIncField
      FieldName = 'IdMetodoPago'
      ReadOnly = True
    end
    object ADODtStMetodoPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStMetodoPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtStMetodoPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
  end
  object ADODtStBuscaFolioSerie: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDITipoDocumento, Descripcion, SerieDoc, FolioDoc, '#13#10'T' +
      'ipoComprobante from CFDITipoDocumento'#13#10'where IdCFDITipoDocumento' +
      '=:IdCFDITipoDocumento'
    Parameters = <
      item
        Name = 'IdCFDITipoDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 336
    Top = 360
    object ADODtStBuscaFolioSerieIdCFDITipoDocumento: TAutoIncField
      FieldName = 'IdCFDITipoDocumento'
      ReadOnly = True
    end
    object ADODtStBuscaFolioSerieDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtStBuscaFolioSerieSerieDoc: TStringField
      FieldName = 'SerieDoc'
    end
    object ADODtStBuscaFolioSerieFolioDoc: TLargeintField
      FieldName = 'FolioDoc'
    end
    object ADODtStBuscaFolioSerieTipoComprobante: TStringField
      FieldName = 'TipoComprobante'
      Size = 10
    end
  end
  object ADODtStMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, IdPais, Identificador, Descripcion from Monedas'
    Parameters = <>
    Left = 624
    Top = 272
  end
  object ADODtStTiposDocumentos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDITipoDocumento, Descripcion, SerieDoc, FolioDoc, Tip' +
      'oComprobante from CFDITipoDocumento'
    Parameters = <>
    Left = 616
    Top = 336
    object ADODtStTiposDocumentosIdCFDITipoDocumento: TAutoIncField
      FieldName = 'IdCFDITipoDocumento'
      ReadOnly = True
    end
    object ADODtStTiposDocumentosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtStTiposDocumentosSerieDoc: TStringField
      FieldName = 'SerieDoc'
    end
    object ADODtStTiposDocumentosFolioDoc: TLargeintField
      FieldName = 'FolioDoc'
    end
    object ADODtStTiposDocumentosTipoComprobante: TStringField
      FieldName = 'TipoComprobante'
      Size = 10
    end
  end
  object ADODtStCFDIEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdCFDIEstatus, Identificador, Descripcion from CFDIEstatu' +
      's'
    Parameters = <>
    Left = 624
    Top = 104
  end
  object ADODataSetOrdensalidaOriginal: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select  OS.*  from OrdenesSalidas OS where OS.IdOrdenEstatus=3 -' +
      '-Revisada'#13#10'and not Exists (Select CI.idOrdenSalida From CFDI CI ' +
      'where OS.IdOrdenSalida =Ci.IDOrdenSalida)'
    DataSource = DSDatosDocSalida
    IndexFieldNames = 'IdDocumentoSalida'
    MasterFields = 'IDDocumentoSalida'
    Parameters = <>
    Left = 176
    Top = 449
    object IntegerField1: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdPersonaCliente'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'IdPersona'
      KeyFields = 'IdDocumentoSalida'
      Lookup = True
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreCliente'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdDocumentoSalida'
      Lookup = True
    end
    object IntegerField2: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IDMetPagoCLiente'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'IdMetodoPagoCliente'
      KeyFields = 'IdDocumentoSalida'
      Lookup = True
    end
    object IntegerField3: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdDomiCliente'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'IdDomicilioCliente'
      KeyFields = 'IdDocumentoSalida'
      Lookup = True
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'idOrdenSalida'
      ReadOnly = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'IdDocumentoSalida'
    end
    object IntegerField5: TIntegerField
      FieldName = 'IdOrdenEstatus'
    end
    object IntegerField6: TIntegerField
      FieldName = 'IdPersonaRecolecta'
    end
    object IntegerField7: TIntegerField
      FieldName = 'IdPersonaRevisa'
    end
    object IntegerField8: TIntegerField
      FieldName = 'IdPersonaEmpaca'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'FechaIniRecolecta'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'FechaFinRecolecta'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'FechaIniRevisa'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'FechaFinRevisa'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'FechaIniEmpaca'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'FechaFinEmpaca'
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'Subtotal'
      Precision = 18
      Size = 6
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStFormasPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IDCFDIFormaPago, Identificador, Descripcion from CFDIForm' +
      'asPago'
    Parameters = <>
    Left = 624
    Top = 160
    object ADODtStFormasPagoIDCFDIFormaPago: TAutoIncField
      FieldName = 'IDCFDIFormaPago'
      ReadOnly = True
    end
    object ADODtStFormasPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object ADODtStFormasPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object ADODtStConsultaDirecciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStDireccionesClienteCalcFields
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13#10',D.Calle' +
      ', D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEsc' +
      'ripcion Municipio, P.Descripcion Poblacion, E.Descripcion Estado' +
      ','#13#10'Pa.descripcion Pais'#13#10#13#10'from PersonasDomicilios PD'#13#10'inner join' +
      ' Domicilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaci' +
      'ones P on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on' +
      ' M.idmunicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=' +
      'D.idestado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10'where PD.' +
      'IDPersona=:IDPersona'#13#10#13#10#13#10#13#10
    DataSource = DSMaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IdPersonaReceptor'
    Parameters = <
      item
        Name = 'IDPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 480
    Top = 224
    object ADODtStConsultaDireccionesIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStConsultaDireccionesIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStConsultaDireccionesIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStConsultaDireccionesIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStConsultaDireccionesIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object ADODtStConsultaDireccionesPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStConsultaDireccionesCalle: TStringField
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStConsultaDireccionesNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStConsultaDireccionesNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStConsultaDireccionesColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStConsultaDireccionesCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStConsultaDireccionesMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStConsultaDireccionesPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStConsultaDireccionesEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStConsultaDireccionesPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStConsultaDireccionesDirCompleta: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 300
      Calculated = True
    end
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo FROM Documentos'
    Parameters = <>
    Left = 616
    Top = 416
    object adodsDocumentoIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object adodsDocumentoIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
    end
    object adodsDocumentoIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
    end
    object adodsDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsDocumentoNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsDocumentoIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      FixedChar = True
      Size = 38
    end
    object adodsDocumentoArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
  object ADODtStProductosKardex: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from ProductosKardex'
    Parameters = <>
    Left = 72
    Top = 521
    object ADODtStProductosKardexIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStProductosKardexIdOrdenEntradaItem: TIntegerField
      FieldName = 'IdOrdenEntradaItem'
    end
    object ADODtStProductosKardexIdOrdenSalidaItem: TIntegerField
      FieldName = 'IdOrdenSalidaItem'
    end
    object ADODtStProductosKardexIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object ADODtStProductosKardexReferenciaEspacio: TIntegerField
      FieldName = 'ReferenciaEspacio'
    end
    object ADODtStProductosKardexContenedor: TStringField
      FieldName = 'Contenedor'
      Size = 30
    end
    object ADODtStProductosKardexMovimiento: TStringField
      FieldName = 'Movimiento'
      Size = 1
    end
    object ADODtStProductosKardexCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object ADODtStProductosKardexImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStProductosKardexIdProductoKardex: TAutoIncField
      FieldName = 'IdProductoKardex'
      ReadOnly = True
    end
    object ADODtStProductosKardexIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object ADODtStProductosKardexIdProductoKardexEstatus: TIntegerField
      FieldName = 'IdProductoKardexEstatus'
    end
    object ADODtStProductosKardexFecha: TDateTimeField
      FieldName = 'Fecha'
    end
  end
  object ADODtStInventario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from Inventario'
    Parameters = <>
    Left = 328
    Top = 521
  end
  object ADODtStInformacionEnvio: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from InformacionEntregas where IdCFDI=:IDCFDI'
    DataSource = DSMaster
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IDCFDI'
    Parameters = <
      item
        Name = 'IDCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 536
    Top = 521
    object ADODtStInformacionEnvioIdInfoEntrega: TAutoIncField
      FieldName = 'IdInfoEntrega'
      ReadOnly = True
    end
    object ADODtStInformacionEnvioIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStInformacionEnvioIDPersonaCliente: TIntegerField
      FieldName = 'IDPersonaCliente'
    end
    object ADODtStInformacionEnvioIDPersonaDomicilio: TIntegerField
      FieldName = 'IDPersonaDomicilio'
    end
    object ADODtStInformacionEnvioIDResponsableEntrega: TIntegerField
      FieldName = 'IDResponsableEntrega'
    end
    object ADODtStInformacionEnvioCondicionEntrega: TStringField
      FieldName = 'CondicionEntrega'
      Size = 300
    end
    object ADODtStInformacionEnvioObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 100
    end
    object ADODtStInformacionEnvioEstatusEntrega: TStringField
      FieldName = 'EstatusEntrega'
    end
    object ADODtStInformacionEnvioIdTelefono: TIntegerField
      FieldName = 'IdTelefono'
    end
    object ADODtStInformacionEnvioContenido: TStringField
      FieldName = 'Contenido'
      Size = 500
    end
    object ADODtStInformacionEnvioConducto: TStringField
      FieldName = 'Conducto'
      Size = 100
    end
    object ADODtStInformacionEnvioServicio: TStringField
      FieldName = 'Servicio'
      Size = 50
    end
    object ADODtStInformacionEnvioPagoFlete: TBooleanField
      FieldName = 'PagoFlete'
    end
    object ADODtStInformacionEnvioValor: TFloatField
      FieldName = 'Valor'
    end
    object ADODtStInformacionEnvioAsegurado: TBooleanField
      FieldName = 'Asegurado'
    end
    object ADODtStInformacionEnvioFechaProgramadaEnt: TDateTimeField
      FieldName = 'FechaProgramadaEnt'
    end
    object ADODtStInformacionEnvioFechaRealEnt: TDateTimeField
      FieldName = 'FechaRealEnt'
    end
    object ADODtStInformacionEnvioIdDocumentoGuia: TIntegerField
      FieldName = 'IdDocumentoGuia'
    end
    object ADODtStInformacionEnvioCantidadCajas: TIntegerField
      FieldName = 'CantidadCajas'
    end
  end
  object ADODtStIdentificadores: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13#10',D.Calle' +
      ', D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEsc' +
      'ripcion Municipio, P.Descripcion Poblacion, E.Descripcion Estado' +
      ','#13#10'Pa.descripcion Pais'#13#10#13#10'from PersonasDomicilios PD'#13#10'inner join' +
      ' Domicilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaci' +
      'ones P on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on' +
      ' M.idmunicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=' +
      'D.idestado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10#13#10#13#10#13#10
    Parameters = <>
    Left = 488
    Top = 288
  end
  object ADOQryActualizaInventario: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    SQL.Strings = (
      ''
      '')
    Left = 332
    Top = 568
  end
  object ADODtStDatosActInv: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SElect Co.*, PK.IdAlmacen,PK.IdProductoKardex from CFDIConceptos' +
      ' co'#13#10'  inner Join ProductosKardex PK on PK.IdOrdenSalidaItem=Co.' +
      'IdOrdenSalidaItem'#13#10'where Co.IdCFDI =:IDCFDI        '
    Parameters = <
      item
        Name = 'IDCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 528
    Top = 585
    object ADODtStDatosActInvIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object ADODtStDatosActInvIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStDatosActInvIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStDatosActInvIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStDatosActInvIdOrdenSalidaItem: TIntegerField
      FieldName = 'IdOrdenSalidaItem'
    end
    object ADODtStDatosActInvCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object ADODtStDatosActInvUnidad: TStringField
      FieldName = 'Unidad'
      Size = 30
    end
    object ADODtStDatosActInvDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 400
    end
    object ADODtStDatosActInvNoIdentifica: TStringField
      FieldName = 'NoIdentifica'
      Size = 50
    end
    object ADODtStDatosActInvValorUnitario: TFMTBCDField
      FieldName = 'ValorUnitario'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosActInvImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosActInvIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object ADODtStDatosActInvIdProductoKardex: TAutoIncField
      FieldName = 'IdProductoKardex'
      ReadOnly = True
    end
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 60
    Top = 297
  end
end
