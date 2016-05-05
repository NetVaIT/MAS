inherited dmPersonas: TdmPersonas
  OldCreateOrder = True
  Height = 464
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, IdPersonaTipo, IdRol, IdSexo, IdEstadoCivil, '#13 +
      #10'IdPais, IdMetodoPagoCliente, IdRegimenFiscalEmisor,'#13#10' IdPersona' +
      'Estatus, IdDocumentoLogoEmisor, RFC, CURP, '#13#10'RazonSocial, Nombre' +
      ', ApellidoPaterno, '#13#10'ApellidoMaterno, LugarNacimiento, FechaNaci' +
      'miento, '#13#10'NumCtaPagoCliente, SaldoCliente, '#13#10'NSSEmpleado, DiasCr' +
      'editoCliente'#13#10'FROM Personas'
    Left = 40
    object adodsMasterIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsMasterRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsMasterCURP: TStringField
      FieldName = 'CURP'
      Size = 18
    end
    object adodsMasterIdPersonaTipo: TIntegerField
      FieldName = 'IdPersonaTipo'
    end
    object adodsMasterIdSexo: TIntegerField
      FieldName = 'IdSexo'
    end
    object adodsMasterIdEstadoCivil: TIntegerField
      FieldName = 'IdEstadoCivil'
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
    end
    object adodsMasterRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsMasterNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object adodsMasterApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 100
    end
    object adodsMasterApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 100
    end
    object adodsMasterLugarNacimiento: TStringField
      FieldName = 'LugarNacimiento'
      Size = 100
    end
    object adodsMasterFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object adodsMasterIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object adodsMasterRol: TStringField
      FieldKind = fkLookup
      FieldName = 'Rol'
      LookupDataSet = adodsRoles
      LookupKeyFields = 'IdRol'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRol'
      Size = 50
      Lookup = True
    end
    object adodsMasterPersonaTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaTipo'
      LookupDataSet = adodsPersonaTipo
      LookupKeyFields = 'IdPersonaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterSexo: TStringField
      FieldKind = fkLookup
      FieldName = 'Sexo'
      LookupDataSet = adodsSexo
      LookupKeyFields = 'IdSexo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdSexo'
      Size = 10
      Lookup = True
    end
    object adodsMasterPais: TStringField
      FieldKind = fkLookup
      FieldName = 'Pais'
      LookupDataSet = ADOdsPais
      LookupKeyFields = 'IdPais'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPais'
      Size = 50
      Lookup = True
    end
    object adodsMasterEstadoCivil: TStringField
      FieldKind = fkLookup
      FieldName = 'EstadoCivil'
      LookupDataSet = adodsEstadoCivil
      LookupKeyFields = 'IdEstadoCivil'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEstadoCivil'
      Size = 15
      Lookup = True
    end
    object adodsMasterIdMetodoPagoCliente: TIntegerField
      FieldName = 'IdMetodoPagoCliente'
    end
    object adodsMasterIdRegimenFiscalEmisor: TIntegerField
      FieldName = 'IdRegimenFiscalEmisor'
    end
    object adodsMasterIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object adodsMasterIdDocumentoLogoEmisor: TIntegerField
      FieldName = 'IdDocumentoLogoEmisor'
    end
    object adodsMasterSaldoCliente: TFMTBCDField
      FieldName = 'SaldoCliente'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterNSSEmpleado: TStringField
      FieldName = 'NSSEmpleado'
      Size = 30
    end
    object adodsMasterMetodoPago: TStringField
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADOdsMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPagoCliente'
      Lookup = True
    end
    object adodsMasterRegimenFiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'RegimenFiscal'
      LookupDataSet = ADOdsRegimenFiscal
      LookupKeyFields = 'IdRegimenFiscal'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRegimenFiscalEmisor'
      Size = 50
      Lookup = True
    end
    object adodsMasterEstatusPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'EstatusPersona'
      LookupDataSet = ADOdsEstatus
      LookupKeyFields = 'IdPersonaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdPersonaEstatus'
      Size = 15
      Lookup = True
    end
    object adodsMasterExigeCta: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ExigeCta'
      LookupDataSet = ADOdsMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'ExigeCuenta'
      KeyFields = 'IdMetodoPagoCliente'
      Lookup = True
    end
    object adodsMasterNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object adodsMasterDiasCreditoCliente: TIntegerField
      FieldName = 'DiasCreditoCliente'
    end
  end
  object adodsPersonaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdPersonaTipo, Descripcion FROM PersonasTipos'
    Parameters = <>
    Left = 144
    Top = 16
    object adodsPersonaTipoIdPersonaTipo: TAutoIncField
      FieldName = 'IdPersonaTipo'
      ReadOnly = True
    end
    object adodsPersonaTipoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object adodsRoles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from Roles'
    Parameters = <>
    Left = 144
    Top = 72
    object adodsRolesIdRol: TAutoIncField
      FieldName = 'IdRol'
      ReadOnly = True
    end
    object adodsRolesIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsRolesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object adodsSexo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdSexo, Descripcion FROM Sexos'
    Parameters = <>
    Left = 144
    Top = 128
    object adodsSexoIdSexo: TAutoIncField
      FieldName = 'IdSexo'
      ReadOnly = True
    end
    object adodsSexoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object adodsEstadoCivil: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdEstadoCivil, Descripcion FROM EstadosCiviles'
    Parameters = <>
    Left = 144
    Top = 184
    object adodsEstadoCivilIdEstadoCivil: TIntegerField
      FieldName = 'IdEstadoCivil'
    end
    object adodsEstadoCivilDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object ADODataSet1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 312
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = adodsMaster
    Left = 320
    Top = 232
  end
  object ADOdsPais: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'Select IdPais, Identificador, Descripcion  from Paises'
    Parameters = <>
    Left = 144
    Top = 248
    object ADOdsPaisIdPais: TAutoIncField
      FieldName = 'IdPais'
      ReadOnly = True
    end
    object ADOdsPaisIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object ADOdsPaisDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object ADOdsMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta fro' +
      'm MetodosPago'
    Parameters = <>
    Left = 144
    Top = 296
    object ADOdsMetodoPagoIdMetodoPago: TAutoIncField
      FieldName = 'IdMetodoPago'
      ReadOnly = True
    end
    object ADOdsMetodoPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADOdsMetodoPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADOdsMetodoPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
  end
  object ADOdsRegimenFiscal: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdRegimenFiscal, Identificador, Descripcion  from Regimen' +
      'esFiscales'
    Parameters = <>
    Left = 144
    Top = 352
    object ADOdsRegimenFiscalIdRegimenFiscal: TAutoIncField
      FieldName = 'IdRegimenFiscal'
      ReadOnly = True
    end
    object ADOdsRegimenFiscalIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADOdsRegimenFiscalDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 150
    end
  end
  object ADOdsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersonaEstatus, Identificador, Descripcion from Persona' +
      'sEstatus'
    Parameters = <>
    Left = 144
    Top = 408
    object ADOdsEstatusIdPersonaEstatus: TAutoIncField
      FieldName = 'IdPersonaEstatus'
      ReadOnly = True
    end
    object ADOdsEstatusIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object ADOdsEstatusDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
end
