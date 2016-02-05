inherited dmBackorderEntradas: TdmBackorderEntradas
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT BackorderEntradas.IdBackorderEntrada, BackorderEntradas.I' +
      'dPersona, BackorderEntradas.IdProducto, Personas.RazonSocial AS ' +
      'Provedor, Productos.Identificador1, Productos.Descripcion AS Pro' +
      'ducto, '#13#10'BackorderEntradas.Ordenada, BackorderEntradas.Proforma,' +
      ' BackorderEntradas.Pendiente'#13#10'FROM BackorderEntradas '#13#10'INNER JOI' +
      'N Personas ON BackorderEntradas.IdPersona = Personas.IdPersona'#13#10 +
      'INNER JOIN Productos ON BackorderEntradas.IdProducto = Productos' +
      '.IdProducto'
    object adodsMasterIdBackorderEntrada: TAutoIncField
      FieldName = 'IdBackorderEntrada'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsMasterProvedor: TStringField
      FieldName = 'Provedor'
      Size = 300
    end
    object adodsMasterIdentificador1: TStringField
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsMasterProducto: TStringField
      FieldName = 'Producto'
      Size = 255
    end
    object adodsMasterOrdenada: TFloatField
      FieldName = 'Ordenada'
    end
    object adodsMasterProforma: TFloatField
      FieldName = 'Proforma'
    end
    object adodsMasterPendiente: TFloatField
      FieldName = 'Pendiente'
    end
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = adodsMaster
    Left = 112
    Top = 16
  end
  object adodsDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT BackorderEntradasDetalles.IdBackorderEntradaDetalle, Back' +
      'orderEntradasDetalles.IdBackorderEntrada, BackorderEntradasDetal' +
      'les.IdDocumentoEntradaDetalle, '#13#10'BackorderEntradasDetalles.IdDoc' +
      'umentoEntradaTipo, BackorderEntradasDetalles.IdProducto, Documen' +
      'tosEntradas.IdDocumentoEntrada, BackorderEntradasDetalles.Fecha,' +
      ' '#13#10'DocumentosEntradasTipos.Descripcion AS Tipo, BackorderEntrada' +
      'sDetalles.Cantidad, Productos.Identificador1, Productos.Descripc' +
      'ion AS Producto'#13#10'FROM BackorderEntradasDetalles'#13#10'INNER JOIN Docu' +
      'mentosEntradasDetalles ON BackorderEntradasDetalles.IdDocumentoE' +
      'ntradaDetalle = DocumentosEntradasDetalles.IdDocumentoEntradaDet' +
      'alle'#13#10'INNER JOIN DocumentosEntradas ON DocumentosEntradasDetalle' +
      's.IdDocumentoEntrada = DocumentosEntradas.IdDocumentoEntrada'#13#10'IN' +
      'NER JOIN DocumentosEntradasTipos ON BackorderEntradasDetalles.Id' +
      'DocumentoEntradaTipo = DocumentosEntradasTipos.IdDocumentoEntrad' +
      'aTipo'#13#10'INNER JOIN Productos ON BackorderEntradasDetalles.IdProdu' +
      'cto = Productos.IdProducto'#13#10'WHERE BackorderEntradasDetalles.IdBa' +
      'ckorderEntrada = :IdBackorderEntrada'
    DataSource = dsMaster
    MasterFields = 'IdBackorderEntrada'
    Parameters = <
      item
        Name = 'IdBackorderEntrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 6
      end>
    Left = 32
    Top = 88
    object adodsDetalleIdBackorderEntradaDetalle: TAutoIncField
      FieldName = 'IdBackorderEntradaDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsDetalleIdBackorderEntrada: TIntegerField
      FieldName = 'IdBackorderEntrada'
      Visible = False
    end
    object adodsDetalleIdDocumentoEntradaDetalle: TIntegerField
      FieldName = 'IdDocumentoEntradaDetalle'
      Visible = False
    end
    object adodsDetalleIdDocumentoEntradaTipo: TIntegerField
      FieldName = 'IdDocumentoEntradaTipo'
      Visible = False
    end
    object adodsDetalleIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsDetalleIdDocumentoEntrada: TAutoIncField
      FieldName = 'IdDocumentoEntrada'
      ReadOnly = True
      Visible = False
    end
    object adodsDetalleFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsDetalleTipo: TStringField
      FieldName = 'Tipo'
      Size = 15
    end
    object adodsDetalleCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object adodsDetalleIdentificador1: TStringField
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsDetalleProducto: TStringField
      FieldName = 'Producto'
      Size = 255
    end
  end
end
