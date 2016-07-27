inherited DMrptCostoInventario: TDMrptCostoInventario
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select P.Identificador1,  p.Descripcion  ,  I.Existencia, I.Cost' +
      'oPromedio Costo , (I.Existencia* I.CostoPromedio) as Importe fro' +
      'm Inventario  I '#13#10'inner join  Productos P on P.IDProducto=I.IdPr' +
      'oducto'#13#10'order by  P.Identificador1'
    object adodsMasterIdentificador1: TStringField
      DisplayLabel = 'N'#250'mero Art'#237'culo'
      FieldName = 'Identificador1'
      Size = 50
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n del art'#237'culo'
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsMasterExistencia: TFloatField
      DisplayLabel = 'Cant.Existencia'
      FieldName = 'Existencia'
    end
    object adodsMastercosto: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'costo'
      currency = True
    end
    object adodsMasterImporte: TFloatField
      FieldName = 'Importe'
      ReadOnly = True
      currency = True
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
