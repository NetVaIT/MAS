inherited dmProductosXEspacio: TdmProductosXEspacio
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT ProductosXEspacio.IdProductoXEspacio, ProductosXEspacio.I' +
      'dAlmacen, ProductosXEspacio.IdProducto, ProductosXEspacio.IdEspa' +
      'cio, ProductosXEspacio.IdCategoria, Almacenes.Descripcion AS Alm' +
      'acen, '#13#10'Productos.Identificador1, Productos.Identificador2, Prod' +
      'uctos.Identificador3, Productos.Descripcion AS Producto, Espacio' +
      's.Descripcion AS Espacio, ProductosXEspacio.Cantidad'#13#10'FROM Produ' +
      'ctosXEspacio '#13#10'INNER JOIN Almacenes ON ProductosXEspacio.IdAlmac' +
      'en = Almacenes.IdAlmacen'#13#10'INNER JOIN Productos ON ProductosXEspa' +
      'cio.IdProducto = Productos.IdProducto'#13#10'INNER JOIN Espacios ON Pr' +
      'oductosXEspacio.IdEspacio = Espacios.IdEspacio'
    object adodsMasterIdProductoXEspacio: TAutoIncField
      FieldName = 'IdProductoXEspacio'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
      Visible = False
    end
    object adodsMasterIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsMasterIdEspacio: TIntegerField
      FieldName = 'IdEspacio'
      Visible = False
    end
    object adodsMasterIdCategoria: TIntegerField
      FieldName = 'IdCategoria'
      Visible = False
    end
    object adodsMasterAlmacen: TStringField
      FieldName = 'Almacen'
      Size = 100
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
    object adodsMasterProducto: TStringField
      FieldName = 'Producto'
      Size = 255
    end
    object adodsMasterEspacio: TStringField
      FieldName = 'Espacio'
      Size = 50
    end
    object adodsMasterCantidad: TFloatField
      FieldName = 'Cantidad'
    end
  end
  inherited ActionList: TActionList
    object actCambiar: TAction
      Caption = 'Cambiar'
      ImageIndex = 11
      OnExecute = actCambiarExecute
    end
  end
  object adodsAlmacenes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdAlmacen, Descripcion AS Almacen from Almacenes'
    Parameters = <>
    Left = 136
    Top = 120
  end
  object adodsEspacios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Espacios.IdEspacio, Espacios.IdAlmacen, Espacios.Descripc' +
      'ion AS Espacio'#13#10'FROM Espacios '#13#10'INNER JOIN EspaciosTipos ON Espa' +
      'cios.IdEspacioTipo = EspaciosTipos.IdEspacioTipo'#13#10'WHERE Espacios' +
      'Tipos.Seleccionar = 1 AND Espacios.IdAlmacen = :IdAlmacen'
    DataSource = dsAlamcenes
    MasterFields = 'IdAlmacen'
    Parameters = <
      item
        Name = 'IdAlmacen'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 136
    Top = 176
  end
  object dsAlamcenes: TDataSource
    DataSet = adodsAlmacenes
    Left = 216
    Top = 120
  end
  object mdCambio: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 136
    Top = 64
    object mdCambioIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object mdCambioIdEspacio: TIntegerField
      FieldName = 'IdEspacio'
    end
    object mdCambioAlamacen: TStringField
      FieldKind = fkLookup
      FieldName = 'Alamacen'
      LookupDataSet = adodsAlmacenes
      LookupKeyFields = 'IdAlmacen'
      LookupResultField = 'Almacen'
      KeyFields = 'IdAlmacen'
      Size = 100
      Lookup = True
    end
    object mdCambioEspacio: TStringField
      FieldKind = fkLookup
      FieldName = 'Espacio'
      LookupDataSet = adodsEspacios
      LookupKeyFields = 'IdEspacio'
      LookupResultField = 'Espacio'
      KeyFields = 'IdEspacio'
      Size = 50
      Lookup = True
    end
    object mdCambioCantidad: TFloatField
      FieldName = 'Cantidad'
    end
  end
  object adospSetProductosXEspacio: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetProductosXEspacioMover;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@IdProductoXEspacioO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@IdEspacioD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = '@CantidadD'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = '@IdProductoXEspacioDestino'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
      end>
    Left = 312
    Top = 200
  end
end
