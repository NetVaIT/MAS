inherited dmEmail: TdmEmail
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdEmail, IdPersona, IdEmailTipo, Email, Predeterminado, '#13 +
      #10'IdPersonaDomicilio'#13#10' FROM Emails WHERE IdPersona = :IdPersona '#13 +
      #10'and IdPersonaDomicilio=:idpersonaDomicilio'
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
        Name = 'idpersonaDomicilio'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdEmail: TAutoIncField
      FieldName = 'IdEmail'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdEmailTipo: TIntegerField
      FieldName = 'IdEmailTipo'
      Visible = False
    end
    object adodsMasterEmailTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'EmailTipo'
      LookupDataSet = adodsEmailTipo
      LookupKeyFields = 'IdEmailTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEmailTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterEmail: TStringField
      FieldName = 'Email'
      Size = 200
    end
    object adodsMasterPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object adodsMasterIdPersonaDomicilio: TIntegerField
      FieldName = 'IdPersonaDomicilio'
    end
  end
  object adodsEmailTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdEmailTipo, Descripcion FROM EmailsTipos'
    Parameters = <>
    Left = 192
    Top = 88
  end
end
