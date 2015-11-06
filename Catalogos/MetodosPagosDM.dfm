inherited dmMetodosPagos: TdmMetodosPagos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMetodoPago, Identificador, Descripcion, ExigeCuenta'#13#10'FR' +
      'OM MetodosPago'
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
  end
end
