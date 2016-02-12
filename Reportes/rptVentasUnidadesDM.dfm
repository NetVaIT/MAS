inherited dmrptVentasUnidades: TdmrptVentasUnidades
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        Productos.IdProducto, Productos.Identificador1, Pr' +
      'oductos.Identificador2, Productos.Identificador3, Productos.Desc' +
      'ripcion, v_ProductosCantidad.Existencia, v_ProductosCantidad.Can' +
      'tidadAnual, '#13#10'                         v_ProductosCantidad.Canti' +
      'dadMensual, v_ProductosCantidad.CantidadPromedio, v_ProductosCan' +
      'tidad.CantidadFuturo, v_ProductosCantidad.Backorder'#13#10'FROM       ' +
      '     v_ProductosCantidad INNER JOIN'#13#10'                         Pr' +
      'oductos ON v_ProductosCantidad.IdProducto = Productos.IdProducto' +
      #13#10'ORDER BY Productos.Identificador1'#13#10
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
    object adodsMasterBackorder: TStringField
      FieldName = 'Backorder'
      ReadOnly = True
      Size = 255
    end
  end
  object adodsPeriodo: TADODataSet [2]
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdPeriodo, Descripcion, Mes, Anio from Periodos'
    Parameters = <>
    Left = 80
    Top = 80
    object adodsPeriodoIdPeriodo: TAutoIncField
      FieldName = 'IdPeriodo'
      ReadOnly = True
    end
    object adodsPeriodoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsPeriodoMes: TIntegerField
      FieldName = 'Mes'
    end
    object adodsPeriodoAnio: TIntegerField
      FieldName = 'Anio'
    end
  end
end
