inherited dmMonedas: TdmMonedas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'SELECT IdMoneda, IdPais, Identificador, Descripcion FROM Monedas'
    object adodsMasterIdMoneda: TAutoIncField
      FieldName = 'IdMoneda'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPaises
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
  end
  object adodsPaises: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPais, Descripcion FROM Paises'
    Parameters = <>
    Left = 144
    Top = 136
    object adodsPaisesIdPais: TAutoIncField
      FieldName = 'IdPais'
      ReadOnly = True
      Visible = False
    end
    object adodsPaisesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
end
