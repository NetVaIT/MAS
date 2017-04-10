inherited dmrptVentasProyeccion: TdmrptVentasProyeccion
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT Productos.IdProducto, Productos.Identificador1, Productos' +
      '.Identificador2, Productos.Identificador3, Productos.Descripcion' +
      ', v_ProductosCantidad.Existencia, v_ProductosCantidad.CantidadAn' +
      'ual, '#13#10'v_ProductosCantidad.CantidadMensual, v_ProductosCantidad.' +
      'CantidadPromedio, v_ProductosCantidad.CantidadFuturo, v_Producto' +
      'sCantidad.CantidadBackorder, v_ProductosCantidad.Backorder'#13#10'FROM' +
      ' v_ProductosCantidad '#13#10'INNER JOIN Productos ON v_ProductosCantid' +
      'ad.IdProducto = Productos.IdProducto'#13#10'ORDER BY  Productos.Orden ' +
      '--Productos.Identificador1'#13#10
    object adodsMasterIdProducto: TAutoIncField
      FieldName = 'IdProducto'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdentificador1: TStringField
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsMasterIdentificador2: TStringField
      FieldName = 'Identificador2'
      Visible = False
      Size = 50
    end
    object adodsMasterIdentificador3: TStringField
      FieldName = 'Identificador3'
      Visible = False
      Size = 50
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsMasterExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object adodsMasterCantidadAnual: TFloatField
      DisplayLabel = 'Ventas acumuladas'
      FieldName = 'CantidadAnual'
      ReadOnly = True
    end
    object adodsMasterCantidadMensual: TFloatField
      DisplayLabel = 'Ventas mes'
      FieldName = 'CantidadMensual'
      ReadOnly = True
    end
    object adodsMasterCantidadPromedio: TFloatField
      DisplayLabel = 'Promedio mensual'
      FieldName = 'CantidadPromedio'
      ReadOnly = True
    end
    object adodsMasterCantidadFuturo: TFloatField
      DisplayLabel = 'Futuro en meses'
      FieldName = 'CantidadFuturo'
      ReadOnly = True
    end
    object adodsMasterCantidadBackorder: TFloatField
      FieldName = 'CantidadBackorder'
      ReadOnly = True
    end
    object adodsMasterBackorder: TStringField
      FieldName = 'Backorder'
      ReadOnly = True
      Size = 255
    end
  end
  inherited ActionList: TActionList
    object actExecute: TAction
      Caption = 'Proyectar'
      ImageIndex = 13
      OnExecute = actExecuteExecute
    end
  end
  object dxmdProyeccion: TdxMemData
    Indexes = <>
    SortOptions = []
    OnCalcFields = dxmdProyeccionCalcFields
    OnNewRecord = dxmdProyeccionNewRecord
    Left = 128
    Top = 16
    object dxmdProyeccionIdProducto: TIntegerField
      FieldName = 'IdProducto'
      ReadOnly = True
      Visible = False
    end
    object dxmdProyeccionIdentificador1: TStringField
      FieldName = 'Identificador1'
      ReadOnly = True
      Size = 50
    end
    object dxmdProyeccionIdentificador2: TStringField
      FieldName = 'Identificador2'
      ReadOnly = True
      Size = 50
    end
    object dxmdProyeccionIdentificador3: TStringField
      FieldName = 'Identificador3'
      ReadOnly = True
      Size = 50
    end
    object dxmdProyeccionDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 255
    end
    object dxmdProyeccionCantidadAnual: TFloatField
      DisplayLabel = 'Ventas acumuladas'
      FieldName = 'CantidadAnual'
      ReadOnly = True
    end
    object dxmdProyeccionCantidadMensual: TFloatField
      DisplayLabel = 'Ventas mes'
      FieldName = 'CantidadMensual'
      ReadOnly = True
    end
    object dxmdProyeccionCantidadFuturo: TFloatField
      DisplayLabel = 'Futuro en meses'
      FieldName = 'CantidadFuturo'
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object dxmdProyeccionBackorder: TStringField
      FieldName = 'Backorder'
      ReadOnly = True
      Size = 255
    end
    object dxmdProyeccionMeses: TIntegerField
      FieldName = 'Meses'
    end
    object dxmdProyeccionCantidadPromedio: TFloatField
      DisplayLabel = 'Promedio mensual'
      FieldName = 'CantidadPromedio'
    end
    object dxmdProyeccionCantidadRequerida: TFloatField
      DisplayLabel = 'Requerida'
      FieldKind = fkCalculated
      FieldName = 'CantidadRequerida'
      Calculated = True
    end
    object dxmdProyeccionExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object dxmdProyeccionCantidadBackorder: TFloatField
      DisplayLabel = 'Cantidad Backorder'
      FieldName = 'CantidadBackorder'
    end
    object dxmdProyeccionCantidadComprar: TFloatField
      DisplayLabel = 'A comprar'
      FieldKind = fkCalculated
      FieldName = 'CantidadComprar'
      Calculated = True
    end
    object dxmdProyeccionIdPersona1: TIntegerField
      FieldName = 'IdPersona1'
      Visible = False
    end
    object dxmdProyeccionIdPersona2: TIntegerField
      FieldName = 'IdPersona2'
      Visible = False
    end
    object dxmdProyeccionIdPersona3: TIntegerField
      FieldName = 'IdPersona3'
      Visible = False
    end
    object dxmdProyeccionProveedor1: TStringField
      DisplayLabel = 'Proveedor 1'
      FieldKind = fkLookup
      FieldName = 'Proveedor1'
      LookupDataSet = adodsPersonas1
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Identificador'
      KeyFields = 'IdPersona1'
      Size = 5
      Lookup = True
    end
    object dxmdProyeccionComprar1: TFloatField
      DisplayLabel = 'Comprar 1'
      FieldName = 'Comprar1'
    end
    object dxmdProyeccionProveedor2: TStringField
      DisplayLabel = 'Proveedor 2'
      FieldKind = fkLookup
      FieldName = 'Proveedor2'
      LookupDataSet = adodsPersonas2
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Identificador'
      KeyFields = 'IdPersona2'
      Size = 5
      Lookup = True
    end
    object dxmdProyeccionComprar2: TFloatField
      DisplayLabel = 'Comprar 2'
      FieldName = 'Comprar2'
    end
    object dxmdProyeccionProveedor3: TStringField
      DisplayLabel = 'Proveedor 3'
      FieldKind = fkLookup
      FieldName = 'Proveedor3'
      LookupDataSet = adodsPersonas3
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Identificador'
      KeyFields = 'IdPersona3'
      Size = 5
      Lookup = True
    end
    object dxmdProyeccionComprar3: TFloatField
      DisplayLabel = 'Comprar 3'
      FieldName = 'Comprar3'
    end
  end
  object adodsPersonas1: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Personas.IdPersona, Personas.IdMoneda, Personas.Identific' +
      'ador, Personas.RazonSocial AS Provedor, Monedas.Descripcion AS M' +
      'oneda'#13#10'FROM Personas '#13#10'LEFT JOIN Monedas ON Personas.IdMoneda = ' +
      'Monedas.IdMoneda'#13#10'WHERE IdRol = 2'#13#10
    Parameters = <>
    Left = 120
    Top = 96
  end
  object adodsPersonas2: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Personas.IdPersona, Personas.IdMoneda, Personas.Identific' +
      'ador, Personas.RazonSocial AS Provedor, Monedas.Descripcion AS M' +
      'oneda'#13#10'FROM Personas '#13#10'LEFT JOIN Monedas ON Personas.IdMoneda = ' +
      'Monedas.IdMoneda'#13#10'WHERE IdRol = 2'#13#10
    Parameters = <>
    Left = 120
    Top = 152
  end
  object adodsPersonas3: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Personas.IdPersona, Personas.IdMoneda, Personas.Identific' +
      'ador, Personas.RazonSocial AS Provedor, Monedas.Descripcion AS M' +
      'oneda'#13#10'FROM Personas '#13#10'LEFT JOIN Monedas ON Personas.IdMoneda = ' +
      'Monedas.IdMoneda'#13#10'WHERE IdRol = 2'#13#10
    Parameters = <>
    Left = 120
    Top = 208
  end
end
