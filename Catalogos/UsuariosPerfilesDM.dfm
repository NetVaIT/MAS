inherited DmPerfilesUsuario: TDmPerfilesUsuario
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdUsuarioPerfil, Descripcion,PermisoMenu, PermisoOpcion,'#13 +
      #10' PermisosFuncion from UsuariosPerfiles'
    object adodsMasterIdUsuarioPerfil: TIntegerField
      FieldName = 'IdUsuarioPerfil'
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Perfil'
      FieldName = 'Descripcion'
      Size = 25
    end
    object adodsMasterPermisoMenu: TStringField
      DisplayLabel = 'Permisos Menu'
      FieldName = 'PermisoMenu'
      Size = 300
    end
    object adodsMasterPermisoOpcion: TStringField
      DisplayLabel = 'Permiso Opciones'
      FieldName = 'PermisoOpcion'
      Size = 500
    end
    object adodsMasterPermisosFuncion: TStringField
      FieldName = 'PermisosFuncion'
      Size = 300
    end
  end
end
