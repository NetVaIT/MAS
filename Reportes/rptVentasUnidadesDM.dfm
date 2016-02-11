inherited dmrptVentasUnidades: TdmrptVentasUnidades
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT        Productos.Identificador1, Productos.Descripcion, I' +
      'nventario.Existencia, ISNULL(PPA.SalidaCantidad,0) AS CantidadA,' +
      ' ISNULL(PPM.SalidaCantidad,0) AS CantidadM, '#13#10'ISNULL(PPA.SalidaC' +
      'antidad/:mes,0) AS CantidadP, ISNULL(Inventario.Existencia/(PPA.' +
      'SalidaCantidad/:mes),0) AS CantidadF, dbo.GetBackorder(Productos' +
      '.IdProducto) AS BacKorder'#13#10'FROM            Inventario INNER JOIN' +
      #13#10'                         Productos ON Inventario.IdProducto = ' +
      'Productos.IdProducto LEFT OUTER JOIN'#13#10#13#10'(SELECT        Productos' +
      'Periodos.IdProducto, SUM(ProductosPeriodos.SalidaCantidad) AS Sa' +
      'lidaCantidad'#13#10'FROM            ProductosPeriodos INNER JOIN'#13#10'    ' +
      '                     Periodos ON ProductosPeriodos.IdPeriodo = P' +
      'eriodos.IdPeriodo'#13#10'WHERE        (Periodos.Mes <= :mes) AND (Peri' +
      'odos.Anio = :anio)'#13#10'GROUP BY ProductosPeriodos.IdProducto) AS PP' +
      'A ON Productos.IdProducto = PPA.IdProducto LEFT OUTER JOIN'#13#10#13#10'(S' +
      'ELECT        ProductosPeriodos.IdProducto, ProductosPeriodos.Sal' +
      'idaCantidad'#13#10'FROM            ProductosPeriodos INNER JOIN'#13#10'     ' +
      '                    Periodos ON ProductosPeriodos.IdPeriodo = Pe' +
      'riodos.IdPeriodo'#13#10'WHERE        (Periodos.Mes = :mes) AND (Period' +
      'os.Anio = :anio)) AS PPM ON Productos.IdProducto = PPM.IdProduct' +
      'o'#13#10#13#10'ORDER BY Productos.Identificador1'#13#10#13#10
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
    object adodsMasterBacKorder: TStringField
      FieldName = 'BacKorder'
      ReadOnly = True
      Size = 255
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
