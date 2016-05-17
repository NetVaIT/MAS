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
    Left = 32
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
  inherited ActionList: TActionList
    object ActVincularMails: TAction
      Caption = 'Vincular Mails'
      OnExecute = ActVincularMailsExecute
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
  object ADODtStHayXVincular: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select  Pd.IDPersonaDomicilio as ValorIDPD , E.* from Emails E  ' +
      'inner join PersonasDomicilios Pd on Pd.IdPersona=E.IdPersona '#13#10' ' +
      '                                           where E.IdPersonaDomi' +
      'cilio is null'
    Parameters = <>
    Left = 48
    Top = 176
    object ADODtStHayXVincularValorIDPD: TAutoIncField
      FieldName = 'ValorIDPD'
      ReadOnly = True
    end
    object ADODtStHayXVincularIdEmail: TAutoIncField
      FieldName = 'IdEmail'
      ReadOnly = True
    end
    object ADODtStHayXVincularIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStHayXVincularIdEmailTipo: TIntegerField
      FieldName = 'IdEmailTipo'
    end
    object ADODtStHayXVincularIdPersonaDomicilio: TIntegerField
      FieldName = 'IdPersonaDomicilio'
    end
    object ADODtStHayXVincularEmail: TStringField
      FieldName = 'Email'
      Size = 200
    end
    object ADODtStHayXVincularPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 180
    Top = 169
  end
end
