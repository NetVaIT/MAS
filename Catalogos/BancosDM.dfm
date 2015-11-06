inherited dmBancos: TdmBancos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdBanco, IdPais,Identificador, Nombre, Descripcion, Sigla' +
      's FROM Bancos'
    object adodsMasterIdBanco: TAutoIncField
      FieldName = 'IdBanco'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsMasterNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
    object adodsMasterSiglas: TStringField
      FieldName = 'Siglas'
      Size = 10
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPaises
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPaisBanco'
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
