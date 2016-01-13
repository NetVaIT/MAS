inherited dmCotizaciones: TdmCotizaciones
  OldCreateOrder = True
  Height = 628
  Width = 564
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdDocumentoSalida, IdTipoDocumentoSalida, IdPersona,'#13#10' Id' +
      'DocumentoSalidaEstatus, IdMoneda, IdUsuario, FechaRegistro,'#13#10' IV' +
      'A, SubTotal, Total, VigenciaDias, Observaciones,IdDomicilioClien' +
      'te'#13#10' FROM DocumentosSalidas where IdTipoDocumentoSalida=:TipoDoc' +
      'to'
    Parameters = <
      item
        Name = 'TipoDocto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    object adodsMasterIdDocumentoSalida: TAutoIncField
      FieldName = 'IdDocumentoSalida'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdTipoDocumentoSalida: TIntegerField
      FieldName = 'IdTipoDocumentoSalida'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsMasterIdDocumentoSalidaEstatus: TIntegerField
      FieldName = 'IdDocumentoSalidaEstatus'
      Visible = False
    end
    object adodsMasterFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object adodsMasterIVA: TFMTBCDField
      FieldName = 'IVA'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSubTotal: TFMTBCDField
      FieldName = 'SubTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVigenciaDias: TIntegerField
      FieldName = 'VigenciaDias'
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsClientes
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 100
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMoneda
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Lookup = True
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsCotizacionEstatus
      LookupKeyFields = 'IdDocumentoSalidaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoSalidaEstatus'
      Size = 15
      Lookup = True
    end
    object adodsMasterTipoDocumento: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoDocumento'
      LookupDataSet = ADOdsTipoDocumento
      LookupKeyFields = 'IdDocumentoSalidaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdTipoDocumentoSalida'
      Lookup = True
    end
    object adodsMasterIdDomicilioCliente: TIntegerField
      FieldName = 'IdDomicilioCliente'
    end
    object adodsMasterDireccioncliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Direccioncliente'
      LookupDataSet = ADODtStDireccionesCliente
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'DirCompleta'
      KeyFields = 'IdDomicilioCliente'
      Size = 300
      Lookup = True
    end
  end
  object adodsCotizacionesDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeInsert = adodsCotizacionesDetalleBeforeInsert
    AfterPost = adodsCotizacionesDetalleAfterPost
    AfterDelete = adodsCotizacionesDetalleAfterPost
    OnNewRecord = adodsCotizacionesDetalleNewRecord
    CommandText = 
      'SELECT  IdDocumentoSalidaDetalle, IdDocumentoSalida, IdProducto,' +
      ' ClaveProducto, Cantidad, CantidadPendiente, PrecioUnitario, Imp' +
      'orte'#13#10' FROM DocumentosSalidasDetalles'
    DataSource = DSMaster
    IndexFieldNames = 'IdDocumentoSalida'
    MasterFields = 'IdDocumentoSalida'
    Parameters = <>
    Left = 64
    Top = 80
    object adodsCotizacionesDetalleIdDocumentoSalidaDetalle: TAutoIncField
      FieldName = 'IdDocumentoSalidaDetalle'
      ReadOnly = True
    end
    object adodsCotizacionesDetalleIdDocumentoSalida: TIntegerField
      FieldName = 'IdDocumentoSalida'
    end
    object adodsCotizacionesDetalleIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object adodsCotizacionesDetalleClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      OnChange = adodsCotizacionesDetalleClaveProductoChange
      Size = 50
    end
    object adodsCotizacionesDetalleCantidad: TFloatField
      FieldName = 'Cantidad'
      OnChange = adodsCotizacionesDetalleCantidadChange
    end
    object adodsCotizacionesDetalleCantidadPendiente: TFloatField
      FieldName = 'CantidadPendiente'
    end
    object adodsCotizacionesDetallePrecioUnitario: TFMTBCDField
      DisplayLabel = 'Precio Unitario'
      FieldName = 'PrecioUnitario'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCotizacionesDetalleImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCotizacionesDetalleProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 150
      Lookup = True
    end
    object adodsCotizacionesDetalleExistenciaActual: TFloatField
      FieldKind = fkLookup
      FieldName = 'ExistenciaActual'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Existencia'
      KeyFields = 'IdProducto'
      Lookup = True
    end
  end
  object adodsUsuario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUsuario, Nombre FROM Usuarios'
    Parameters = <>
    Left = 192
    Top = 224
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdProducto,P.Descripcion,P.PrecioUnitario, I.Existencia' +
      #13#10' FROM Productos P'#13#10' inner join Inventario  I On P.IDProducto=I' +
      '.IdProducto'
    Parameters = <>
    Left = 64
    Top = 144
  end
  object adodsClientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdPersona,P.RFC, P.RazonSocial, P.IDRol '#13#10'FROM Personas' +
      ' P'#13#10#13#10'where P.IdRol=1  '
    Parameters = <>
    Left = 192
    Top = 40
    object adodsClientesIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsClientesRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsClientesRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsClientesIDRol: TIntegerField
      FieldName = 'IDRol'
    end
  end
  object adodsCotizacionEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Identificador, IdDocumentoSalidaEstatus, Descripcion '#13#10#13#10 +
      'FROM DocumentosSalidasEstatus'
    Parameters = <>
    Left = 192
    Top = 104
    object adodsCotizacionEstatusIdDocumentoSalidaEstatus: TAutoIncField
      FieldName = 'IdDocumentoSalidaEstatus'
      ReadOnly = True
    end
    object adodsCotizacionEstatusIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsCotizacionEstatusDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object adodsMoneda: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdMoneda, Descripcion FROM Monedas'
    Parameters = <>
    Left = 192
    Top = 160
    object adodsMonedaIdMoneda: TAutoIncField
      FieldName = 'IdMoneda'
      ReadOnly = True
    end
    object adodsMonedaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
  object ADOdsTipoDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumentoSalidaTipo, Identificador, Descripcion from Do' +
      'cumentosSalidasTipos'
    Parameters = <>
    Left = 312
    Top = 224
    object ADOdsTipoDocumentoIdDocumentoSalidaTipo: TAutoIncField
      FieldName = 'IdDocumentoSalidaTipo'
      ReadOnly = True
    end
    object ADOdsTipoDocumentoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object ADOdsTipoDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 15
    end
  end
  object ADODSAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 64
    Top = 224
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 132
    Top = 40
  end
  object ADODtStOrdenSalida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select idOrdenSalida, IdDocumentoSalida, IdOrdenEstatus, '#13#10'IdPer' +
      'sonaRecolecta, IdPersonaRevisa, IdPersonaEmpaca, '#13#10'FechaRegistro' +
      ', Total, FechaIniRecolecta, FechaFinRecolecta, '#13#10'FechaIniRevisa,' +
      ' FechaFinRevisa, FechaIniEmpaca, FechaFinEmpaca,'#13#10' Subtotal, IVA' +
      #13#10'from OrdenesSalidas where iddocumentoSalida=:IDDocumentoSalida'
    DataSource = DSMaster
    IndexFieldNames = 'IdDocumentoSalida'
    MasterFields = 'IdDocumentoSalida'
    Parameters = <
      item
        Name = 'IDDocumentoSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    Top = 408
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
    object ADODtStOrdenSalidaEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = ADODtStOrdenSalEstatus
      LookupKeyFields = 'IdOrdenEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrdenEstatus'
      Size = 15
      Lookup = True
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
  end
  object ADODtStOrdenSalidaItem: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStOrdenSalidaItemAfterPost
    OnNewRecord = ADODtStOrdenSalidaItemNewRecord
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
        Size = 4
        Value = Null
      end>
    Left = 288
    Top = 408
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
      OnChange = ADODtStOrdenSalidaItemCantidadDespachadaChange
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
  object DSOrdenSalida: TDataSource
    DataSet = ADODtStOrdenSalida
    Left = 180
    Top = 400
  end
  object ADODtStOrdenSalEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdOrdenEstatus, Identificador, Descripcion from OrdenesEs' +
      'tatus'
    Parameters = <>
    Left = 64
    Top = 488
    object ADODtStOrdenSalEstatusIdOrdenEstatus: TIntegerField
      FieldName = 'IdOrdenEstatus'
    end
    object ADODtStOrdenSalEstatusIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStOrdenSalEstatusDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 284
    Top = 488
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
      ','#13#10'Pa.descripcion Pais'#13#10#13#10'from PersonasDomicilios PD'#13#10'inner join' +
      ' Domicilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaci' +
      'ones P on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on' +
      ' M.idmunicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=' +
      'D.idestado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10'where PD.' +
      'IDPersona=:IDPersona'#13#10#13#10#13#10#13#10
    DataSource = DSMaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IDPersona'
    Parameters = <
      item
        Name = 'IDPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 448
    Top = 392
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
      Size = 50
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
  object ADODtStProductosKardex: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from ProductosKardex'
    Parameters = <>
    Left = 64
    Top = 553
    object ADODtStProductosKardexIdProductosKardex: TAutoIncField
      FieldName = 'IdProductosKardex'
      ReadOnly = True
    end
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
    object ADODtStProductosKardexIdSeccion: TIntegerField
      FieldName = 'IdSeccion'
    end
    object ADODtStProductosKardexReferenciaEspacio: TIntegerField
      FieldName = 'ReferenciaEspacio'
    end
    object ADODtStProductosKardexContenedor: TStringField
      FieldName = 'Contenedor'
      Size = 30
    end
    object ADODtStProductosKardexFecha: TWideStringField
      FieldName = 'Fecha'
      Size = 10
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
  end
  object ADODtStDireccAuxiliar: TADODataSet
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
    Parameters = <
      item
        Name = 'IDPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 448
    Top = 336
    object AutoIncField1: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'IdPersona'
    end
    object IntegerField2: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object IntegerField3: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object IntegerField4: TIntegerField
      FieldName = 'Identificador'
    end
    object BooleanField1: TBooleanField
      FieldName = 'Predeterminado'
    end
    object StringField1: TStringField
      FieldName = 'Calle'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object StringField8: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object StringField9: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object StringField10: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 300
      Calculated = True
    end
  end
end
