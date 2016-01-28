inherited dmDocumentosEntradas: TdmDocumentosEntradas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdDocumentoEntrada, IdDocumentoEntradaTipo, IdDocumentoEn' +
      'tradaEstatus, IdPersona, IdMoneda, IdUsuario, Fecha, TipoCambio,' +
      ' SubTotal, IVA, Total, Observaciones from DocumentosEntradas'
    object adodsMasterIdDocumentoEntrada: TAutoIncField
      FieldName = 'IdDocumentoEntrada'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdDocumentoEntradaTipo: TIntegerField
      FieldName = 'IdDocumentoEntradaTipo'
      Visible = False
    end
    object adodsMasterIdDocumentoEntradaEstatus: TIntegerField
      FieldName = 'IdDocumentoEntradaEstatus'
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
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsTipos
      LookupKeyFields = 'IdDocumentoEntradaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoEntradaTipo'
      Size = 15
      Lookup = True
    end
    object adodsMasterFecha: TWideStringField
      FieldName = 'Fecha'
      Size = 10
    end
    object adodsMasterProvedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Provedor'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 300
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterTipoCambio: TFMTBCDField
      FieldName = 'TipoCambio'
      Precision = 18
      Size = 6
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdDocumentoEntradaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoEntradaEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterSubTotal: TFMTBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 6
    end
    object adodsMasterIVA: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = adodsUsuarios
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Login'
      KeyFields = 'IdUsuario'
      Size = 15
      Lookup = True
    end
  end
  object adodsTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumentoEntradaTipo, Descripcion from DocumentosEntrad' +
      'asTipos'
    Parameters = <>
    Left = 160
    Top = 64
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumentoEntradaEstatus, Descripcion from DocumentosEnt' +
      'radasEstatus'
    Parameters = <>
    Left = 160
    Top = 112
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPersona, RazonSocial from Personas'
    Parameters = <>
    Left = 160
    Top = 168
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 160
    Top = 224
  end
  object adodsUsuarios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdUsuario, Login from Usuarios'
    Parameters = <>
    Left = 160
    Top = 280
  end
  object dsmaster: TDataSource
    DataSet = adodsMaster
    Left = 96
    Top = 16
  end
  object adodsDocumentosDetalles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumentoentradaDetalle, IdDocumentoEntrada, IdAlmacen,' +
      ' IdProducto, ClaveProducto, Cantidad, CantidadPendiente, Precio,' +
      ' Importe from DocumentosEntradasDetalles'#13#10'WHERE IdDocumentoEntra' +
      'da = :IdDocumentoEntrada'
    DataSource = dsmaster
    MasterFields = 'IdDocumentoEntrada'
    Parameters = <
      item
        Name = 'IdDocumentoEntrada'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 32
    Top = 72
    object adodsDocumentosDetallesIdDocumentoentradaDetalle: TAutoIncField
      FieldName = 'IdDocumentoentradaDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsDocumentosDetallesIdDocumentoEntrada: TIntegerField
      FieldName = 'IdDocumentoEntrada'
      Visible = False
    end
    object adodsDocumentosDetallesIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
      Visible = False
    end
    object adodsDocumentosDetallesIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsDocumentosDetallesClaveProducto: TStringField
      DisplayLabel = 'Identificador'
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object adodsDocumentosDetallesProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 255
      Lookup = True
    end
    object adodsDocumentosDetallesCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object adodsDocumentosDetallesCantidadPendiente: TFloatField
      DisplayLabel = 'Pendiente'
      FieldName = 'CantidadPendiente'
    end
    object adodsDocumentosDetallesPrecio: TFMTBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 6
    end
    object adodsDocumentosDetallesImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProducto, Descripcion from Productos'
    Parameters = <>
    Left = 40
    Top = 136
  end
end
