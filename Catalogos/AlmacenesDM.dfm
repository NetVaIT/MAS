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
  object adodsZonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdZona, IdAlmacen, Identificador, Descripcion from Zonas ' +
      'WHERE IdAlmacen = :IdAlmacen'
    DataSource = dsMaster
    MasterFields = 'IdAlmacen'
    Parameters = <
      item
        Name = 'IdAlmacen'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 96
    object adodsZonasIdZona: TAutoIncField
      FieldName = 'IdZona'
      ReadOnly = True
      Visible = False
    end
    object adodsZonasIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
      Visible = False
    end
    object adodsZonasIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsZonasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object dsZonas: TDataSource
    DataSet = adodsZonas
    Left = 120
    Top = 96
  end
  object adodsAnaqueles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdAnaquel, IdZona, Identificador, Descripcion from Anaque' +
      'les WHERE IdZona = :IdZona'
    DataSource = dsZonas
    MasterFields = 'IdZona'
    Parameters = <
      item
        Name = 'IdZona'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 152
    object adodsAnaquelesIdAnaquel: TAutoIncField
      FieldName = 'IdAnaquel'
      ReadOnly = True
      Visible = False
    end
    object adodsAnaquelesIdZona: TIntegerField
      FieldName = 'IdZona'
      Visible = False
    end
    object adodsAnaquelesIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsAnaquelesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object dsAnaqueles: TDataSource
    DataSet = adodsAnaqueles
    Left = 120
    Top = 152
  end
  object adodsSecciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdSeccion, IdAnaquel, Fila, Columna, Espacios from Seccio' +
      'nes WHERE IdAnaquel = :IdAnaquel'
    DataSource = dsAnaqueles
    MasterFields = 'IdAnaquel'
    Parameters = <
      item
        Name = 'IdAnaquel'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 208
    object adodsSeccionesIdSeccion: TAutoIncField
      FieldName = 'IdSeccion'
      ReadOnly = True
      Visible = False
    end
    object adodsSeccionesIdAnaquel: TIntegerField
      FieldName = 'IdAnaquel'
      Visible = False
    end
    object adodsSeccionesFila: TStringField
      FieldName = 'Fila'
      Size = 50
    end
    object adodsSeccionesColumna: TStringField
      FieldName = 'Columna'
      Size = 50
    end
    object adodsSeccionesEspacios: TIntegerField
      FieldName = 'Espacios'
    end
  end
  object dsSecciones: TDataSource
    DataSet = adodsSecciones
    Left = 128
    Top = 208
  end
  object adodsEspacios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdEspacio, IdSeccion, Descripcion from Espacios WHERE IdS' +
      'eccion = :IdSeccion'
    DataSource = dsSecciones
    MasterFields = 'IdSeccion'
    Parameters = <
      item
        Name = 'IdSeccion'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 264
    object adodsEspaciosIdEspacio: TAutoIncField
      FieldName = 'IdEspacio'
      ReadOnly = True
      Visible = False
    end
    object adodsEspaciosIdSeccion: TIntegerField
      FieldName = 'IdSeccion'
      Visible = False
    end
    object adodsEspaciosDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 50
    end
  end
end
