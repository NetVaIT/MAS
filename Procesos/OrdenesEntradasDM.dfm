inherited dmOrdenesEntradas: TdmOrdenesEntradas
  OldCreateOrder = True
  Height = 549
  Width = 492
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdOrdenEntrada, IdDocumentoEntrada, IdAlmacen, IdOrdenEst' +
      'atus, IdPersona, IdMoneda, IdUsuario, Fecha, TipoCambio, SubTota' +
      'l, IVA, Total, Observaciones '#13#10'from OrdenesEntradas'#13#10'Order by Fe' +
      'cha DESC'
    object adodsMasterIdOrdenEntrada: TAutoIncField
      FieldName = 'IdOrdenEntrada'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdDocumentoEntrada: TIntegerField
      FieldName = 'IdDocumentoEntrada'
      Visible = False
    end
    object adodsMasterIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
      Visible = False
    end
    object adodsMasterIdOrdenEstatus: TIntegerField
      FieldName = 'IdOrdenEstatus'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdOrdenEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrdenEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterAlmacen: TStringField
      FieldKind = fkLookup
      FieldName = 'Almacen'
      LookupDataSet = adodsAlmacenes
      LookupKeyFields = 'IdAlmacen'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdAlmacen'
      Size = 100
      Lookup = True
    end
    object adodsMasterCLaveProvedor: TStringField
      DisplayLabel = 'Clave'
      FieldKind = fkLookup
      FieldName = 'ClaveProvedor'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Identificador'
      KeyFields = 'IdPersona'
      Size = 10
      Lookup = True
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
      DisplayLabel = 'Tipo de cambio'
      FieldName = 'TipoCambio'
      OnChange = adodsMasterTipoCambioChange
      Precision = 18
      Size = 6
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
    object actGetTipoCambio: TAction
      Caption = '...'
      Hint = 'Obtiene la '#250'ltima cotizaci'#243'n de la moneda'
      OnExecute = actGetTipoCambioExecute
    end
    object actCrearOrden: TAction
      Caption = 'Crear orden de entrada'
      Hint = 'Crear orden de entrada'
      ImageIndex = 4
      OnExecute = actCrearOrdenExecute
    end
    object actRecibirMercancia: TAction
      Caption = 'Recibir'
      OnExecute = actRecibirMercanciaExecute
      OnUpdate = actRecibirMercanciaUpdate
    end
    object actAplicarEntrada: TAction
      Caption = 'Aplicar entrada'
      Hint = 'Permite generar las aplicaciones de entrada'
      OnExecute = actAplicarEntradaExecute
      OnUpdate = actAplicarEntradaUpdate
    end
    object actModificarArancel: TAction
      Caption = 'Modificar arancel'
      OnExecute = actModificarArancelExecute
    end
    object actModificarGastos: TAction
      Caption = 'Modificar gastos'
      OnExecute = actModificarGastosExecute
    end
  end
  object dsmaster: TDataSource
    DataSet = adodsMaster
    OnDataChange = dsmasterDataChange
    Left = 96
    Top = 16
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdOrdenEstatus, Descripcion from OrdenesEstatus'
    Parameters = <>
    Left = 56
    Top = 248
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Personas.IdPersona, Personas.IdMoneda, Personas.Identific' +
      'ador, Personas.RazonSocial AS Provedor, Monedas.Descripcion AS M' +
      'oneda'#13#10'FROM Personas '#13#10'LEFT JOIN Monedas ON Personas.IdMoneda = ' +
      'Monedas.IdMoneda'#13#10'WHERE IdRol = 2'#13#10
    Parameters = <>
    Left = 56
    Top = 304
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
    Left = 56
    Top = 360
  end
  object adodsUsuarios: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdUsuario, Login from Usuarios'
    Parameters = <>
    Left = 56
    Top = 416
  end
  object adodsAlmacenes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdAlmacen, Descripcion from Almacenes'
    Parameters = <>
    Left = 56
    Top = 200
  end
  object adodsItems: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = adodsItemsAfterPost
    AfterDelete = adodsItemsAfterPost
    OnCalcFields = adodsItemsCalcFields
    CommandText = 
      'select IdOrdenEntradaItem, IdOrdenEntrada, IdDocumentoEntradaDet' +
      'alle, IdProducto, ClaveProducto, Cantidad, CantidadSolicitada, C' +
      'osto, Importe,'#13#10'ImporteMonedaLocal, ImpuestoArancelario, Gastos,' +
      ' ImporteTotal, CostoAproximado, PrecioVenta'#13#10'from OrdenesEntrada' +
      'sItems'#13#10'where IdOrdenEntrada  = :IdOrdenEntrada'
    DataSource = dsmaster
    MasterFields = 'IdOrdenEntrada'
    Parameters = <
      item
        Name = 'IdOrdenEntrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 10
      end>
    Left = 24
    Top = 80
    object adodsItemsIdOrdenEntradaItem: TAutoIncField
      FieldName = 'IdOrdenEntradaItem'
      ReadOnly = True
      Visible = False
    end
    object adodsItemsIdOrdenEntrada: TIntegerField
      FieldName = 'IdOrdenEntrada'
      Visible = False
    end
    object adodsItemsIdDocumentoEntradaDetalle: TIntegerField
      FieldName = 'IdDocumentoEntradaDetalle'
      Visible = False
    end
    object adodsItemsIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsItemsClaveProducto: TStringField
      DisplayLabel = 'Identificador'
      FieldName = 'ClaveProducto'
      OnChange = adodsItemsClaveProductoChange
      OnValidate = adodsItemsClaveProductoValidate
      Size = 50
    end
    object adodsItemsProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 255
      Lookup = True
    end
    object adodsItemsCantidad: TFloatField
      FieldName = 'Cantidad'
      OnChange = adodsItemsCostoChange
    end
    object adodsItemsCantidadSolicitada: TFloatField
      DisplayLabel = 'Solicitada'
      FieldName = 'CantidadSolicitada'
    end
    object adodsItemsCosto: TFMTBCDField
      FieldName = 'Costo'
      OnChange = adodsItemsCostoChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsItemsImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsItemsImporteMonedaLocal: TFMTBCDField
      DisplayLabel = 'Importe moneda local'
      FieldName = 'ImporteMonedaLocal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsItemsImpuestoArancelario: TFMTBCDField
      DisplayLabel = 'Impuesto arancelario'
      FieldName = 'ImpuestoArancelario'
      OnChange = adodsItemsCostoChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsItemsGastos: TFMTBCDField
      FieldName = 'Gastos'
      OnChange = adodsItemsCostoChange
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsItemsImporteTotal: TFMTBCDField
      DisplayLabel = 'Importe total'
      FieldName = 'ImporteTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsItemsCostoAproximado: TFMTBCDField
      DisplayLabel = 'Costo aproximado'
      FieldName = 'CostoAproximado'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsItemsPrecioVenta: TFMTBCDField
      DisplayLabel = 'Precio de venta'
      FieldName = 'PrecioVenta'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsItemsPorcentajeUtilidad: TFMTBCDField
      DisplayLabel = 'Porcentaje de utilidad'
      FieldKind = fkCalculated
      FieldName = 'PorcentajeUtilidad'
      DisplayFormat = '0.00 %'
      Calculated = True
    end
  end
  object dsItems: TDataSource
    DataSet = adodsItems
    Left = 96
    Top = 80
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProducto, Descripcion from Productos'
    Parameters = <>
    Left = 160
    Top = 208
  end
  object adoqTipoCambio: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdMoneda'
        DataType = ftFloat
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT dbo.GetCotizacionMoneda(:IdMoneda) AS Valor')
    Left = 344
    Top = 208
    object adoqTipoCambioValor: TFMTBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 16
    end
  end
  object adopUpdEntrada: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_UpdOrdenEntradasTotales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdOrdenEntrada'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 56
    Top = 480
  end
  object adopGenOrdenEntrada: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_GenOrdenEntrada;1'
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
      end
      item
        Name = '@IdOrdeneEntrada'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Precision = 10
        Value = Null
      end>
    Left = 176
    Top = 480
  end
  object adodsFacturas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT DISTINCT DocumentosEntradas.IdDocumentoEntrada, Documento' +
      'sEntradas.IdPersona, DocumentosEntradasTipos.Descripcion AS Tipo' +
      ', '#13#10'DocumentosEntradas.IdDocumentoEntrada AS Numero, DocumentosE' +
      'ntradas.Fecha, Personas.Identificador, Personas.RazonSocial AS P' +
      'rovedor, '#13#10'DocumentosEntradas.Total, DocumentosEntradas.Observac' +
      'iones'#13#10'FROM DocumentosEntradas '#13#10'INNER JOIN DocumentosEntradasDe' +
      'talles ON DocumentosEntradas.IdDocumentoEntrada = DocumentosEntr' +
      'adasDetalles.IdDocumentoEntrada'#13#10'INNER JOIN Personas ON Document' +
      'osEntradas.IdPersona = Personas.IdPersona'#13#10'INNER JOIN Documentos' +
      'EntradasTipos ON DocumentosEntradas.IdDocumentoEntradaTipo = Doc' +
      'umentosEntradasTipos.IdDocumentoEntradaTipo'#13#10'WHERE (DocumentosEn' +
      'tradas.IdDocumentoEntradaTipo = 3) AND (DocumentosEntradas.IdDoc' +
      'umentoEntradaEstatus = 2) AND (DocumentosEntradasDetalles.Cantid' +
      'adPendiente > 0)'#13#10'ORDER BY DocumentosEntradas.Fecha'
    Parameters = <>
    Left = 256
    Top = 208
    object adodsFacturasIdDocumentoEntrada: TAutoIncField
      FieldName = 'IdDocumentoEntrada'
      ReadOnly = True
      Visible = False
    end
    object adodsFacturasIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsFacturasTipo: TStringField
      FieldName = 'Tipo'
      Size = 15
    end
    object adodsFacturasNumero: TAutoIncField
      FieldName = 'Numero'
      ReadOnly = True
    end
    object adodsFacturasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsFacturasIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object adodsFacturasProvedor: TStringField
      FieldName = 'Provedor'
      Size = 300
    end
    object adodsFacturasTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsFacturasObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
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
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ProductosProveedores.IdProducto, ProductosProveedores.Ult' +
        'imoPrecio AS Costo, Productos.PrecioUnitario AS Precio, ISNULL(B' +
        'ackorderEntradas.Pendiente, 0) AS Pendiente'
      'FROM ProductosProveedores '
      
        'INNER JOIN Productos ON ProductosProveedores.IdProducto = Produc' +
        'tos.IdProducto'
      
        'LEFT JOIN BackorderEntradas ON ProductosProveedores.IdProducto =' +
        ' BackorderEntradas.IdProducto AND ProductosProveedores.IdPersona' +
        'Proveedor = BackorderEntradas.IdPersona'
      
        'WHERE ProductosProveedores.IdPersonaProveedor = :IdPersona AND P' +
        'roductosProveedores.IdProducto = dbo.GetIdProducto(:Clave)')
    Left = 256
    Top = 272
    object adoqGetIdProductoIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object adoqGetIdProductoCosto: TFMTBCDField
      FieldName = 'Costo'
      Precision = 18
      Size = 6
    end
    object adoqGetIdProductoPrecio: TFloatField
      FieldName = 'Precio'
    end
    object adoqGetIdProductoPendiente: TFloatField
      FieldName = 'Pendiente'
      ReadOnly = True
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
    Left = 256
    Top = 328
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
  object adopSetEstatus: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetOrdenesEntradasEstatus;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdOrdenEntrada'
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
    Left = 296
    Top = 480
  end
end
