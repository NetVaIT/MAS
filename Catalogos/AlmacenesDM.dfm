inherited dmAlmacenes: TdmAlmacenes
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdAlmacen, Identificador, Descripcion, Ubicacion from Alm' +
      'acenes'
    object adodsMasterIdAlmacen: TAutoIncField
      FieldName = 'IdAlmacen'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsMasterUbicacion: TStringField
      DisplayLabel = 'Ubicaci'#243'n'
      FieldName = 'Ubicacion'
      Size = 50
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 104
    Top = 16
  end
  object adodsEspacios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforePost = adodsEspaciosBeforePost
    OnNewRecord = adodsEspaciosNewRecord
    CommandText = 
      'select IdEspacio, IdEspacioPadre, IdAlmacen, IdEspacioTipo, IdCo' +
      'ntenedor, Descripcion from Espacios'#13#10'where IdAlmacen = :IdAlmace' +
      'n'
    DataSource = dsMaster
    MasterFields = 'IdAlmacen'
    Parameters = <
      item
        Name = 'IdAlmacen'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 32
    Top = 88
    object adodsEspaciosIdEspacio: TAutoIncField
      FieldName = 'IdEspacio'
      ReadOnly = True
      Visible = False
    end
    object adodsEspaciosIdEspacioPadre: TIntegerField
      FieldName = 'IdEspacioPadre'
      Visible = False
    end
    object adodsEspaciosIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
      Visible = False
    end
    object adodsEspaciosIdEspacioTipo: TIntegerField
      FieldName = 'IdEspacioTipo'
      Visible = False
    end
    object adodsEspaciosIdContenedor: TIntegerField
      FieldName = 'IdContenedor'
      Visible = False
    end
    object adodsEspaciosTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsEspacioTipos
      LookupKeyFields = 'IdEspacioTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdEspacioTipo'
      Size = 30
      Lookup = True
    end
    object adodsEspaciosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsEspaciosContenedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Contenedor'
      LookupDataSet = adodsContenedores
      LookupKeyFields = 'IdContenedor'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdContenedor'
      Size = 50
      Lookup = True
    end
  end
  object adodsEspacioTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdEspacioTipo, Descripcion, Seleccionar from EspaciosTipo' +
      's'
    Parameters = <>
    Left = 128
    Top = 88
  end
  object adodsContenedores: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdContenedor, Descripcion from Contenedores'
    Parameters = <>
    Left = 128
    Top = 144
  end
  object adoqEspacioValido: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdEspacio'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT EspaciosTipos.Seleccionar'
      
        'FROM Espacios INNER JOIN EspaciosTipos ON Espacios.IdEspacioTipo' +
        ' = EspaciosTipos.IdEspacioTipo'
      'WHERE Espacios.IdEspacio = :IdEspacio')
    Left = 320
    Top = 168
    object adoqEspacioValidoSeleccionar: TBooleanField
      FieldName = 'Seleccionar'
    end
  end
end
