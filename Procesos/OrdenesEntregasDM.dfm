inherited dmOrdenesEntregas: TdmOrdenesEntregas
  Height = 420
  Width = 568
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    CommandText = 
      'select IdInfoEntrega, IdCFDI, IDPersonaCliente, IDPersonaDomicil' +
      'io, '#13#10'IDResponsableEntrega, FechaProgramadaEnt, FechaRealEnt,'#13#10' ' +
      'CondicionEntrega, Observaciones, EstatusEntrega, IdTelefono,'#13#10' I' +
      'dDocumentoGuia, Contenido, Conducto, Servicio, PagoFlete, Valor,' +
      #13#10' Asegurado, CantidadCajas, IdPersonaEmpaca, FechaIniEmpaque, '#13 +
      #10'FechaFinEmpaque, IdEstatusOrdenEntrega from InformacionEntregas'
    object adodsMasterIdInfoEntrega: TAutoIncField
      DisplayLabel = 'No.Orden Entrega'
      FieldName = 'IdInfoEntrega'
      ReadOnly = True
    end
    object adodsMasterIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object adodsMasterIDPersonaCliente: TIntegerField
      FieldName = 'IDPersonaCliente'
    end
    object adodsMasterIDPersonaDomicilio: TIntegerField
      FieldName = 'IDPersonaDomicilio'
    end
    object adodsMasterIDResponsableEntrega: TIntegerField
      FieldName = 'IDResponsableEntrega'
    end
    object adodsMasterFechaProgramadaEnt: TDateTimeField
      DisplayLabel = 'Fecha Entrega Programada'
      FieldName = 'FechaProgramadaEnt'
    end
    object adodsMasterFechaRealEnt: TDateTimeField
      FieldName = 'FechaRealEnt'
    end
    object adodsMasterCondicionEntrega: TStringField
      FieldName = 'CondicionEntrega'
      Size = 300
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 100
    end
    object adodsMasterEstatusEntrega: TStringField
      FieldName = 'EstatusEntrega'
    end
    object adodsMasterIdTelefono: TIntegerField
      FieldName = 'IdTelefono'
    end
    object adodsMasterIdDocumentoGuia: TIntegerField
      FieldName = 'IdDocumentoGuia'
    end
    object adodsMasterContenido: TStringField
      FieldName = 'Contenido'
      Size = 500
    end
    object adodsMasterConducto: TStringField
      FieldName = 'Conducto'
      Size = 100
    end
    object adodsMasterServicio: TStringField
      FieldName = 'Servicio'
      Size = 50
    end
    object adodsMasterPagoFlete: TBooleanField
      FieldName = 'PagoFlete'
    end
    object adodsMasterValor: TFloatField
      FieldName = 'Valor'
    end
    object adodsMasterAsegurado: TBooleanField
      FieldName = 'Asegurado'
    end
    object adodsMasterCantidadCajas: TIntegerField
      FieldName = 'CantidadCajas'
    end
    object adodsMasterIdPersonaEmpaca: TIntegerField
      FieldName = 'IdPersonaEmpaca'
    end
    object adodsMasterFechaIniEmpaque: TDateTimeField
      FieldName = 'FechaIniEmpaque'
    end
    object adodsMasterFechaFinEmpaque: TDateTimeField
      FieldName = 'FechaFinEmpaque'
    end
    object adodsMasterIdEstatusOrdenEntrega: TIntegerField
      FieldName = 'IdEstatusOrdenEntrega'
    end
    object adodsMasterDocGuia: TStringField
      FieldKind = fkLookup
      FieldName = 'DocGuia'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumentoGuia'
      Size = 100
      Lookup = True
    end
    object adodsMasterPaqueteria: TStringField
      FieldKind = fkLookup
      FieldName = 'Paqueteria'
      LookupDataSet = ADODtStPaqueterias
      LookupKeyFields = 'Descripcion'
      LookupResultField = 'Descripcion'
      KeyFields = 'Conducto'
      Size = 50
      Lookup = True
    end
    object adodsMasterTelefonocompleto: TStringField
      FieldKind = fkLookup
      FieldName = 'Telefonocompleto'
      LookupDataSet = ADODtStTelefonos
      LookupKeyFields = 'IdTelefono'
      LookupResultField = 'TeleconLada'
      KeyFields = 'IdTelefono'
      Size = 100
      Lookup = True
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IDPersonaCliente'
      Size = 150
      Lookup = True
    end
  end
  object DSInfoEnviodetalle: TDataSource
    DataSet = AdoDtStInfoEntregaDetalle
    Left = 228
    Top = 51
  end
  object AdoDtStInfoEntregaDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdInformacionentregaDetalle, IdInfoEntrega, IdOrdenSalida' +
      #13#10' from InformacionEntregasDetalles'
    DataSource = DSMaster
    IndexFieldNames = 'IdInfoEntrega'
    MasterFields = 'IdInfoEntrega'
    Parameters = <>
    Left = 124
    Top = 83
    object AdoDtStInfoEntregaDetalleIdInformacionentregaDetalle: TAutoIncField
      FieldName = 'IdInformacionentregaDetalle'
      ReadOnly = True
    end
    object AdoDtStInfoEntregaDetalleIdInfoEntrega: TIntegerField
      FieldName = 'IdInfoEntrega'
    end
    object AdoDtStInfoEntregaDetalleIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
  end
  object ADODtStOrdensalida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Os.idOrdenSalida, IdDocumentoSalida, IdOrdenEstatus, '#13#10'Id' +
      'PersonaRecolecta, IdPersonaRevisa, IdPersonaEmpaca, '#13#10'OS.FechaRe' +
      'gistro, OS.Total, FechaIniRecolecta, FechaFinRecolecta, '#13#10'FechaI' +
      'niRevisa, FechaFinRevisa, FechaIniEmpaca, FechaFinEmpaca,'#13#10' IdPe' +
      'rsonaAutoriza, FechaAutoriza, IdGeneraCFDITipoDoc, Acumula,'#13#10'OS.' +
      ' Subtotal, OS.IVA,os.IDPersonaDomicilio, IED.IDInfoentrega'#13#10'from' +
      ' OrdenesSalidas OS'#13#10'inner join InformacionentregasDetalles IED  ' +
      'on IED.idordenSalida=os.idordenSalida '#13#10#13#10'Order by IdOrdenEstatu' +
      's,OS.FechaRegistro Desc'
    DataSource = DSMaster
    IndexFieldNames = 'IDInfoentrega'
    MasterFields = 'IdInfoEntrega'
    Parameters = <>
    Left = 40
    Top = 144
    object ADODtStOrdensalidaidOrdenSalida: TAutoIncField
      FieldName = 'idOrdenSalida'
      ReadOnly = True
    end
    object ADODtStOrdensalidaIdDocumentoSalida: TIntegerField
      FieldName = 'IdDocumentoSalida'
    end
    object ADODtStOrdensalidaIdOrdenEstatus: TIntegerField
      FieldName = 'IdOrdenEstatus'
    end
    object ADODtStOrdensalidaFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object ADODtStOrdensalidaTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object ADODtStOrdensalidaAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object ADODtStOrdensalidaSubtotal: TFMTBCDField
      FieldName = 'Subtotal'
      Precision = 18
      Size = 6
    end
    object ADODtStOrdensalidaIVA: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 6
    end
    object ADODtStOrdensalidaIDPersonaDomicilio: TIntegerField
      FieldName = 'IDPersonaDomicilio'
    end
    object ADODtStOrdensalidaIDInfoentrega: TIntegerField
      FieldName = 'IDInfoentrega'
    end
  end
  object ADODtStDatosDocumentoSalida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select DS.IdPersona, ds.IDDocumentoSalida, P.RazonSocial, '#13#10'DS.I' +
      'dPaqueteria, DS.Servicio, DS.IdDomicilioCliente, PD.IDDomicilio,' +
      'Pd.Identificador as IdentificadorCte'#13#10' from DocumentosSalidas DS' +
      #13#10' inner join Personas P on P.IDpersona =DS.IdPersona'#13#10'inner joi' +
      'n PersonasDomicilios PD on PD.IdPersonaDomicilio =Ds.IDDomicilio' +
      'Cliente'
    DataSource = DSOrdenSalida
    IndexFieldNames = 'IDDocumentoSalida'
    MasterFields = 'IdDocumentoSalida'
    Parameters = <>
    Left = 272
    Top = 251
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
    object ADODtStDatosDocumentoSalidaIdPaqueteria: TIntegerField
      FieldName = 'IdPaqueteria'
    end
    object ADODtStDatosDocumentoSalidaServicio: TStringField
      FieldName = 'Servicio'
      Size = 50
    end
    object ADODtStDatosDocumentoSalidaIdDomicilioCliente: TIntegerField
      FieldName = 'IdDomicilioCliente'
    end
    object ADODtStDatosDocumentoSalidaIDDomicilio: TIntegerField
      FieldName = 'IDDomicilio'
    end
    object ADODtStDatosDocumentoSalidaIdentificadorCte: TIntegerField
      FieldName = 'IdentificadorCte'
    end
  end
  object DSDatosDocSalida: TDataSource
    DataSet = ADODtStDatosDocumentoSalida
    Left = 396
    Top = 251
  end
  object ADODtStTelefonos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStTelefonosCalcFields
    CommandText = 'Select * from Telefonos'
    DataSource = DSDatosDocSalida
    IndexFieldNames = 'IdPersona;IdDomicilio'
    MasterFields = 'IdPersona;IDDomicilio'
    Parameters = <>
    Left = 396
    Top = 171
    object ADODtStTelefonosTelefono: TStringField
      FieldName = 'Telefono'
    end
    object ADODtStTelefonosIdTelefono: TAutoIncField
      FieldName = 'IdTelefono'
      ReadOnly = True
    end
    object ADODtStTelefonosIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStTelefonosIdTelefonoTipo: TIntegerField
      FieldName = 'IdTelefonoTipo'
    end
    object ADODtStTelefonosIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStTelefonosLada: TStringField
      FieldName = 'Lada'
      Size = 10
    end
    object ADODtStTelefonosPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStTelefonosTeleconLada: TStringField
      FieldKind = fkCalculated
      FieldName = 'TeleconLada'
      Size = 40
      Calculated = True
    end
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 116
    Top = 19
  end
  object DSOrdenSalida: TDataSource
    DataSet = ADODtStOrdensalida
    Left = 132
    Top = 147
  end
  object ADODtStOrdenSalidaItem: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdOrdenSalidaItem, IdOrdenSalida, IdDocumentoSalidaDetall' +
      'e, IdUnidadMedida,'#13#10' IdProducto, CantidadDespachada, Precio, Imp' +
      'orte, CantidadSolicitada, Observaciones'#13#10', ClaveProducto from Or' +
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
        Value = 36
      end>
    Left = 48
    Top = 216
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
      DisplayLabel = 'Cantidad Despachada'
      FieldName = 'CantidadDespachada'
    end
    object ADODtStOrdenSalidaItemCantidadSolicitada: TFloatField
      DisplayLabel = 'Cantidad Solicitada'
      FieldName = 'CantidadSolicitada'
    end
    object ADODtStOrdenSalidaItemPrecio: TFMTBCDField
      FieldName = 'Precio'
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
    object ADODtStOrdenSalidaItemClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object ADODtStOrdenSalidaItemIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
  end
  object adodsDocumento: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumento, NombreArchivo FROM Documentos'
    Parameters = <>
    Left = 272
    Top = 312
    object adodsDocumentoIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object adodsDocumentoNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
  end
  object ADODtStPaqueterias: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPaqueteria, Identificador, Descripcion from Paqueterias'
    Parameters = <>
    Left = 48
    Top = 288
    object ADODtStPaqueteriasIdPaqueteria: TAutoIncField
      FieldName = 'IdPaqueteria'
      ReadOnly = True
    end
    object ADODtStPaqueteriasIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object ADODtStPaqueteriasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object adodsProductos: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdProducto,P.Descripcion,P.PrecioUnitario, I.Existencia' +
      #13#10' FROM Productos P'#13#10' inner join Inventario  I On P.IDProducto=I' +
      '.IdProducto'
    Parameters = <>
    Left = 232
    Top = 144
  end
end
