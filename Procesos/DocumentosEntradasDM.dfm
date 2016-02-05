inherited dmDocumentosEntradas: TdmDocumentosEntradas
  OldCreateOrder = True
  Height = 459
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdDocumentoEntrada, IdDocumentoEntradaTipo, IdDocumentoEn' +
      'tradaEstatus, IdPersona, IdMoneda, IdUsuario, Fecha, TipoCambio,' +
      ' SubTotal, IVA, Total, Observaciones from DocumentosEntradas'#13#10'wh' +
      'ere IdDocumentoEntradaTipo = :IdDocumentoEntradaTipo'
    Parameters = <
      item
        Name = 'IdDocumentoEntradaTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    object adodsMasterIdDocumentoEntrada: TAutoIncField
      FieldName = 'IdDocumentoEntrada'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdDocumentoEntradaTipo: TIntegerField
      FieldName = 'IdDocumentoEntradaTipo'
      Visible = False
    end
    object adodsMasterIdDocumentoEntradaEstatus: TIntegerField
      FieldName = 'IdDocumentoEntradaEstatus'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
      OnChange = adodsMasterIdPersonaChange
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsMasterTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = adodsTipos
      LookupKeyFields = 'IdDocumentoEntradaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoEntradaTipo'
      Size = 15
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterProvedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Provedor'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Provedor'
      KeyFields = 'IdPersona'
      Size = 300
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterTipoCambio: TFMTBCDField
      FieldName = 'TipoCambio'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdDocumentoEntradaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoEntradaEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterSubTotal: TFMTBCDField
      FieldName = 'SubTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterIVA: TFMTBCDField
      FieldName = 'IVA'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'Usuario'
      LookupDataSet = adodsUsuarios
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Login'
      KeyFields = 'IdUsuario'
      Size = 15
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object actSeleccionaProducto: TAction
      Caption = 'actSeleccionaProducto'
      OnExecute = actSeleccionaProductoExecute
    end
    object actBuscarProducto: TAction
      Caption = 'actBuscarProducto'
      OnExecute = actBuscarProductoExecute
    end
    object actAutorizar: TAction
      Caption = 'Autorizar'
      OnExecute = actAutorizarExecute
      OnUpdate = actAutorizarUpdate
    end
  end
  object adodsTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumentoEntradaTipo, Descripcion from DocumentosEntrad' +
      'asTipos'
    Parameters = <>
    Left = 160
    Top = 64
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumentoEntradaEstatus, Descripcion from DocumentosEnt' +
      'radasEstatus'
    Parameters = <>
    Left = 160
    Top = 112
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
    Left = 160
    Top = 168
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
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, Descripcion from Monedas'
    Parameters = <>
    Left = 160
    Top = 224
  end
  object adodsUsuarios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdUsuario, Login from Usuarios'
    Parameters = <>
    Left = 160
    Top = 280
  end
  object dsmaster: TDataSource
    DataSet = adodsMaster
    Left = 96
    Top = 16
  end
  object adodsDocumentosDetalles: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = adodsDocumentosDetallesAfterPost
    AfterDelete = adodsDocumentosDetallesAfterPost
    CommandText = 
      'select IdDocumentoentradaDetalle, IdDocumentoEntrada, IdAlmacen,' +
      ' IdProducto, ClaveProducto, Cantidad, CantidadPendiente, Precio,' +
      ' Importe from DocumentosEntradasDetalles'#13#10'WHERE IdDocumentoEntra' +
      'da = :IdDocumentoEntrada'
    DataSource = dsmaster
    MasterFields = 'IdDocumentoEntrada'
    Parameters = <
      item
        Name = 'IdDocumentoEntrada'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 32
    Top = 72
    object adodsDocumentosDetallesIdDocumentoentradaDetalle: TAutoIncField
      FieldName = 'IdDocumentoentradaDetalle'
      ReadOnly = True
      Visible = False
    end
    object adodsDocumentosDetallesIdDocumentoEntrada: TIntegerField
      FieldName = 'IdDocumentoEntrada'
      Visible = False
    end
    object adodsDocumentosDetallesIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
      Visible = False
    end
    object adodsDocumentosDetallesIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsDocumentosDetallesClaveProducto: TStringField
      DisplayLabel = 'Identificador'
      FieldName = 'ClaveProducto'
      OnChange = adodsDocumentosDetallesClaveProductoChange
      OnValidate = adodsDocumentosDetallesClaveProductoValidate
      Size = 50
    end
    object adodsDocumentosDetallesProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 255
      Lookup = True
    end
    object adodsDocumentosDetallesCantidad: TFloatField
      FieldName = 'Cantidad'
      OnChange = adodsDocumentosDetallesCantidadChange
    end
    object adodsDocumentosDetallesCantidadPendiente: TFloatField
      DisplayLabel = 'Pendiente'
      FieldName = 'CantidadPendiente'
    end
    object adodsDocumentosDetallesPrecio: TFMTBCDField
      FieldName = 'Precio'
      OnChange = adodsDocumentosDetallesPrecioChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsDocumentosDetallesImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProducto, Descripcion from Productos'
    Parameters = <>
    Left = 40
    Top = 136
  end
  object adoqGetIdProducto: TADOQuery
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
      end
      item
        Name = 'Clave'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ProductosProveedores.IdProducto, ProductosProveedores.Ult' +
        'imoPrecio AS Precio'
      'FROM ProductosProveedores '
      
        'INNER JOIN Productos ON ProductosProveedores.IdProducto = Produc' +
        'tos.IdProducto'
      
        'WHERE ProductosProveedores.IdPersonaProveedor = :IdPersona AND P' +
        'roductosProveedores.IdProducto = dbo.GetIdProducto(:Clave)')
    Left = 320
    Top = 168
    object adoqGetIdProductoIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object adoqGetIdProductoPrecio: TFMTBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 6
    end
  end
  object adodsListaProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT ProductosProveedores.IdProducto, ProductosProveedores.IdP' +
      'ersonaProveedor, Productos.Identificador1, Productos.Identificad' +
      'or2, Productos.Identificador3, Productos.Descripcion, '#13#10'ISNULL(P' +
      'roductosProveedores.UltimoPrecio,0) AS PrecioUnitario'#13#10'FROM Prod' +
      'uctosProveedores '#13#10'INNER JOIN Productos ON ProductosProveedores.' +
      'IdProducto = Productos.IdProducto'#13#10'WHERE ProductosProveedores.Id' +
      'PersonaProveedor = :IdPersona'#13#10'AND (Identificador1 LIKE :Clave1 ' +
      '+ '#39'%'#39' or Identificador2 LIKE :Clave2 + '#39'%'#39' or Identificador3 Lik' +
      'e :Clave3 + '#39'%'#39')'#13#10
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Clave1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Clave2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Clave3'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Left = 320
    Top = 232
    object adodsListaProductosIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsListaProductosIdPersonaProveedor: TIntegerField
      FieldName = 'IdPersonaProveedor'
      Visible = False
    end
    object adodsListaProductosIdentificador1: TStringField
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsListaProductosIdentificador2: TStringField
      FieldName = 'Identificador2'
      Size = 50
    end
    object adodsListaProductosIdentificador3: TStringField
      FieldName = 'Identificador3'
      Size = 50
    end
    object adodsListaProductosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsListaProductosPrecioUnitario: TFMTBCDField
      DisplayLabel = 'Precio'
      FieldName = 'PrecioUnitario'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object adopUpdDocumento: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdDocumentoEntradasTotales;1'
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
      end>
    Left = 48
    Top = 368
  end
  object adopAutorizar: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetDocumentosEntradasAutorizar;1'
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
        Name = '@IdUsuario'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 160
    Top = 368
  end
end
