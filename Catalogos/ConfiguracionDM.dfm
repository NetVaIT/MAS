inherited dmConfiguracion: TdmConfiguracion
  OldCreateOrder = True
  Height = 468
  Width = 699
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPais, IdMoneda, RutaBaseFacturas, '#13#10'CorreoEnvio, HostEn' +
      'vio, PuertoEnvio, UsuarioCorreo, PasswordCorreo, TipoSeguridad, ' +
      'MetodoAutenticacion, UltimoFolioPago, UltimaSeriePago'#13#10'FROM Conf' +
      'iguraciones'
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterPais: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsPaises
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 100
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterRutaBaseFacturas: TStringField
      DisplayLabel = 'Ruta Base para Facturas'
      FieldName = 'RutaBaseFacturas'
      Size = 250
    end
    object adodsMasterCorreoEnvio: TStringField
      DisplayLabel = 'Correo Envio'
      FieldName = 'CorreoEnvio'
      Size = 150
    end
    object adodsMasterHostEnvio: TStringField
      DisplayLabel = 'Host Envio'
      FieldName = 'HostEnvio'
      Size = 50
    end
    object adodsMasterPuertoEnvio: TStringField
      DisplayLabel = 'Puerto Envio'
      FieldName = 'PuertoEnvio'
    end
    object adodsMasterUsuarioCorreo: TStringField
      DisplayLabel = 'Usuario Correo'
      FieldName = 'UsuarioCorreo'
      Size = 100
    end
    object adodsMasterPasswordCorreo: TStringField
      DisplayLabel = 'Password Correo'
      FieldName = 'PasswordCorreo'
    end
    object adodsMasterTipoSeguridad: TStringField
      DisplayLabel = 'Tipo Seguridad'
      FieldName = 'TipoSeguridad'
    end
    object adodsMasterMetodoAutenticacion: TStringField
      DisplayLabel = 'Metodo Autenticacion'
      FieldName = 'MetodoAutenticacion'
    end
    object adodsMasterUltimoFolioPago: TIntegerField
      DisplayLabel = 'Ultimo Folio Pago'
      FieldName = 'UltimoFolioPago'
    end
    object adodsMasterUltimaSeriePago: TStringField
      DisplayLabel = 'Ultima Serie Pago'
      FieldName = 'UltimaSeriePago'
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 592
    Top = 24
  end
  inherited ActionList: TActionList
    Left = 592
    Top = 96
  end
  object adoqGetIdPeriodoActual: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetIdPeriodoActual() AS Valor')
    Left = 584
    Top = 184
    object adoqGetIdPeriodoActualValor: TIntegerField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
  object adoqGetRutaBaseFacturas: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetRutaBaseFacturas() AS Valor')
    Left = 584
    Top = 248
    object adoqGetRutaBaseFacturasValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 250
    end
  end
  object adodsPaises: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPais, Descripcion from Paises'
    Parameters = <>
    Left = 104
    Top = 16
  end
  object adodsMonedas: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 104
    Top = 64
  end
  object adoqGetRutaBasePagos: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT dbo.GetRutaBasePagos() AS Valor')
    Left = 584
    Top = 312
    object adoqGetRutaBasePagosValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 250
    end
  end
  object adoqGetDiaPagoActual: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT CAST(DATEADD(day, 4,FechaInicio) AS DATETIME) AS Valor FR' +
        'OM Periodos WHERE IdPeriodo = dbo.GetIdPeriodoActual();')
    Left = 592
    Top = 384
    object adoqGetDiaPagoActualValor: TDateTimeField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
end
