inherited dmBackorderEntradas: TdmBackorderEntradas
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT BackorderEntradas.IdBackorderEntrada, BackorderEntradas.I' +
      'dPersona, BackorderEntradas.IdProducto, Personas.RazonSocial AS ' +
      'Provedor, Productos.Identificador1, Productos.Descripcion AS Pro' +
      'ducto, '#13#10'BackorderEntradas.Ordenada, BackorderEntradas.Facturada' +
      ', BackorderEntradas.Entrada, BackorderEntradas.Transito, Backord' +
      'erEntradas.Pendiente'#13#10'FROM BackorderEntradas '#13#10'INNER JOIN Person' +
      'as ON BackorderEntradas.IdPersona = Personas.IdPersona'#13#10'INNER JO' +
      'IN Productos ON BackorderEntradas.IdProducto = Productos.IdProdu' +
      'cto'
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
    object adodsMasterFacturada: TFloatField
      FieldName = 'Facturada'
    end
    object adodsMasterEntrada: TFloatField
      FieldName = 'Entrada'
    end
    object adodsMasterTransito: TFloatField
      FieldName = 'Transito'
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
      'les.IdDocumentoEntradaDetalle, BackorderEntradasDetalles.IdOrden' +
      'EntradaItem, '#13#10'BackorderEntradasDetalles.IdBackorderEntradaTipo,' +
      ' BackorderEntradasDetalles.IdProducto, BackorderEntradasDetalles' +
      '.Fecha, BackorderEntradasTipos.Descripcion AS Tipo, '#13#10'ISNULL(Doc' +
      'umentosEntradas.IdDocumentoEntrada, OrdenesEntradas.IdOrdenEntra' +
      'da) AS Folio, BackorderEntradasDetalles.Cantidad, Productos.Iden' +
      'tificador1, '#13#10'Productos.Descripcion AS Producto'#13#10'FROM BackorderE' +
      'ntradasDetalles'#13#10'INNER JOIN BackorderEntradasTipos ON BackorderE' +
      'ntradasDetalles.IdBackorderEntradaTipo = BackorderEntradasTipos.' +
      'IdBackorderEntradaTipo'#13#10'INNER JOIN Productos ON BackorderEntrada' +
      'sDetalles.IdProducto = Productos.IdProducto '#13#10'LEFT JOIN Document' +
      'osEntradasDetalles ON BackorderEntradasDetalles.IdDocumentoEntra' +
      'daDetalle = DocumentosEntradasDetalles.IdDocumentoEntradaDetalle' +
      ' '#13#10'LEFT JOIN DocumentosEntradas ON DocumentosEntradasDetalles.Id' +
      'DocumentoEntrada = DocumentosEntradas.IdDocumentoEntrada'#13#10'LEFT J' +
      'OIN OrdenesEntradasItems ON BackorderEntradasDetalles.IdOrdenEnt' +
      'radaItem = OrdenesEntradasItems.IdOrdenEntradaItem'#13#10'LEFT JOIN Or' +
      'denesEntradas ON OrdenesEntradasItems.IdOrdenEntrada = OrdenesEn' +
      'tradas.IdOrdenEntrada'#13#10'WHERE BackorderEntradasDetalles.IdBackord' +
      'erEntrada = :IdBackorderEntrada'
    DataSource = dsMaster
    MasterFields = 'IdBackorderEntrada'
    Parameters = <
      item
        Name = 'IdBackorderEntrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
    object adodsDetalleIdOrdenEntradaItem: TIntegerField
      FieldName = 'IdOrdenEntradaItem'
      Visible = False
    end
    object adodsDetalleIdBackorderEntradaTipo: TIntegerField
      FieldName = 'IdBackorderEntradaTipo'
      Visible = False
    end
    object adodsDetalleIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsDetalleFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsDetalleTipo: TStringField
      FieldName = 'Tipo'
      Size = 15
    end
    object adodsDetalleFolio: TIntegerField
      FieldName = 'Folio'
      ReadOnly = True
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
