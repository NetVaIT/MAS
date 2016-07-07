inherited DmListaPrecios: TDmListaPrecios
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    BeforeInsert = adodsMasterBeforeInsert
    BeforeEdit = adodsMasterBeforeEdit
    AfterPost = adodsMasterAfterPost
    BeforeCancel = adodsMasterBeforeCancel
    BeforeDelete = adodsMasterBeforeDelete
    CommandText = 
      'select P.IdProducto, IdProductoTipo, IdUnidadMedida, '#13#10'IdProduct' +
      'oEstatus, Identificador1, Identificador2, Identificador3,'#13#10' Desc' +
      'ripcion, PrecioUnitario from Productos P'#13#10'inner join Inventario ' +
      'I on P.IdProducto = I.IdProducto'
    Left = 32
    object adodsMasterIdProducto: TAutoIncField
      FieldName = 'IdProducto'
      ReadOnly = True
    end
    object adodsMasterIdProductoTipo: TIntegerField
      FieldName = 'IdProductoTipo'
    end
    object adodsMasterIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object adodsMasterIdProductoEstatus: TIntegerField
      FieldName = 'IdProductoEstatus'
    end
    object adodsMasterIdentificador1: TStringField
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsMasterIdentificador2: TStringField
      FieldName = 'Identificador2'
      Size = 50
    end
    object adodsMasterIdentificador3: TStringField
      FieldName = 'Identificador3'
      Size = 50
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Art'#237'culo'
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsMasterPrecioUnitario: TFloatField
      FieldName = 'PrecioUnitario'
    end
    object adodsMasterUnidadMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadMedida'
      LookupDataSet = ADODtStUnidadesMedida
      LookupKeyFields = 'IdUnidadMedida'
      LookupResultField = 'Identificador'
      KeyFields = 'IdUnidadMedida'
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    CommandText = 
      'Select IdProducto, IdProductoTipo, IdUnidadMedida, IdProductoEst' +
      'atus, PrecioUnitario'#13#10'from Productos'#13#10'where IDProducto=: IDProdA' +
      'ct'
    Parameters = <
      item
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
  end
  object ADODtStBitacora: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnNewRecord = ADODtStBitacoraNewRecord
    CommandText = 
      'select FechaReg, idUsuario, Sistema, Tabla, IdTabla, DatosViejos' +
      ', '#13#10'DatosNvos, Accion, Observaciones from Bitacora'
    Parameters = <>
    Left = 32
    Top = 112
    object ADODtStBitacoraidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object ADODtStBitacoraFechaReg: TDateTimeField
      FieldName = 'FechaReg'
    end
    object ADODtStBitacoraSistema: TStringField
      FieldName = 'Sistema'
      Size = 10
    end
    object ADODtStBitacoraTabla: TStringField
      FieldName = 'Tabla'
      Size = 40
    end
    object ADODtStBitacoraIdTabla: TIntegerField
      FieldName = 'IdTabla'
    end
    object ADODtStBitacoraDatosViejos: TStringField
      FieldName = 'DatosViejos'
      Size = 300
    end
    object ADODtStBitacoraDatosNvos: TStringField
      FieldName = 'DatosNvos'
      Size = 300
    end
    object ADODtStBitacoraAccion: TStringField
      FieldName = 'Accion'
      Size = 30
    end
    object ADODtStBitacoraObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
  end
  object ADODtStUnidadesMedida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdUnidadMedida, Identificador, Descripcion from UnidadesM' +
      'edida'
    Parameters = <>
    Left = 176
    Top = 49
  end
  object ADODtStInventario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select  IdInventario, IdAlmacen, IdProducto, PrecioVenta'#13#10'from I' +
      'nventario where IdProducto=:IdProducto'
    Parameters = <
      item
        Name = 'IdProducto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 184
    Top = 144
    object ADODtStInventarioIdInventario: TAutoIncField
      FieldName = 'IdInventario'
      ReadOnly = True
    end
    object ADODtStInventarioIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object ADODtStInventarioIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStInventarioPrecioVenta: TFloatField
      FieldName = 'PrecioVenta'
    end
  end
  object ADODtStProveedor: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdRol, Identificador, RazonSocial from Persona' +
      's'#13#10'WHERE IdRol=2'#13#10'Order by Razonsocial'
    Parameters = <>
    Left = 40
    Top = 216
    object ADODtStProveedorIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object ADODtStProveedorIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object ADODtStProveedorIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object ADODtStProveedorRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
  end
end
