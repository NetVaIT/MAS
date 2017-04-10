inherited dmInventario: TdmInventario
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'Select I.* , P.Descripcion, P.identificador1,P.Identificador2, P' +
      '.Identificador3, P.PrecioUnitario from '#13#10'Inventario I inner join' +
      ' Productos P on P.IdProducto=I.idproducto'#13#10'order by Orden'
    object adodsMasterIdInventario: TAutoIncField
      FieldName = 'IdInventario'
      ReadOnly = True
    end
    object adodsMasterIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object adodsMasterIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object adodsMasterExistencia: TFloatField
      FieldName = 'Existencia'
    end
    object adodsMasterTransito: TFloatField
      FieldName = 'Transito'
    end
    object adodsMasterPedidoXSurtir: TFloatField
      FieldName = 'PedidoXSurtir'
    end
    object adodsMasterApartado: TFloatField
      FieldName = 'Apartado'
    end
    object adodsMasterCostoPromedio: TFloatField
      FieldName = 'CostoPromedio'
      currency = True
    end
    object adodsMasterPrecioVenta: TFloatField
      FieldName = 'PrecioVenta'
      currency = True
    end
    object adodsMasterVirtual: TFloatField
      FieldName = 'Virtual'
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Art'#237'culo'
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsMasterPrecioUnitario: TFloatField
      FieldName = 'PrecioUnitario'
    end
    object adodsMasteridentificador1: TStringField
      DisplayLabel = 'Identificador1'
      FieldName = 'identificador1'
      Size = 50
    end
    object adodsMasterIdentificador2: TStringField
      FieldName = 'Identificador2'
      Size = 50
    end
    object adodsMasterIdentificador3: TStringField
      FieldName = 'Identificador3'
      Size = 50
    end
  end
end
