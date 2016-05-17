inherited dmPersonasDomicilios: TdmPersonasDomicilios
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforePost = adodsMasterBeforePost
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdPersonaDomicilio, IdPersona, IdDomicilio,'#13#10' IdDomicilio' +
      'Tipo, IdEnvioTipo ,Predeterminado, Identificador, Saldo'#13#10' FROM P' +
      'ersonasDomicilios '#13#10'WHERE IdPersona = :IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 24
    object adodsMasterIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
      Visible = False
    end
    object adodsMasterIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
      Visible = False
    end
    object adodsMasterDomicilio: TStringField
      FieldKind = fkLookup
      FieldName = 'Domicilio'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Domicilio'
      KeyFields = 'IdDomicilio'
      Size = 500
      Lookup = True
    end
    object adodsMasterDomicilioTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'DomicilioTipo'
      LookupDataSet = adodsDomiciliosTipos
      LookupKeyFields = 'IdDomicilioTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDomicilioTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object adodsMasterIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterIdEnvioTipo: TIntegerField
      FieldName = 'IdEnvioTipo'
    end
    object adodsMasterTipoEnvio: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoEnvio'
      LookupDataSet = ADODtStEnvioTipo
      LookupKeyFields = 'IdPaqueteria'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEnvioTipo'
      Size = 30
      Lookup = True
    end
    object adodsMasterMunicipio: TStringField
      FieldKind = fkLookup
      FieldName = 'Municipio'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Municipio'
      KeyFields = 'IdDomicilio'
      Size = 30
      Lookup = True
    end
    object adodsMasterEstado: TStringField
      FieldKind = fkLookup
      FieldName = 'Estado'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Estado'
      KeyFields = 'IdDomicilio'
      Size = 30
      Lookup = True
    end
    object adodsMasterColonia: TStringField
      FieldKind = fkLookup
      FieldName = 'Colonia'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Colonia'
      KeyFields = 'IdDomicilio'
      Size = 40
      Lookup = True
    end
    object adodsMasterCodigoPostal: TStringField
      FieldKind = fkLookup
      FieldName = 'CodigoPostal'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'CodigoPostal'
      KeyFields = 'IdDomicilio'
      Size = 10
      Lookup = True
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Pais'
      KeyFields = 'IdDomicilio'
      Size = 30
      Lookup = True
    end
    object adodsMasterDomicilio2: TStringField
      FieldKind = fkLookup
      FieldName = 'Domicilio2'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Domicilio2'
      KeyFields = 'IdDomicilio'
      Size = 500
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object actUpdate: TAction
      Caption = '...'
      OnExecute = actUpdateExecute
    end
  end
  object adodsDomiciliosTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDomicilioTipo, Descripcion FROM DomiciliosTipos'
    Parameters = <>
    Left = 120
    Top = 96
  end
  object adodsDomicilios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Domicilios.IdDomicilio,'#13#10'Domicilios.Calle + '#39' '#39' + ISNULL(' +
      'Domicilios.NoExterior,'#39#39') + '#39' '#39' + ISNULL(Domicilios.NoInterior,'#39 +
      #39') + CHAR(13)+CHAR(10) +'#13#10'ISNULL(Domicilios.Colonia,'#39#39') + '#39', '#39' +' +
      ' Municipios.Descripcion + '#39', '#39' + Poblaciones.Descripcion + '#39', '#39' ' +
      '+ Estados.Descripcion + '#39' '#39' + Domicilios.CodigoPostal + CHAR(13)' +
      '+CHAR(10) +'#13#10'Paises.Descripcion AS Domicilio, ISNULL(Domicilios.' +
      'Colonia,'#39#39') as Colonia,  Municipios.Descripcion as Municipio , P' +
      'oblaciones.Descripcion as Poblacion, Estados.Descripcion as Esta' +
      'do,  Domicilios.CodigoPostal  as CodigoPostal,'#13#10'Paises.Descripci' +
      'on as Pais,'#13#10'Domicilios.Calle + '#39' '#39' + ISNULL(Domicilios.NoExteri' +
      'or,'#39#39') + '#39' '#39' + ISNULL(Domicilios.NoInterior,'#39#39') + ISNULL(Domicil' +
      'ios.Colonia,'#39#39') + '#39', '#39' + Municipios.Descripcion + '#39', '#39' + Poblaci' +
      'ones.Descripcion + '#39', '#39' + Estados.Descripcion + '#39' '#39' + Domicilios' +
      '.CodigoPostal +'#39' '#39'+Paises.Descripcion AS Domicilio2'#13#10#13#10'FROM Domi' +
      'cilios '#13#10'LEFT JOIN Paises ON Domicilios.IdPais = Paises.IdPais'#13#10 +
      'LEFT JOIN Estados ON Domicilios.IdEstado = Estados.IdEstado'#13#10'LEF' +
      'T JOIN Municipios ON Domicilios.IdMunicipio = Municipios.IdMunic' +
      'ipio'#13#10'LEFT JOIN Poblaciones ON Domicilios.IdPoblacion = Poblacio' +
      'nes.IdPoblacion'#13#10
    Parameters = <>
    Left = 120
    Top = 48
    object adodsDomiciliosIdDomicilio: TAutoIncField
      FieldName = 'IdDomicilio'
      ReadOnly = True
    end
    object adodsDomiciliosDomicilio: TStringField
      FieldName = 'Domicilio'
      ReadOnly = True
      Size = 473
    end
    object adodsDomiciliosColonia: TStringField
      FieldName = 'Colonia'
      ReadOnly = True
      Size = 50
    end
    object adodsDomiciliosMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object adodsDomiciliosPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object adodsDomiciliosEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object adodsDomiciliosCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object adodsDomiciliosPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object adodsDomiciliosDomicilio2: TStringField
      FieldName = 'Domicilio2'
      ReadOnly = True
      Size = 490
    end
  end
  object DSPersona: TDataSource
    DataSet = ADODtStPersona
    Left = 124
    Top = 176
  end
  object ADODtStPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RFC, RazonSocial from Personas where IDPersona' +
      '=:idpersona'
    DataSource = dsmaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IdPersona'
    Parameters = <
      item
        Name = 'idpersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 176
  end
  object dsmaster: TDataSource
    DataSet = adodsMaster
    Left = 36
    Top = 80
  end
  object ADODtStEnvioTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPaqueteria, Identificador, Descripcion from Paqueterias'
    Parameters = <>
    Left = 304
    Top = 168
  end
  object ADODtStVerifica: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from Personas where IdRol=1 and IdPersona=:IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    Top = 264
  end
  object ADODtStMaximoNoCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'Select  max(identificador) as Maximo from PersonasDomicilios'
    Parameters = <>
    Left = 176
    Top = 264
  end
end
