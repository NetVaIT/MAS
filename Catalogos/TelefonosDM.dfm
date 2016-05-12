inherited dmTelefonos: TdmTelefonos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdTelefono, IdPersona, IdTelefonoTipo, Lada, Telefono, '#13#10 +
      'Predeterminado, IdDomicilio FROM Telefonos WHERE'#13#10' IdPersona = :' +
      'IdPersona and IdDomicilio =:idDomicilio'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'idDomicilio'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdTelefono: TAutoIncField
      FieldName = 'IdTelefono'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdTelefonoTipo: TIntegerField
      FieldName = 'IdTelefonoTipo'
      Visible = False
    end
    object adodsMasterTelefonoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'TelefonoTipo'
      LookupDataSet = adodsTelefonosTipos
      LookupKeyFields = 'IdTelefonoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdTelefonoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterLada: TStringField
      FieldName = 'Lada'
      Size = 10
    end
    object adodsMasterTelefono: TStringField
      FieldName = 'Telefono'
    end
    object adodsMasterPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object adodsMasterIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
  end
  object adodsTelefonosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdTelefonoTipo, Descripcion FROM TelefonosTipos'
    Parameters = <>
    Left = 168
    Top = 72
  end
end
