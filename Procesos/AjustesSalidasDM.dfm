inherited DMAjustesSalida: TDMAjustesSalida
  OldCreateOrder = True
  Height = 561
  Width = 700
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforeOpen = adodsMasterBeforeOpen
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select idOrdenSalida, IdOrdenEstatus, IdPersonaRecolecta,'#13#10' Fech' +
      'aRegistro, Subtotal, IVA, Total, IdGeneraCFDITipoDoc,'#13#10' Acumula,' +
      ' IdPersona, IDOrdenSalidaTipo, Observaciones,'#13#10' IdAlmacen, IdUsu' +
      'ario from OrdenesSalidas where IdOrdenSalidaTipo>=2'
    Left = 40
    object adodsMasteridOrdenSalida: TAutoIncField
      FieldName = 'idOrdenSalida'
      ReadOnly = True
    end
    object adodsMasterIdOrdenEstatus: TIntegerField
      FieldName = 'IdOrdenEstatus'
    end
    object adodsMasterIdPersonaRecolecta: TIntegerField
      FieldName = 'IdPersonaRecolecta'
    end
    object adodsMasterFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object adodsMasterSubtotal: TFMTBCDField
      FieldName = 'Subtotal'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object adodsMasterIdGeneraCFDITipoDoc: TIntegerField
      FieldName = 'IdGeneraCFDITipoDoc'
    end
    object adodsMasterIVA: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 6
    end
    object adodsMasterAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterIDOrdenSalidaTipo: TIntegerField
      FieldName = 'IDOrdenSalidaTipo'
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object adodsMasterOrdenSalidaTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'OrdenSalidaTipo'
      LookupDataSet = ADODtStOrdenSalidasTipos
      LookupKeyFields = 'IdOrdenSalidaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IDOrdenSalidaTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterOrdenEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'OrdenEstatus'
      LookupDataSet = ADODtStOrdenEstatus
      LookupKeyFields = 'IdOrdenEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrdenEstatus'
      Size = 50
      Lookup = True
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 336
    Top = 8
  end
  inherited ActionList: TActionList
    object ActSeleccionaProducto: TAction
      Caption = 'Selecciona Producto'
      OnExecute = ActSeleccionaProductoExecute
    end
    object ActAplicaSalida: TAction
      Caption = 'Aplicar Salida'
      OnExecute = ActAplicaSalidaExecute
    end
    object ActAceptaUbicacion: TAction
      Caption = 'Acepta Ubicacion'
      OnExecute = ActAceptaUbicacionExecute
    end
  end
  object ADODtStAjusteSalidaItems: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeInsert = ADODtStAjusteSalidaItemsBeforeInsert
    AfterPost = ADODtStAjusteSalidaItemsAfterPost
    OnNewRecord = ADODtStAjusteSalidaItemsNewRecord
    CommandText = 
      'select IdOrdenSalidaItem, IdOrdenSalida, IdProducto,'#13#10' IdUnidadM' +
      'edida, ClaveProducto, CantidadDespachada, '#13#10'CantidadSolicitada, ' +
      'Precio, Importe, Observaciones, '#13#10'CostoUnitario from OrdenesSali' +
      'dasItems where IdOrdenSalida=:IdOrdenSalida'
    DataSource = dsmaster
    IndexFieldNames = 'IdOrdenSalida'
    MasterFields = 'IdOrdenSalida'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 5984
      end>
    Left = 64
    Top = 80
    object ADODtStAjusteSalidaItemsIdOrdenSalidaItem: TAutoIncField
      FieldName = 'IdOrdenSalidaItem'
      ReadOnly = True
    end
    object ADODtStAjusteSalidaItemsIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object ADODtStAjusteSalidaItemsIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStAjusteSalidaItemsIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStAjusteSalidaItemsClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      OnChange = ADODtStAjusteSalidaItemsClaveProductoChange
      Size = 50
    end
    object ADODtStAjusteSalidaItemsCantidadDespachada: TFloatField
      FieldName = 'CantidadDespachada'
    end
    object ADODtStAjusteSalidaItemsCantidadSolicitada: TFloatField
      FieldName = 'CantidadSolicitada'
      OnChange = ADODtStAjusteSalidaItemsCantidadSolicitadaChange
    end
    object ADODtStAjusteSalidaItemsPrecio: TFMTBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteSalidaItemsImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteSalidaItemsObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object ADODtStAjusteSalidaItemsCostoUnitario: TFMTBCDField
      FieldName = 'CostoUnitario'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteSalidaItemsProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = ADODtStProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 150
      Lookup = True
    end
    object ADODtStAjusteSalidaItemsdisponible: TFloatField
      FieldKind = fkLookup
      FieldName = 'disponible'
      LookupDataSet = ADODtStProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Existencia'
      KeyFields = 'IdProducto'
      Lookup = True
    end
  end
  object ADODtStProductosKardex: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProductoKardex, IdAlmacen, IdProducto,'#13#10' IdProductoKard' +
      'exEstatus, IdOrdenEntradaItem,'#13#10' IdOrdenSalidaItem, IdMoneda, Fe' +
      'cha, Movimiento, '#13#10'Cantidad, Importe, PrecioUnitario, CostoUnita' +
      'rio '#13#10'from ProductosKardex'
    Parameters = <>
    Left = 64
    Top = 160
  end
  object ADODtStInventario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdInventario, IdAlmacen, IdProducto, Existencia, Transito' +
      ', '#13#10'PedidoXSurtir, Apartado, CostoPromedio, PrecioVenta, Virtual' +
      #13#10' from Inventario where idProducto =:idProducto'
    Parameters = <
      item
        Name = 'idProducto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    Top = 232
  end
  object ADODtStProductosXEspacio: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeOpen = adodsMasterBeforeOpen
    CommandText = 
      'select Pe.*, E.Descripcion as Espacio from ProductosXEspacio PE'#13 +
      #10'inner join Espacios E on E.IdEspacio=PE.IdEspacio'#13#10'where Pe.idE' +
      'spacio<>:IDaduana'
    Parameters = <
      item
        Name = 'IDaduana'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 424
    Top = 232
    object ADODtStProductosXEspacioIdProductoXEspacio: TAutoIncField
      FieldName = 'IdProductoXEspacio'
      ReadOnly = True
    end
    object ADODtStProductosXEspacioIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object ADODtStProductosXEspacioIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStProductosXEspacioIdEspacio: TIntegerField
      FieldName = 'IdEspacio'
    end
    object ADODtStProductosXEspacioIdCategoria: TIntegerField
      FieldName = 'IdCategoria'
    end
    object ADODtStProductosXEspacioIdProductoKardexE: TIntegerField
      FieldName = 'IdProductoKardexE'
    end
    object ADODtStProductosXEspacioIdOrdenEntradaItem: TIntegerField
      FieldName = 'IdOrdenEntradaItem'
    end
    object ADODtStProductosXEspacioCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object ADODtStProductosXEspacioEspacio: TStringField
      FieldName = 'Espacio'
      Size = 50
    end
  end
  object ADODtStOrdenSalidasTipos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdOrdenSalidaTipo, Identificador, Descripcion from Ordene' +
      'sSalidasTipos'#13#10'Where IdOrdenSalidaTipo>1'
    Parameters = <>
    Left = 200
    Top = 160
    object ADODtStOrdenSalidasTiposIdOrdenSalidaTipo: TIntegerField
      FieldName = 'IdOrdenSalidaTipo'
    end
    object ADODtStOrdenSalidasTiposIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStOrdenSalidasTiposDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object ADODtStProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdProducto,P.Descripcion,P.PrecioUnitario, I.Existencia' +
      ', Identificador1, Identificador2, Identificador3, '#13#10' IdProductoE' +
      'status, IdProductoTipo, IdUnidadMedida,'#13#10' I.PedidoXSurtir, I.apa' +
      'rtado, (I.Existencia-I.PedidoXSurtir-I.Apartado ) as ExistenciaR' +
      'eal,'#13#10' I.PedidoXSurtir as PorSurtir, I.Apartado as PorFacturar, ' +
      'I.virtual as EnAduana'#13#10' FROM Productos P'#13#10' inner join Inventario' +
      '  I On P.IDProducto=I.IdProducto '#13#10'and I.IDAlmacen=1'
    Parameters = <>
    Left = 200
    Top = 64
    object ADODtStProductosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object ADODtStProductosIdProducto: TAutoIncField
      FieldName = 'IdProducto'
      ReadOnly = True
    end
    object ADODtStProductosIdProductoTipo: TIntegerField
      FieldName = 'IdProductoTipo'
    end
    object ADODtStProductosPrecioUnitario: TFloatField
      FieldName = 'PrecioUnitario'
    end
    object ADODtStProductosIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStProductosIdProductoEstatus: TIntegerField
      FieldName = 'IdProductoEstatus'
    end
    object ADODtStProductosIdentificador1: TStringField
      FieldName = 'Identificador1'
      Size = 50
    end
    object ADODtStProductosIdentificador2: TStringField
      FieldName = 'Identificador2'
      Size = 50
    end
    object ADODtStProductosIdentificador3: TStringField
      FieldName = 'Identificador3'
      Size = 50
    end
    object ADODtStProductosExistencia: TFloatField
      FieldName = 'Existencia'
    end
  end
  object ADODtStListaProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProducto, IdProductoTipo, IdUnidadMedida,'#13#10' IdProductoE' +
      'status, Identificador1, Identificador2, Identificador3,'#13#10' Descri' +
      'pcion, PrecioUnitario from Productos'
    Parameters = <>
    Left = 312
    Top = 160
  end
  object ADODSAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.idPersona, P.RazonSocial, P.RFC, PD.identificador, PD.I' +
      'dPersonaDomicilio, D.Calle, D.NoExterior,d.NoInterior,D.CodigoPo' +
      'stal,'#13#10'PA.Descripcion as Pais, E.Descripcion as Estado, M.Descri' +
      'pcion as Municipio, PO.Descripcion as Poblacion'#13#10'  from Personas' +
      ' P'#13#10' inner join  PersonasDomicilios PD on P.idPersona=PD.IdPerso' +
      'na '#13#10' inner join Domicilios D on D.IDDomicilio=PD.IdDomicilio'#13#10' ' +
      'inner join Paises PA on PA.IdPais=d.IdPais'#13#10' inner join Estados ' +
      'E on E.IdEstado =D.IdEstado'#13#10' inner join Municipios M on  M.IdMu' +
      'nicipio=D.IdMunicipio'#13#10' left join Poblaciones PO on PO.IdPoblaci' +
      'on =D.IdPoblacion'#13#10' '#13#10' '#13#10' where idRol=1 and P.IdPersonaEstatus=1' +
      ' or P.IdPersonaEstatus is null'
    Parameters = <>
    Left = 432
    Top = 168
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 524
    Top = 168
  end
  object dsmaster: TDataSource
    DataSet = adodsMaster
    OnDataChange = dsmasterDataChange
    Left = 96
    Top = 16
  end
  object ADODtStOrdenEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdOrdenEstatus, Identificador, Descripcion from OrdenesEs' +
      'tatus'
    Parameters = <>
    Left = 56
    Top = 304
    object ADODtStOrdenEstatusIdOrdenEstatus: TIntegerField
      FieldName = 'IdOrdenEstatus'
    end
    object ADODtStOrdenEstatusIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStOrdenEstatusDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object ADODtStSalidasUbicaciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeOpen = ADODtStSalidasUbicacionesBeforeOpen
    BeforePost = ADODtStSalidasUbicacionesBeforePost
    AfterPost = ADODtStSalidasUbicacionesAfterPost
    AfterDelete = ADODtStSalidasUbicacionesAfterDelete
    OnCalcFields = ADODtStSalidasUbicacionesCalcFields
    CommandText = 
      'select IdSalidaUbicacion, IdProductoKardexS, IdProductoXEspacio,' +
      #13#10' Cantidad, IdSalidaUbicacionEstatus,  IdOrdenSalidaItem,  IdOr' +
      'denSalida, IdProducto '#13#10'from SalidasUbicaciones where IdOrdenSal' +
      'ida =:IdOrdenSalida'
    DataSource = dsmaster
    IndexFieldNames = 'IdOrdenSalida'
    MasterFields = 'IdOrdenSalida'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 5984
      end>
    Left = 224
    Top = 229
    object ADODtStSalidasUbicacionesIdSalidaUbicacion: TAutoIncField
      FieldName = 'IdSalidaUbicacion'
      ReadOnly = True
    end
    object ADODtStSalidasUbicacionesIdProductoKardexS: TIntegerField
      FieldName = 'IdProductoKardexS'
    end
    object ADODtStSalidasUbicacionesIdProductoXEspacio: TIntegerField
      FieldName = 'IdProductoXEspacio'
    end
    object ADODtStSalidasUbicacionesCantidad: TFloatField
      FieldName = 'Cantidad'
      OnSetText = ADODtStSalidasUbicacionesCantidadSetText
    end
    object ADODtStSalidasUbicacionesIdSalidaUbicacionEstatus: TIntegerField
      FieldName = 'IdSalidaUbicacionEstatus'
    end
    object ADODtStSalidasUbicacionesIdOrdenSalidaItem: TIntegerField
      FieldName = 'IdOrdenSalidaItem'
    end
    object ADODtStSalidasUbicacionesIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object ADODtStSalidasUbicacionesDisponible: TFloatField
      FieldKind = fkLookup
      FieldName = 'Disponible'
      LookupDataSet = ADODtStProductosXEspacio
      LookupKeyFields = 'IdProductoXEspacio'
      LookupResultField = 'Cantidad'
      KeyFields = 'IdProductoXEspacio'
      Lookup = True
    end
    object ADODtStSalidasUbicacionesEspacioA: TStringField
      FieldKind = fkLookup
      FieldName = 'EspacioA'
      LookupDataSet = ADODtStProductosXEspacio
      LookupKeyFields = 'IdProductoXEspacio'
      LookupResultField = 'Espacio'
      KeyFields = 'IdProductoXEspacio'
      Lookup = True
    end
    object ADODtStSalidasUbicacionesProductoNvo: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductoNvo'
      LookupDataSet = ADODtStConProducto
      LookupKeyFields = 'IdOrdenSalidaItem'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrdenSalidaItem'
      Size = 100
      Lookup = True
    end
    object ADODtStSalidasUbicacionesIdproducto: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdproductoX'
      LookupDataSet = ADODtStAjusteSalidaItems
      LookupKeyFields = 'IdOrdenSalidaItem'
      LookupResultField = 'IdProducto'
      KeyFields = 'IdOrdenSalidaItem'
      Lookup = True
    end
    object ADODtStSalidasUbicacionesProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = ADODtStAjusteSalidaItems
      LookupKeyFields = 'IdOrdenSalidaItem'
      LookupResultField = 'Producto'
      KeyFields = 'IdOrdenSalidaItem'
      Size = 100
      Lookup = True
    end
    object ADODtStSalidasUbicacionesProductolleno: TStringField
      DisplayLabel = 'Producto OK'
      FieldKind = fkCalculated
      FieldName = 'Productolleno'
      Size = 150
      Calculated = True
    end
    object ADODtStSalidasUbicacionesIdProducto2: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStSalidasUbicacionesProductoDirecto: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductoDirecto'
      LookupDataSet = ADODtStProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 150
      Lookup = True
    end
  end
  object ADOQryInsertaProductoKardex: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdOrdenSalidaItem1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdMoneda'
        Size = -1
        Value = Null
      end
      item
        Name = 'IdAlmacen'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IdOrdenSalidaItem2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'if not Exists(Select IDProductoKardex from ProductosKardex where' +
        ' IdOrdenSalidaItem=:IdOrdenSalidaItem1)'
      
        'Insert inTo  ProductosKardex(IdProducto,IdOrdenSalidaItem,IdMone' +
        'da,IdProductoKardexEstatus,Fecha,Movimiento,Cantidad,Importe,IdA' +
        'lmacen, CostoUnitario,PrecioUnitario)'
      ''
      
        'SELECT   osi.IdProducto, osi.IdOrdenSalidaItem,:IdMoneda, 1, GET' +
        'DATE() , '#39'S'#39','
      
        'OSI.CantidadDespachada, osi.Importe, :IdAlmacen, OSI.CostoUnitar' +
        'io, Precio'
      ''
      'FROM         OrdenesSalidasItems OSI '
      'Where OSI.IdOrdenSalidaItem =:IdOrdenSalidaItem2'
      '')
    Left = 428
    Top = 321
  end
  object ADODtStDatosInventarioDir: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SElect osi.*, PK.IdAlmacen,PK.IdProductoKardex'#13#10'from OrdenesSali' +
      'dasItems OSI'#13#10'inner Join ProductosKardex PK on PK.IdOrdenSalidaI' +
      'tem=osi.IdOrdenSalidaItem'#13#10' where OSI.IdOrdenSalida=:IdOrdenSali' +
      'da'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 432
    Top = 401
    object ADODtStDatosInventarioDirIdOrdenSalidaItem: TAutoIncField
      FieldName = 'IdOrdenSalidaItem'
      ReadOnly = True
    end
    object ADODtStDatosInventarioDirIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object ADODtStDatosInventarioDirIdDocumentoSalidaDetalle: TIntegerField
      FieldName = 'IdDocumentoSalidaDetalle'
    end
    object ADODtStDatosInventarioDirIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStDatosInventarioDirIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStDatosInventarioDirClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object ADODtStDatosInventarioDirCantidadDespachada: TFloatField
      FieldName = 'CantidadDespachada'
    end
    object ADODtStDatosInventarioDirCantidadSolicitada: TFloatField
      FieldName = 'CantidadSolicitada'
    end
    object ADODtStDatosInventarioDirPrecio: TFMTBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosInventarioDirImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosInventarioDirObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object ADODtStDatosInventarioDirCostoUnitario: TFMTBCDField
      FieldName = 'CostoUnitario'
      Precision = 18
      Size = 6
    end
    object ADODtStDatosInventarioDirIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object ADODtStDatosInventarioDirIdProductoKardex: TAutoIncField
      FieldName = 'IdProductoKardex'
      ReadOnly = True
    end
  end
  object ADOQryActualizaInventario: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 436
    Top = 457
  end
  object ADODtStVerUsuario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdUsuario, IdPersona, IdUsuarioEstatus, IdUsuarioPerfil, ' +
      #13#10'Login, Password, Permiso  from Usuarios'#13#10'where IdUsuario=:IdUs' +
      'uario'#13#10#13#10
    Parameters = <
      item
        Name = 'IdUsuario'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 376
    object ADODtStVerUsuarioIdUsuario: TAutoIncField
      FieldName = 'IdUsuario'
      ReadOnly = True
    end
    object ADODtStVerUsuarioIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStVerUsuarioIdUsuarioEstatus: TIntegerField
      FieldName = 'IdUsuarioEstatus'
    end
    object ADODtStVerUsuarioIdUsuarioPerfil: TIntegerField
      FieldName = 'IdUsuarioPerfil'
    end
    object ADODtStVerUsuarioLogin: TStringField
      FieldName = 'Login'
      Size = 15
    end
    object ADODtStVerUsuarioPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
    object ADODtStVerUsuarioPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
  end
  object ADODtStConProducto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select  osi.* , p.Descripcion from   OrdenesSalidasItems osi  '#13#10 +
      'inner Join  Productos P on P.idproducto=Osi.idproducto'#13#10'where Os' +
      'i.idordenSalida=:IdOrdensalida'
    DataSource = dsmaster
    IndexFieldNames = 'IdOrdenSalida'
    MasterFields = 'IdOrdensalida'
    Parameters = <
      item
        Name = 'IdOrdensalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 5984
      end>
    Left = 216
    Top = 376
    object ADODtStConProductoIdOrdenSalidaItem: TAutoIncField
      FieldName = 'IdOrdenSalidaItem'
      ReadOnly = True
    end
    object ADODtStConProductoIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object ADODtStConProductoIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStConProductoIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStConProductoClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object ADODtStConProductoCantidadDespachada: TFloatField
      FieldName = 'CantidadDespachada'
    end
    object ADODtStConProductoCantidadSolicitada: TFloatField
      FieldName = 'CantidadSolicitada'
    end
    object ADODtStConProductoPrecio: TFMTBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 6
    end
    object ADODtStConProductoImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStConProductoObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object ADODtStConProductoCostoUnitario: TFMTBCDField
      FieldName = 'CostoUnitario'
      Precision = 18
      Size = 6
    end
    object ADODtStConProductoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
  end
end
