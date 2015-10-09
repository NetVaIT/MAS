inherited dmPersonaContactos: TdmPersonaContactos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersonaContacto, IdPersona, IdContacto, Principal FROM ' +
      'PersonasContactos WHERE IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 32
    Top = 24
    object adodsMasterIdPersonaContacto: TAutoIncField
      FieldName = 'IdPersonaContacto'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdContacto: TIntegerField
      FieldName = 'IdContacto'
      Visible = False
    end
    object adodsMasterContacto: TStringField
      FieldKind = fkLookup
      FieldName = 'Contacto'
      LookupDataSet = adodsContacto
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdContacto'
      Size = 300
      Lookup = True
    end
    object adodsMasterPrincipal: TBooleanField
      FieldName = 'Principal'
    end
  end
  object adodsContacto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersona, RazonSocial FROM Personas'
    Parameters = <>
    Left = 64
    Top = 104
  end
end
