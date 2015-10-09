inherited dmCotizaciones: TdmCotizaciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCotizacion, FechaCotizacion, IdPersona, IdCotizacionEst' +
      'atus, IdMoneda, IdUsuario, VigenciaCotizacion, Observaciones, IV' +
      'A, SubTotal, Total FROM Cotizaciones'
    Left = 64
    object adodsMasterIdCotizacion: TIntegerField
      FieldName = 'IdCotizacion'
      Visible = False
    end
    object adodsMasterFechaCotizacion: TWideStringField
      FieldName = 'FechaCotizacion'
      Size = 10
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsClientes
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 300
      Lookup = True
    end
    object adodsMasterIdCotizacionEstatus: TIntegerField
      FieldName = 'IdCotizacionEstatus'
      Visible = False
    end
    object adodsMasterCotizacionEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'CotizacionEstatus'
      LookupDataSet = adodsCotizacionEstatus
      LookupKeyFields = 'IdCotizacionEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCotizacionEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMoneda
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsMasterUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = adodsUsuario
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Nombre'
      KeyFields = 'IdUsuario'
      Size = 100
      Lookup = True
    end
    object adodsMasterVigenciaCotizacion: TWideStringField
      FieldName = 'VigenciaCotizacion'
      Size = 10
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterIVA: TFloatField
      FieldName = 'IVA'
    end
    object adodsMasterSubTotal: TFloatField
      FieldName = 'SubTotal'
    end
    object adodsMasterTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object adodsCotizacionesDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCotizacionDetalle, IdCotizacion, Cantidad, IdProducto, ' +
      'ClaveProducto, PrecioUnitario, Importe FROM CotizacionesDetalle ' +
      'WHERE IdCotizacion = :IdCotizacion'
    Parameters = <
      item
        Name = 'IdCotizacion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    Top = 80
    object adodsCotizacionesDetalleIdCotizacionDetalle: TIntegerField
      FieldName = 'IdCotizacionDetalle'
      Visible = False
    end
    object adodsCotizacionesDetalleIdCotizacion: TIntegerField
      FieldName = 'IdCotizacion'
      Visible = False
    end
    object adodsCotizacionesDetalleCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object adodsCotizacionesDetalleIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsCotizacionesDetalleClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object adodsCotizacionesDetalleProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 255
      Lookup = True
    end
    object adodsCotizacionesDetallePrecioUnitario: TFloatField
      FieldName = 'PrecioUnitario'
    end
    object adodsCotizacionesDetalleImporte: TFloatField
      FieldName = 'Importe'
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
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 192
    Top = 40
  end
  object adodsCotizacionEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdCotizacionEstatus, Descripcion FROM CotizacionesEstatus'
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
  end
end
