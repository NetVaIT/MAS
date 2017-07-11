inherited dmCotizacionesArchivos: TdmCotizacionesArchivos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnCalcFields = adodsMasterCalcFields
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
    object adodsMasterNotas: TStringField
      FieldName = 'Notas'
      Size = 200
    end
    object adodsMasterNombreArchivo: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreArchivo'
      Size = 500
      Calculated = True
    end
    object adodsMasterotronombre: TStringField
      FieldKind = fkLookup
      FieldName = 'otronombre'
      LookupDataSet = ADODsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumento'
      Size = 300
      Lookup = True
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
    Left = 112
    Top = 16
  end
  object ADODsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo'#13#10' from Documentos where id' +
      'Documento=:IdDocumento'
    DataSource = dsMaster
    IndexFieldNames = 'IdDocumento'
    MasterFields = 'IDDocumento'
    Parameters = <
      item
        Name = 'IdDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
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
  object ADODtStDocumentoCon: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumento, IdDocumentoTipo, IdDocumentoClase, Descripci' +
      'on, NombreArchivo, IdArchivo, Archivo'#13#10' from Documentos where id' +
      'Documento=:IdDocumento'
    Parameters = <
      item
        Name = 'IdDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 304
    Top = 163
    object ADODtStDocumentoConIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object ADODtStDocumentoConDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object ADODtStDocumentoConNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
  end
end
