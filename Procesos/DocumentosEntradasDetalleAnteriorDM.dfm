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
    OnCalcFields = adoqryPendientesCalcFields
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
        'Detalles.Precio, 0 AS Cantidad,'
      'DocumentosEntradas.Identificador as FacturaProveedor'
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
    Top = 96
    object adoqryPendientesIdDocumentoEntradaDetalle: TAutoIncField
      FieldName = 'IdDocumentoEntradaDetalle'
      ReadOnly = True
    end
    object adoqryPendientesIdDocumentoEntrada: TIntegerField
      FieldName = 'IdDocumentoEntrada'
    end
    object adoqryPendientesIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object adoqryPendientesNumero: TIntegerField
      FieldName = 'Numero'
    end
    object adoqryPendientesClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object adoqryPendientesIdentificadorProveedor: TStringField
      FieldName = 'IdentificadorProveedor'
      Size = 50
    end
    object adoqryPendientesProducto: TStringField
      FieldName = 'Producto'
      Size = 255
    end
    object adoqryPendientesCantidadPendiente: TFloatField
      FieldName = 'CantidadPendiente'
    end
    object adoqryPendientesPrecio: TFMTBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 6
    end
    object adoqryPendientesCantidad: TIntegerField
      FieldName = 'Cantidad'
      ReadOnly = True
    end
    object adoqryPendientesFacturaProveedor: TStringField
      FieldName = 'FacturaProveedor'
      Size = 50
    end
    object adoqryPendientesSeleccionados: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Seleccionados'
      Calculated = True
    end
    object adoqryPendientesRestantes: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Restantes'
      Calculated = True
    end
  end
  object dxmdPendientes: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F0D000000040000000C001A004964446F63756D656E
      746F456E7472616461446574616C6C650004000000030013004964446F63756D
      656E746F456E7472616461000400000003000B00496450726F647563746F000A
      000000010011004661637475726150726F766565646F72000400000003000700
      4E756D65726F003200000001000E00436C61766550726F647563746F00320000
      00010017004964656E746966696361646F7250726F766565646F7200FF000000
      0100090050726F647563746F00080000000600120043616E746964616450656E
      6469656E746500220000001800070050726563696F0004000000030009004361
      6E74696461640004000000030006004F7264656E000400000003000E0053656C
      656363696F6E61646F7300}
    SortOptions = []
    OnNewRecord = dxmdPendientesNewRecord
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
    object dxmdPendientesFacturaProveedor: TStringField
      DisplayLabel = 'Factura Proveedor'
      FieldName = 'FacturaProveedor'
      Size = 10
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
      OnChange = dxmdPendientesCantidadChange
    end
    object dxmdPendientesOrden: TIntegerField
      FieldName = 'Orden'
    end
    object dxmdPendientesseleccionados: TIntegerField
      FieldName = 'Seleccionados'
    end
    object dxmdPendientesRestantes: TIntegerField
      FieldName = 'Restantes'
    end
  end
  object ADOQrySumaSeleccionados: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IDDocumentoEntrada'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdDocumentoEntradaDetalleAnterior'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select IdDocumentoEntradaDetalleAnterior ,Sum (cantidadPendiente' +
        ') as Suma from DocumentosEntradasDetalles DED'
      
        'where exists(Select * from DocumentosEntradas DE where DE.IDdocu' +
        'mentoEntrada=:IDDocumentoEntrada '
      'and DED.IdDocumentoEntrada=DE.IdDocumentoEntrada)'
      
        'and Ded. IdDocumentoEntradaDetalleAnterior=:IdDocumentoEntradaDe' +
        'talleAnterior'
      'Group by IdDocumentoEntradaDetalleAnterior')
    Left = 304
    Top = 160
    object ADOQrySumaSeleccionadosIdDocumentoEntradaDetalleAnterior: TIntegerField
      FieldName = 'IdDocumentoEntradaDetalleAnterior'
    end
    object ADOQrySumaSeleccionadosSuma: TFloatField
      FieldName = 'Suma'
      ReadOnly = True
    end
  end
end
