inherited dmDocumentosEntradasDetalleAnterior: TdmDocumentosEntradasDetalleAnterior
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    LockType = ltBatchOptimistic
  end
  object adopSetDocumentosEntradasDetalles: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetDocumentosEntradasDetalles;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdDocumentoEntrada'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdProducto'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdDocumentoEntradaDetalleAnterior'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Cantidad'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@IdDocumentoEntradaDetalle'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 104
    Top = 224
  end
  object adoqryPendientes: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DocumentosEntradasDetalles.IdDocumentoEntradaDetalle, Doc' +
        'umentosEntradasDetalles.IdDocumentoEntrada, DocumentosEntradasDe' +
        'talles.IdProducto, '
      
        'DocumentosEntradasDetalles.IdDocumentoEntrada AS Numero, Documen' +
        'tosEntradasDetalles.ClaveProducto, ProductosProveedores.Identifi' +
        'cador AS IdentificadorProveedor, Productos.Descripcion AS Produc' +
        'to, '
      
        'DocumentosEntradasDetalles.CantidadPendiente, DocumentosEntradas' +
        'Detalles.Precio, 0 AS Cantidad'
      'FROM DocumentosEntradasDetalles '
      
        'INNER JOIN DocumentosEntradas ON DocumentosEntradasDetalles.IdDo' +
        'cumentoEntrada = DocumentosEntradas.IdDocumentoEntrada'
      
        'INNER JOIN Productos ON DocumentosEntradasDetalles.IdProducto = ' +
        'Productos.IdProducto'
      
        'LEFT OUTER JOIN ProductosProveedores ON DocumentosEntradasDetall' +
        'es.IdProducto = ProductosProveedores.IdProducto AND DocumentosEn' +
        'tradas.IdPersona = ProductosProveedores.IdPersonaProveedor'
      'WHERE DocumentosEntradasDetalles.CantidadPendiente > 0 '
      'AND DocumentosEntradas.IdDocumentoEntradaTipo = 2 '
      'AND DocumentosEntradas.IdDocumentoEntradaEstatus = 3 '
      'AND DocumentosEntradas.IdPersona = :IdPersona')
    Left = 104
    Top = 104
  end
  object dxmdPendientes: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F0A000000040000000C001A004964446F63756D656E
      746F456E7472616461446574616C6C650004000000030013004964446F63756D
      656E746F456E7472616461000400000003000B00496450726F647563746F0004
      000000030007004E756D65726F003200000001000E00436C61766550726F6475
      63746F0032000000010017004964656E746966696361646F7250726F76656564
      6F7200FF0000000100090050726F647563746F00080000000600120043616E74
      6964616450656E6469656E746500220000001800070050726563696F00040000
      000300090043616E746964616400}
    SortOptions = []
    Left = 104
    Top = 168
    object dxmdPendientesIdDocumentoEntradaDetalle: TAutoIncField
      FieldName = 'IdDocumentoEntradaDetalle'
    end
    object dxmdPendientesIdDocumentoEntrada: TIntegerField
      FieldName = 'IdDocumentoEntrada'
    end
    object dxmdPendientesIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object dxmdPendientesNumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'Numero'
    end
    object dxmdPendientesClaveProducto: TStringField
      DisplayLabel = 'Identificador'
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object dxmdPendientesIdentificadorProveedor: TStringField
      DisplayLabel = 'Identificador proveedor'
      FieldName = 'IdentificadorProveedor'
      Size = 50
    end
    object dxmdPendientesProducto: TStringField
      FieldName = 'Producto'
      Size = 255
    end
    object dxmdPendientesCantidadPendiente: TFloatField
      DisplayLabel = 'Pendiente'
      FieldName = 'CantidadPendiente'
    end
    object dxmdPendientesPrecio: TFMTBCDField
      FieldName = 'Precio'
      DisplayFormat = '$,0.0000;-$,0.0000'
      EditFormat = ',0.0000;-,0.0000'
    end
    object dxmdPendientesCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
  end
end
