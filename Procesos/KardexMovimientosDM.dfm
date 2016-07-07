inherited dmKardexMovimientos: TdmKardexMovimientos
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforeOpen = adodsMasterBeforeOpen
    CommandText = 
      'select IdProductoKardex, IdAlmacen, Pk.IdProducto,'#13#10' IdProductoK' +
      'ardexEstatus, IdOrdenEntradaItem, IdOrdenSalidaItem,'#13#10' IdMoneda,' +
      ' Fecha, Movimiento, Cantidad, Importe, PrecioUnitario, '#13#10'CostoUn' +
      'itario from ProductosKardex PK'#13#10'where IdProducto=:IdProducto'#13#10'Or' +
      'der by fecha'#13#10#13#10
    DataSource = DSProductos
    Parameters = <
      item
        Name = 'IdProducto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    object adodsMasterIdProductoKardex: TAutoIncField
      FieldName = 'IdProductoKardex'
      ReadOnly = True
    end
    object adodsMasterIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object adodsMasterIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object adodsMasterIdProductoKardexEstatus: TIntegerField
      FieldName = 'IdProductoKardexEstatus'
    end
    object adodsMasterIdOrdenEntradaItem: TIntegerField
      FieldName = 'IdOrdenEntradaItem'
    end
    object adodsMasterIdOrdenSalidaItem: TIntegerField
      FieldName = 'IdOrdenSalidaItem'
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterMovimiento: TStringField
      FieldName = 'Movimiento'
      Size = 1
    end
    object adodsMasterCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object adodsMasterPrecioUnitario: TFMTBCDField
      FieldName = 'PrecioUnitario'
      Precision = 18
      Size = 6
    end
    object adodsMasterCostoUnitario: TFMTBCDField
      FieldName = 'CostoUnitario'
      Precision = 18
      Size = 6
    end
    object adodsMasterProducto: TStringField
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
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProducto, Identificador1, Identificador2, Identificador' +
      '3,'#13#10' Descripcion from Productos'#13#10'Order by Descripcion'
    Parameters = <>
    Left = 160
    Top = 72
    object adodsProductosIdProducto: TAutoIncField
      FieldName = 'IdProducto'
      ReadOnly = True
    end
    object adodsProductosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsProductosIdentificador1: TStringField
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsProductosIdentificador2: TStringField
      FieldName = 'Identificador2'
      Size = 50
    end
    object adodsProductosIdentificador3: TStringField
      FieldName = 'Identificador3'
      Size = 50
    end
  end
  object DSProductos: TDataSource
    DataSet = adodsProductos
    Left = 116
    Top = 16
  end
end
