inherited dmCotizaciones: TdmCotizaciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumentoSalida, IdTipoDocumentoSalida, IdPersona,'#13#10' Id' +
      'DocumentoVentaEstatus, IdMoneda, IdUsuario, FechaRegistro,'#13#10' IVA' +
      ', SubTotal, Total, VigenciaDias, Observaciones'#13#10' FROM Documentos' +
      'Salidas'
    Left = 64
    object adodsMasterIdDocumentoSalida: TAutoIncField
      FieldName = 'IdDocumentoSalida'
      ReadOnly = True
    end
    object adodsMasterIdTipoDocumentoSalida: TIntegerField
      FieldName = 'IdTipoDocumentoSalida'
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterIdDocumentoVentaEstatus: TIntegerField
      FieldName = 'IdDocumentoVentaEstatus'
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object adodsMasterFechaRegistro: TWideStringField
      FieldName = 'FechaRegistro'
      Size = 10
    end
    object adodsMasterIVA: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 6
    end
    object adodsMasterSubTotal: TFMTBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
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
      KeyFields = 'IdDocumentoVentaEstatus'
      Lookup = True
    end
  end
  object adodsCotizacionesDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT  IdDocumentoSalidaDetalle, IdDocumentoSalida, IdProducto,' +
      ' ClaveProducto, Cantidad, CantidadPendiente, PrecioUnitario, Imp' +
      'orte'#13#10' FROM DocumentosSalidasDetalles WHERE  IdDocumentoSalida= ' +
      ':IdDocumentoSalida'
    Parameters = <
      item
        Name = 'IdDocumentoSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
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
      Size = 50
    end
    object adodsCotizacionesDetalleCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object adodsCotizacionesDetalleCantidadPendiente: TFloatField
      FieldName = 'CantidadPendiente'
    end
    object adodsCotizacionesDetallePrecioUnitario: TFMTBCDField
      FieldName = 'PrecioUnitario'
      Precision = 18
      Size = 6
    end
    object adodsCotizacionesDetalleImporte: TFMTBCDField
      FieldName = 'Importe'
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
    CommandText = 'SELECT IdProducto, Descripcion, PrecioUnitario FROM Productos'
    Parameters = <>
    Left = 64
    Top = 168
  end
  object adodsClientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona,RFC, RazonSocial FROM Personas'
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
end
