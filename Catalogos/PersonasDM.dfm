inherited dmPersonas: TdmPersonas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RFC, CURP, IdPersonaTipo, IdRazonSocialTipo, I' +
      'dSexo, IdEstadoCivil, IdPais, IdPoblacion, RazonSocial, Nombre, ' +
      'ApellidoPaterno, ApellidoMaterno, LugarNacimiento, FechaNacimien' +
      'to, IdPersonaTitular, VigenciaFM34 FROM Personas'
    Left = 32
    object adodsMasterIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
      Visible = False
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
      Visible = False
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
    object adodsMasterIdRazonSocialTipo: TIntegerField
      FieldName = 'IdRazonSocialTipo'
      Visible = False
    end
    object adodsMasterRazonSocialTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'RazonSocialTipo'
      LookupDataSet = adodsRazonSocialTipo
      LookupKeyFields = 'IdRazonSocialTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdRazonSocialTipo'
      Size = 200
      Lookup = True
    end
    object adodsMasterIdSexo: TIntegerField
      FieldName = 'IdSexo'
      Visible = False
    end
    object adodsMasterSexo: TStringField
      FieldKind = fkLookup
      FieldName = 'Sexo'
      LookupDataSet = adodsSexo
      LookupKeyFields = 'IdSexo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdSexo'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdEstadoCivil: TIntegerField
      FieldName = 'IdEstadoCivil'
      Visible = False
    end
    object adodsMasterEstadoCivil: TStringField
      FieldKind = fkLookup
      FieldName = 'EstadoCivil'
      LookupDataSet = adodsEstadoCivil
      LookupKeyFields = 'IdEstadoCivil'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEstadoCivil'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdPais: TIntegerField
      FieldName = 'IdPais'
      Visible = False
    end
    object adodsMasterIdPoblacion: TIntegerField
      FieldName = 'IdPoblacion'
      Visible = False
    end
    object adodsMasterRazonSocial: TStringField
      DisplayLabel = 'Nombre / Razon Social'
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
    object adodsMasterIdPersonaTitular: TIntegerField
      FieldName = 'IdPersonaTitular'
      Visible = False
    end
    object adodsMasterVigenciaFM34: TDateTimeField
      FieldName = 'VigenciaFM34'
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
  object adodsRazonSocialTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdRazonSocialTipo, Descripcion FROM RazonesSocialesTipos'
    Parameters = <>
    Left = 144
    Top = 72
    object adodsRazonSocialTipoIdRazonSocialTipo: TAutoIncField
      FieldName = 'IdRazonSocialTipo'
      ReadOnly = True
    end
    object adodsRazonSocialTipoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
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
end
