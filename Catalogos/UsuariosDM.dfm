inherited dmUsuarios: TdmUsuarios
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforePost = adodsMasterBeforePost
    CommandText = 
      'SELECT IdUsuario, IdPersona, IdUsuarioEstatus, Login, Password, ' +
      #13#10'IdUsuarioPerfil FROM Usuarios'
    Left = 32
    Top = 24
    object adodsMasterIdUsuario: TAutoIncField
      FieldName = 'IdUsuario'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterPersona: TStringField
      FieldKind = fkLookup
      FieldName = 'Persona'
      LookupDataSet = adodsPersona
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdUsuarioEstatus: TIntegerField
      FieldName = 'IdUsuarioEstatus'
      Visible = False
    end
    object adodsMasterUsuarioEstatus: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'UsuarioEstatus'
      LookupDataSet = adodsUsuarioEstatus
      LookupKeyFields = 'IdUsuarioEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdUsuarioEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterLogin: TStringField
      FieldName = 'Login'
      Size = 15
    end
    object adodsMasterPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
    object adodsMasterIdUsuarioPerfil: TIntegerField
      FieldName = 'IdUsuarioPerfil'
    end
    object adodsMasterPerfilUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'PerfilUsuario'
      LookupDataSet = ADODtStPerfiles
      LookupKeyFields = 'IdUsuarioPerfil'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdUsuarioPerfil'
      Size = 25
      Lookup = True
    end
  end
  object adodsPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, RazonSocial FROM Personas WHERE IdPersonaTipo ' +
      '= 1'
    Parameters = <>
    Left = 104
    Top = 72
  end
  object adodsUsuarioEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUsuarioEstatus, Descripcion FROM UsuariosEstatus'
    Parameters = <>
    Left = 104
    Top = 144
  end
  object ADODtStPerfiles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdUsuarioPerfil, Descripcion, PermisoMenu, PermisoOpcion,' +
      ' PermisosFuncion from UsuariosPerfiles'
    Parameters = <>
    Left = 96
    Top = 224
    object ADODtStPerfilesIdUsuarioPerfil: TAutoIncField
      FieldName = 'IdUsuarioPerfil'
      ReadOnly = True
    end
    object ADODtStPerfilesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object ADODtStPerfilesPermisoMenu: TStringField
      FieldName = 'PermisoMenu'
      Size = 300
    end
    object ADODtStPerfilesPermisoOpcion: TStringField
      FieldName = 'PermisoOpcion'
      Size = 500
    end
    object ADODtStPerfilesPermisosFuncion: TStringField
      FieldName = 'PermisosFuncion'
      Size = 300
    end
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 316
    Top = 227
  end
end
