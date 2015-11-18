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
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsMasterIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
      Visible = False
    end
    object adodsMasterPrecioUnitario: TFloatField
      FieldName = 'PrecioUnitario'
    end
    object adodsMasterMaximo: TFloatField
      FieldName = 'Maximo'
    end
    object adodsMasterMinimo: TFloatField
      FieldName = 'Minimo'
    end
    object adodsMasterPuntoReorden: TFloatField
      FieldName = 'PuntoReorden'
    end
    object adodsMasterIdProductoTipo: TIntegerField
      FieldName = 'IdProductoTipo'
      Visible = False
    end
    object adodsMasterIdProductoEstatus: TIntegerField
      FieldName = 'IdProductoEstatus'
      Visible = False
    end
    object adodsMasterUnidadMedida: TStringField
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
      FieldKind = fkLookup
      FieldName = 'ProductoEstatus'
      LookupDataSet = adodsProductoEstatus
      LookupKeyFields = 'IdProductoEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProductoEstatus'
      Size = 50
      Lookup = True
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
    Left = 160
    Top = 56
  end
  object adodsProductoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdProductoTipo, Descripcion FROM ProductosTipos'
    Parameters = <>
    Left = 160
    Top = 112
  end
  object adodsProductoEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdProductoEstatus, Descripcion FROM ProductosEstatus'
    Parameters = <>
    Left = 160
    Top = 168
  end
  object adodsProductoFotos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProductoFoto, IdProducto, IdDocumento, Notas'#13#10' from Pro' +
      'ductosFotos'#13#10#13#10'where IDProducto=:IdProducto'#13#10
    DataSource = DataSourceMaster
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
    Left = 160
    Top = 264
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
  object DataSourceMaster: TDataSource
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
    DataSource = DataSourceMaster
    IndexFieldNames = 'IdProducto'
    MasterFields = 'IdProducto'
    Parameters = <>
    Left = 368
    Top = 256
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
    Left = 160
    Top = 336
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
    Left = 256
    Top = 264
  end
end
