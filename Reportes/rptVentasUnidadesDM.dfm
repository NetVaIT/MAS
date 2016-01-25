inherited dmrptVentasUnidades: TdmrptVentasUnidades
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        Productos.Identificador1, Productos.Descripcion, I' +
      'nventario.Existencia, ISNULL(PPA.SalidaCantidad,0) AS CantidadA,' +
      ' ISNULL(PPM.SalidaCantidad,0) AS CantidadM, '#13#10'ISNULL(PPA.SalidaC' +
      'antidad/:mes,0) AS CantidadP, ISNULL(Inventario.Existencia/(PPA.' +
      'SalidaCantidad/:mes),0) AS CantidadF'#13#10'FROM            Inventario' +
      ' INNER JOIN'#13#10'                         Productos ON Inventario.Id' +
      'Producto = Productos.IdProducto LEFT OUTER JOIN'#13#10#13#10'(SELECT      ' +
      '  ProductosPeriodos.IdProducto, SUM(ProductosPeriodos.SalidaCant' +
      'idad) AS SalidaCantidad'#13#10'FROM            ProductosPeriodos INNER' +
      ' JOIN'#13#10'                         Periodos ON ProductosPeriodos.Id' +
      'Periodo = Periodos.IdPeriodo'#13#10'WHERE        (Periodos.Mes <= :mes' +
      ') AND (Periodos.Anio = :anio)'#13#10'GROUP BY ProductosPeriodos.IdProd' +
      'ucto) AS PPA ON Productos.IdProducto = PPA.IdProducto LEFT OUTER' +
      ' JOIN'#13#10#13#10'(SELECT        ProductosPeriodos.IdProducto, ProductosP' +
      'eriodos.SalidaCantidad'#13#10'FROM            ProductosPeriodos INNER ' +
      'JOIN'#13#10'                         Periodos ON ProductosPeriodos.IdP' +
      'eriodo = Periodos.IdPeriodo'#13#10'WHERE        (Periodos.Mes = :mes) ' +
      'AND (Periodos.Anio = :anio)) AS PPM ON Productos.IdProducto = PP' +
      'M.IdProducto'#13#10#13#10'ORDER BY Productos.Identificador1'#13#10#13#10
    Parameters = <
      item
        Name = 'mes'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'mes'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'mes'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'anio'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'mes'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'anio'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    object adodsMasterIdentificador1: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsMasterExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object adodsMasterCantidadA: TFloatField
      DisplayLabel = 'Ventas acumulada'
      FieldName = 'CantidadA'
      ReadOnly = True
    end
    object adodsMasterCantidadM: TFloatField
      DisplayLabel = 'Ventas mes'
      FieldName = 'CantidadM'
    end
    object adodsMasterCantidadP: TFloatField
      DisplayLabel = 'Promedio mensual'
      FieldName = 'CantidadP'
      ReadOnly = True
    end
    object adodsMasterCantidadF: TFloatField
      DisplayLabel = 'Futuro en meses'
      FieldName = 'CantidadF'
      ReadOnly = True
    end
  end
  object adodsPeriodo: TADODataSet
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
