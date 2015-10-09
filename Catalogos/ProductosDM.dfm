inherited dmProductos: TdmProductos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdProducto, Descripcion, IdUnidadMedida, PrecioUnitario, ' +
      'IdUbicacion, Maximo, Minimo, PuntoReorden, IdProductoTipo, IdPro' +
      'ductoEstatus, IdDocumentos FROM Productos'
    object adodsMasterIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsMasterIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
      Visible = False
    end
    object adodsMasterPrecioUnitario: TFloatField
      FieldName = 'PrecioUnitario'
    end
    object adodsMasterIdUbicacion: TIntegerField
      FieldName = 'IdUbicacion'
      Visible = False
    end
    object adodsMasterMaximo: TFloatField
      FieldName = 'Maximo'
    end
    object adodsMasterMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object adodsMasterPuntoReorden: TFloatField
      FieldName = 'PuntoReorden'
    end
    object adodsMasterIdProductoTipo: TIntegerField
      FieldName = 'IdProductoTipo'
      Visible = False
    end
    object adodsMasterIdProductoEstatus: TIntegerField
      FieldName = 'IdProductoEstatus'
      Visible = False
    end
    object adodsMasterIdDocumentos: TIntegerField
      FieldName = 'IdDocumentos'
      Visible = False
    end
    object adodsMasterUnidadMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadMedida'
      LookupDataSet = adodsUnidadMedida
      LookupKeyFields = 'IdUnidadMedida'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdUnidadMedida'
      Size = 50
      Lookup = True
    end
    object adodsMasterProductoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductoTipo'
      LookupDataSet = adodsProductoTipo
      LookupKeyFields = 'IdProductoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProductoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterProductoEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductoEstatus'
      LookupDataSet = adodsProductoEstatus
      LookupKeyFields = 'IdProductoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProductoEstatus'
      Size = 50
      Lookup = True
    end
  end
  object ADODataSet1: TADODataSet
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 320
    Top = 160
  end
  object adodsUnidadMedida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUnidadMedida, Descripcion FROM UnidadMedida'
    Parameters = <>
    Left = 160
    Top = 56
  end
  object adodsProductoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdProductoTipo, Descripcion FROM ProductosTipos'
    Parameters = <>
    Left = 160
    Top = 112
  end
  object adodsProductoEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdProductoEstatus, Descripcion FROM ProductosEstatus'
    Parameters = <>
    Left = 160
    Top = 168
  end
  object adodsProductoIdentificador: TADODataSet
    Connection = _dmConection.ADOConnection
    CommandText = 
      'SELECT IdProductoIdentificador, IdProducto, Identificador FROM P' +
      'roductosIdentificadores WHERE IdProducto = :IdProducto'
    Parameters = <
      item
        Name = 'IdProducto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 248
    Top = 256
  end
end
