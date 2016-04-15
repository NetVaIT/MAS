inherited dmProductos: TdmProductos
  OldCreateOrder = True
  Height = 489
  Width = 438
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdProducto, Descripcion, IdUnidadMedida, PrecioUnitario, ' +
      #13#10'Maximo, Minimo, PuntoReorden, IdProductoTipo, IdProductoEstatu' +
      's '#13#10', Identificador1, Identificador2, Identificador3 FROM Produc' +
      'tos'
    object adodsMasterIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsMasterIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
      Visible = False
    end
    object adodsMasterIdProductoTipo: TIntegerField
      FieldName = 'IdProductoTipo'
      Visible = False
    end
    object adodsMasterIdProductoEstatus: TIntegerField
      FieldName = 'IdProductoEstatus'
      Visible = False
    end
    object adodsMasterIdentificador1: TStringField
      DisplayLabel = 'Identificador 1'
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsMasterIdentificador2: TStringField
      DisplayLabel = 'Identificador 2'
      FieldName = 'Identificador2'
      Size = 50
    end
    object adodsMasterIdentificador3: TStringField
      DisplayLabel = 'Identificador 3'
      FieldName = 'Identificador3'
      Size = 50
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsMasterPrecioUnitario: TFloatField
      DisplayLabel = 'Precio unitario'
      FieldName = 'PrecioUnitario'
      currency = True
    end
    object adodsMasterMaximo: TFloatField
      DisplayLabel = 'M'#225'ximo'
      FieldName = 'Maximo'
    end
    object adodsMasterMinimo: TFloatField
      DisplayLabel = 'M'#237'nimo'
      FieldName = 'Minimo'
    end
    object adodsMasterPuntoReorden: TFloatField
      DisplayLabel = 'Punto reorden'
      FieldName = 'PuntoReorden'
    end
    object adodsMasterUnidadMedida: TStringField
      DisplayLabel = 'Unidad de medida'
      FieldKind = fkLookup
      FieldName = 'UnidadMedida'
      LookupDataSet = adodsUnidadMedida
      LookupKeyFields = 'IdUnidadMedida'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdUnidadMedida'
      Size = 50
      Lookup = True
    end
    object adodsMasterProductoTipo: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkLookup
      FieldName = 'ProductoTipo'
      LookupDataSet = adodsProductoTipo
      LookupKeyFields = 'IdProductoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProductoTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterProductoEstatus: TStringField
      DisplayLabel = 'Estatus'
      FieldKind = fkLookup
      FieldName = 'ProductoEstatus'
      LookupDataSet = adodsProductoEstatus
      LookupKeyFields = 'IdProductoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProductoEstatus'
      Size = 50
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object ActNuevoDocumento: TAction
      Caption = 'ActNuevoDocumento'
      OnExecute = actNuevoDocumentoExecute
    end
    object ActEditaDocumento: TAction
      Caption = 'ActEditaDocumento'
      OnExecute = actEditaDocumentoExecute
    end
  end
  object adodsUnidadMedida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUnidadMedida, Descripcion FROM UnidadesMedida'
    Parameters = <>
    Left = 104
    Top = 64
  end
  object adodsProductoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdProductoTipo, Descripcion FROM ProductosTipos'
    Parameters = <>
    Left = 104
    Top = 120
  end
  object adodsProductoEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdProductoEstatus, Descripcion FROM ProductosEstatus'
    Parameters = <>
    Left = 104
    Top = 176
  end
  object adodsProductoFotos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProductoFoto, IdProducto, IdDocumento, Notas'#13#10' from Pro' +
      'ductosFotos'#13#10#13#10'where IDProducto=:IdProducto'#13#10
    DataSource = dsMaster
    IndexFieldNames = 'IdProducto'
    MasterFields = 'IdProducto'
    Parameters = <
      item
        Name = 'IdProducto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 40
      end>
    Left = 56
    Top = 248
    object adodsProductoFotosIdProductoFoto: TIntegerField
      FieldName = 'IdProductoFoto'
    end
    object adodsProductoFotosIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object adodsProductoFotosIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object adodsProductoFotosNotas: TStringField
      FieldName = 'Notas'
      Size = 500
    end
    object adodsProductoFotosNombreArchivo: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreArchivo'
      LookupDataSet = ADODsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 150
      Lookup = True
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 110
    Top = 16
  end
  object adodsProductoDoctos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProductoDocumento, IdProducto, IdDocumento, Notas from ' +
      'ProductosDocumentos'
    DataSource = dsMaster
    IndexFieldNames = 'IdProducto'
    MasterFields = 'IdProducto'
    Parameters = <>
    Left = 160
    Top = 304
  end
  object ADODsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumento, IdDocumentoTipo, IdDocumentoClase, '#13#10'Descrip' +
      'cion, NombreArchivo, IdArchivo, Archivo '#13#10'from Documentos'#13#10'where' +
      ' iddocumento=:IdDocumento'
    DataSource = dsProductosFotos
    IndexFieldNames = 'IdDocumento'
    MasterFields = 'IdDocumento'
    Parameters = <
      item
        Name = 'IdDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 5
      end>
    Left = 56
    Top = 304
    object ADODsDocumentoIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object ADODsDocumentoIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
    end
    object ADODsDocumentoIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
    end
    object ADODsDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object ADODsDocumentoNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object ADODsDocumentoIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      FixedChar = True
      Size = 38
    end
    object ADODsDocumentoArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
  object dsProductosFotos: TDataSource
    DataSet = adodsProductoFotos
    OnDataChange = dsProductosFotosDataChange
    Left = 160
    Top = 248
  end
  object adodsProductosProveedores: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProductoProveedor, IdProducto, IdPersonaProveedor, Ulti' +
      'maCompra, UltimoPrecio, TipoCambio from ProductosProveedores'#13#10'wh' +
      'ere IdProducto = :IdProducto'
    DataSource = dsMaster
    MasterFields = 'IdProducto'
    Parameters = <
      item
        Name = 'IdProducto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 56
    Top = 376
    object adodsProductosProveedoresIdProductoProveedor: TAutoIncField
      FieldName = 'IdProductoProveedor'
      ReadOnly = True
      Visible = False
    end
    object adodsProductosProveedoresIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsProductosProveedoresIdPersonaProveedor: TIntegerField
      FieldName = 'IdPersonaProveedor'
      Visible = False
    end
    object adodsProductosProveedoresProveedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Proveedor'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Provedor'
      KeyFields = 'IdPersonaProveedor'
      Size = 300
      Lookup = True
    end
    object adodsProductosProveedoresUltimaCompra: TDateTimeField
      DisplayLabel = #218'ltima compra'
      FieldName = 'UltimaCompra'
    end
    object adodsProductosProveedoresUltimoPrecio: TFMTBCDField
      DisplayLabel = #218'ltimo precio'
      FieldName = 'UltimoPrecio'
      Precision = 18
      Size = 6
    end
    object adodsProductosProveedoresTipoCambio: TFMTBCDField
      DisplayLabel = 'Tipo de cambio'
      FieldName = 'TipoCambio'
      Precision = 18
      Size = 6
    end
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT        Personas.IdPersona, Personas.IdMoneda, Personas.Id' +
      'entificador, Personas.RazonSocial AS Provedor, Monedas.Descripci' +
      'on AS Moneda'#13#10'FROM            Personas INNER JOIN'#13#10'             ' +
      '            Monedas ON Personas.IdMoneda = Monedas.IdMoneda'
    Parameters = <>
    Left = 168
    Top = 376
    object adodsPersonasIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsPersonasIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object adodsPersonasIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsPersonasProvedor: TStringField
      FieldName = 'Provedor'
      Size = 300
    end
    object adodsPersonasMoneda: TStringField
      FieldName = 'Moneda'
      Size = 80
    end
  end
end
