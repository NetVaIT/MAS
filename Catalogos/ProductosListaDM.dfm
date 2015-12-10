inherited dmProductosLista: TdmProductosLista
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdProducto, Descripcion, IdUnidadMedida, PrecioUnitario,'#13 +
      #10' Maximo, Minimo, PuntoReorden, IdProductoTipo, IdProductoEstatu' +
      's'#13#10', Identificador1, Identificador2, Identificador3 FROM Product' +
      'os'
    Left = 32
    Top = 24
    object adodsMasterIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsMasterIdentificador1: TStringField
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsMasterIdentificador2: TStringField
      FieldName = 'Identificador2'
      Size = 50
    end
    object adodsMasterIdentificador3: TStringField
      FieldName = 'Identificador3'
      Size = 50
    end
    object adodsMasterIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object adodsMasterPrecioUnitario: TFloatField
      FieldName = 'PrecioUnitario'
    end
    object adodsMasterIdProductoTipo: TIntegerField
      FieldName = 'IdProductoTipo'
    end
    object adodsMasterIdProductoEstatus: TIntegerField
      FieldName = 'IdProductoEstatus'
    end
  end
end
