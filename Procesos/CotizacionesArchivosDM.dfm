inherited dmCotizacionesArchivos: TdmCotizacionesArchivos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdDocumentoSalidaArchivo, IdDocumentoSalida, IdDocumento,' +
      #13#10' Notas from DocumentosSalidasArchivos '#13#10'where IdDocumentoSalid' +
      'a =:IdDocumentoSalida'#13#10
    Parameters = <
      item
        Name = 'IdDocumentoSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdDocumentoSalidaArchivo: TAutoIncField
      FieldName = 'IdDocumentoSalidaArchivo'
      ReadOnly = True
    end
    object adodsMasterIdDocumentoSalida: TIntegerField
      FieldName = 'IdDocumentoSalida'
    end
    object adodsMasterIdDocumento: TIntegerField
      FieldName = 'IdDocumento'
    end
    object adodsMasterNombreArchivo: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreArchivo'
      LookupDataSet = ADODsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 150
      Lookup = True
    end
    object adodsMasterNotas: TStringField
      FieldName = 'Notas'
      Size = 200
    end
  end
  inherited ActionList: TActionList
    object ActNuevoDocumento: TAction
      Caption = 'Nuevo Documento'
      OnExecute = ActNuevoDocumentoExecute
    end
    object ActEditaDocumento: TAction
      Caption = 'Edita Documento'
      OnExecute = ActEditaDocumentoExecute
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 104
    Top = 16
  end
  object ADODsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo'#13#10' from Documentos'
    DataSource = dsMaster
    IndexFieldNames = 'IdDocumento'
    MasterFields = 'IDDocumento'
    Parameters = <>
    Left = 104
    Top = 83
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
    object ADODsDocumentoDocumentoTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentoTipo'
      LookupDataSet = adodsDocumentoTipo
      LookupKeyFields = 'IdDocumentoTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoTipo'
      Size = 30
      Lookup = True
    end
    object ADODsDocumentoDocumentoClase: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentoClase'
      LookupDataSet = adodsDocumentoClase
      LookupKeyFields = 'IdDocumentoClase'
      LookupResultField = 'IdDocumentoClase'
      KeyFields = 'IdDocumentoClase'
      Size = 30
      Lookup = True
    end
  end
  object adodsDocumentoTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoTipo, Descripcion FROM DocumentosTipos'
    Parameters = <>
    Left = 104
    Top = 184
  end
  object adodsDocumentoClase: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumentoClase, Descripcion FROM DocumentosClases'
    Parameters = <>
    Left = 104
    Top = 248
  end
end
