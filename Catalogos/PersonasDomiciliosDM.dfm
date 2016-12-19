inherited dmPersonasDomicilios: TdmPersonasDomicilios
  OldCreateOrder = True
  Height = 446
  Width = 501
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforePost = adodsMasterBeforePost
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdPersonaDomicilio, IdPersona, IdDomicilio,'#13#10' IdDomicilio' +
      'Tipo, IdEnvioTipo ,Predeterminado, '#13#10'Identificador, Saldo, UsarP' +
      'araEnvio, IdMetododePago, '#13#10'NumCtaPagoCliente, Servicio, PagoFle' +
      'te, Asegurado'#13#10' FROM PersonasDomicilios '#13#10'WHERE IdPersona = :IdP' +
      'ersona'
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
    object adodsMasterUsarParaEnvio: TBooleanField
      DisplayLabel = 'Disponible Para Envio'
      FieldName = 'UsarParaEnvio'
    end
    object adodsMasterIdMetododePago: TIntegerField
      FieldName = 'IdMetododePago'
    end
    object adodsMasterMetodoPago: TStringField
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADODtStMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetododePago'
      Size = 50
      Lookup = True
    end
    object adodsMasterExigeCta: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ExigeCta'
      LookupDataSet = ADODtStMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'ExigeCuenta'
      KeyFields = 'IdMetododePago'
      Lookup = True
    end
    object adodsMasterNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object adodsMasterServicio: TStringField
      FieldName = 'Servicio'
      Size = 50
    end
    object adodsMasterPagoFlete: TBooleanField
      DisplayLabel = 'Pago Flete'
      FieldName = 'PagoFlete'
    end
    object adodsMasterAsegurado: TBooleanField
      FieldName = 'Asegurado'
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 336
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
    Top = 40
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
    CommandText = 
      'select IdPaqueteria, Identificador, Descripcion '#13#10'from Paqueteri' +
      'as'#13#10'order by Descripcion'
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
    Left = 40
    Top = 272
  end
  object ADODtStMaximoNoCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'Select  max(identificador) as Maximo from PersonasDomicilios'
    Parameters = <>
    Left = 176
    Top = 264
  end
  object ADODtStMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select IdMetodoPago, Identificador, Descripcion, ExigeCuenta,'#13#10' ' +
      'ClaveSAT2016 from MetodosPago where idMetodoPago>0'
    Parameters = <>
    Left = 312
    Top = 256
    object ADODtStMetodoPagoIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADODtStMetodoPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStMetodoPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtStMetodoPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
    object ADODtStMetodoPagoClaveSAT2016: TStringField
      FieldName = 'ClaveSAT2016'
      Size = 10
    end
  end
  object ADODtStAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 424
    Top = 256
  end
  object ADODtStPaqueterias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPaqueteria, Identificador, Descripcion from Paqueterias' +
      ' order by identificador'
    Parameters = <>
    Left = 40
    Top = 344
    object ADODtStPaqueteriasIdPaqueteria: TAutoIncField
      FieldName = 'IdPaqueteria'
      ReadOnly = True
    end
    object ADODtStPaqueteriasIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object ADODtStPaqueteriasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
end
