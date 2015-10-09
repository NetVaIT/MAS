inherited dmCuentasBancarias: TdmCuentasBancarias
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaBancaria, IdPersona, IdCuentaBancariaTipo, IdBanc' +
      'o, CuentaBancaria, ClabeInterbancaria, IdMoneda, IdDocumento, Sa' +
      'ldoCuenta, IdCuentaBancariaEstatus FROM CuentasBancarias WHERE I' +
      'dPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdCuentaBancaria: TAutoIncField
      FieldName = 'IdCuentaBancaria'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdCuentaBancariaTipo: TIntegerField
      FieldName = 'IdCuentaBancariaTipo'
      Visible = False
    end
    object adodsMasterCuentaBancariaTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaBancariaTipo'
      LookupDataSet = adodsCuentaBancariaTipo
      LookupKeyFields = 'IdCuentaBancariaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaBancariaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
      Visible = False
    end
    object adodsMasterBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = adodsBanco
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Size = 50
      Lookup = True
    end
    object adodsMasterCuentaBancaria: TStringField
      FieldName = 'CuentaBancaria'
      Size = 50
    end
    object adodsMasterClabeInterbancaria: TStringField
      FieldName = 'ClabeInterbancaria'
      Size = 18
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMoneda
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
      Visible = False
    end
    object adodsMasterSaldoCuenta: TFMTBCDField
      FieldName = 'SaldoCuenta'
      Precision = 18
      Size = 6
    end
    object adodsMasterIdCuentaBancariaEstatus: TIntegerField
      FieldName = 'IdCuentaBancariaEstatus'
      Visible = False
    end
    object adodsMasterCuentaBancariaEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'CuentaBancariaEstatus'
      LookupDataSet = adodsCuentaBancariaEstatus
      LookupKeyFields = 'IdCuentaBancariaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdCuentaBancariaEstatus'
      Size = 50
      Lookup = True
    end
  end
  object adodsCuentaBancariaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaBancariaTipo, Descripcion FROM CuentasBancariasTi' +
      'pos'
    Parameters = <>
    Left = 152
    Top = 40
  end
  object adodsBanco: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdBanco, Nombre FROM Bancos'
    Parameters = <>
    Left = 152
    Top = 112
  end
  object adodsMoneda: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdMoneda, Descripcion FROM Monedas'
    Parameters = <>
    Left = 152
    Top = 184
  end
  object adodsCuentaBancariaEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdCuentaBancariaEstatus, Descripcion FROM CuentasBancaria' +
      'sEstatus'
    Parameters = <>
    Left = 152
    Top = 256
  end
end
