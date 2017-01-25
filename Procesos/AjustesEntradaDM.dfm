inherited dmAjustesEntradas: TdmAjustesEntradas
  OldCreateOrder = True
  Height = 593
  Width = 642
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterPost = adodsMasterAfterPost
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdOrdenEntrada, IdDocumentoEntrada, IdAlmacen,'#13#10' IdOrdenE' +
      'status, IdPersona, IdMoneda, IdUsuario, Fecha,'#13#10' TipoCambio, Sub' +
      'Total, IVA, Total, Observaciones,'#13#10'IdOrdenEntradaTipo from Orden' +
      'esEntradas where'#13#10' idordenentradaTipo>2 and fecha>=:fini and fec' +
      'ha<=:ffin'
    Parameters = <
      item
        Name = 'fini'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ffin'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    object adodsMasterIdOrdenEntrada: TAutoIncField
      FieldName = 'IdOrdenEntrada'
      ReadOnly = True
    end
    object adodsMasterIdDocumentoEntrada: TIntegerField
      FieldName = 'IdDocumentoEntrada'
    end
    object adodsMasterIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object adodsMasterIdOrdenEstatus: TIntegerField
      FieldName = 'IdOrdenEstatus'
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterTipoCambio: TFMTBCDField
      FieldName = 'TipoCambio'
      Precision = 18
      Size = 6
    end
    object adodsMasterSubTotal: TFMTBCDField
      FieldName = 'SubTotal'
      Precision = 18
      Size = 6
    end
    object adodsMasterIVA: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 6
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 18
      Size = 6
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterIdOrdenEntradaTipo: TIntegerField
      FieldName = 'IdOrdenEntradaTipo'
    end
    object adodsMasteralmacen: TStringField
      FieldKind = fkLookup
      FieldName = 'almacen'
      LookupDataSet = adodsAlmacenes
      LookupKeyFields = 'IdAlmacen'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdAlmacen'
      Lookup = True
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsEstatus
      LookupKeyFields = 'IdOrdenEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrdenEstatus'
      Lookup = True
    end
    object adodsMasterTipoOrden: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoOrden'
      LookupDataSet = ADODtStOrdenEntradaTipo
      LookupKeyFields = 'IdOrdenEntradaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrdenEntradaTipo'
      Size = 30
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = ADODtStMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 328
  end
  inherited ActionList: TActionList
    object ActAplicaEntradaXA: TAction
      Caption = 'Aplicar Ajuste Entrada'
      OnExecute = ActAplicaEntradaXAExecute
    end
    object ActSeleccionaProducto: TAction
      Caption = 'Seleccionar Producto'
      OnExecute = ActSeleccionaProductoExecute
    end
    object ActImpresionAjuste: TAction
      Caption = 'ActImpresionAjuste'
    end
  end
  object dsmaster: TDataSource
    DataSet = adodsMaster
    OnDataChange = dsmasterDataChange
    Left = 104
    Top = 16
  end
  object ADODtStAjusteEntradaItems: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeInsert = ADODtStAjusteEntradaItemsBeforeInsert
    AfterPost = ADODtStAjusteEntradaItemsAfterPost
    AfterDelete = ADODtStAjusteEntradaItemsAfterPost
    OnNewRecord = ADODtStAjusteEntradaItemsNewRecord
    CommandText = 
      'select IdOrdenEntradaItem, IdOrdenEntrada, '#13#10'IdDocumentoEntradaD' +
      'etalle, IdProducto, ClaveProducto, Cantidad,'#13#10' CantidadSolicitad' +
      'a, Costo, Importe, ImporteMonedaLocal,'#13#10'ImpuestoArancelario, Gas' +
      'tos, ImporteTotal, CostoAproximado, '#13#10'PrecioVenta, IdCFDIConcept' +
      'oDev from OrdenesEntradasItems where IdOrdenEntrada=:IdOrdenEntr' +
      'ada'
    DataSource = dsmaster
    IndexFieldNames = 'IdOrdenEntrada'
    MasterFields = 'IdOrdenEntrada'
    Parameters = <
      item
        Name = 'IdOrdenEntrada'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 96
    Top = 80
    object ADODtStAjusteEntradaItemsIdOrdenEntradaItem: TAutoIncField
      FieldName = 'IdOrdenEntradaItem'
      ReadOnly = True
    end
    object ADODtStAjusteEntradaItemsIdOrdenEntrada: TIntegerField
      FieldName = 'IdOrdenEntrada'
    end
    object ADODtStAjusteEntradaItemsIdDocumentoEntradaDetalle: TIntegerField
      FieldName = 'IdDocumentoEntradaDetalle'
    end
    object ADODtStAjusteEntradaItemsIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStAjusteEntradaItemsClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      OnChange = ADODtStAjusteEntradaItemsClaveProductoChange
      Size = 50
    end
    object ADODtStAjusteEntradaItemsProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 150
      Lookup = True
    end
    object ADODtStAjusteEntradaItemsCantidadSolicitada: TFloatField
      FieldName = 'CantidadSolicitada'
    end
    object ADODtStAjusteEntradaItemsCosto: TFMTBCDField
      FieldName = 'Costo'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteEntradaItemsImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteEntradaItemsImporteMonedaLocal: TFMTBCDField
      FieldName = 'ImporteMonedaLocal'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteEntradaItemsImpuestoArancelario: TFMTBCDField
      FieldName = 'ImpuestoArancelario'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteEntradaItemsGastos: TFMTBCDField
      FieldName = 'Gastos'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteEntradaItemsImporteTotal: TFMTBCDField
      FieldName = 'ImporteTotal'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteEntradaItemsCostoAproximado: TFMTBCDField
      FieldName = 'CostoAproximado'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteEntradaItemsPrecioVenta: TFMTBCDField
      FieldName = 'PrecioVenta'
      Precision = 18
      Size = 6
    end
    object ADODtStAjusteEntradaItemsIdCFDIConceptoDev: TLargeintField
      FieldName = 'IdCFDIConceptoDev'
    end
    object ADODtStAjusteEntradaItemsCantidad: TFloatField
      FieldName = 'Cantidad'
      OnChange = ADODtStAjusteEntradaItemsCantidadChange
    end
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdOrdenEstatus, Descripcion from OrdenesEstatus'
    Parameters = <>
    Left = 32
    Top = 216
  end
  object adodsAlmacenes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdAlmacen, Descripcion from Almacenes'
    Parameters = <>
    Left = 32
    Top = 160
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProducto, Descripcion, Identificador1, Identificador2,'#13 +
      #10' Identificador3 from Productos'
    Parameters = <>
    Left = 176
    Top = 160
  end
  object ADODtStProductosXEspacio: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Pe.*, E.Descripcion as Espacio from ProductosXEspacio PE'#13 +
      #10'inner join Espacios E on E.IdEspacio=PE.IdEspacio'
    Parameters = <>
    Left = 176
    Top = 227
    object ADODtStProductosXEspacioIdProductoXEspacio: TAutoIncField
      FieldName = 'IdProductoXEspacio'
      ReadOnly = True
    end
    object ADODtStProductosXEspacioIdEspacio: TIntegerField
      FieldName = 'IdEspacio'
    end
    object ADODtStProductosXEspacioIdProductoKardexE: TIntegerField
      FieldName = 'IdProductoKardexE'
    end
    object ADODtStProductosXEspacioIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStProductosXEspacioIdCategoria: TIntegerField
      FieldName = 'IdCategoria'
    end
    object ADODtStProductosXEspacioIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object ADODtStProductosXEspacioEspacio: TStringField
      FieldName = 'Espacio'
      Size = 50
    end
    object ADODtStProductosXEspacioCantidad: TFloatField
      FieldName = 'Cantidad'
    end
  end
  object ADOQryInsertaProductoKardexE: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <
      item
        Name = 'IdOrdenEntradaItem1'
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
        Name = 'IdOrdenEntradaItem2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'if not Exists(Select IDProductoKardex from ProductosKardex where' +
        ' IdOrdenEntradaItem=:IdOrdenEntradaItem1)'
      
        'Insert inTo  ProductosKardex(IdProducto,IdOrdenEntradaItem,IdMon' +
        'eda,IdProductoKardexEstatus,Fecha,Movimiento,Cantidad,Importe,Id' +
        'Almacen)'
      ''
      
        'SELECT   OEI.IdProducto, OEI.IdOrdenEntradaItem,OE.IdMoneda, 1, ' +
        'GETDATE() , '#39'E'#39','
      'OEI.Cantidad, OEI.Importe, :IdAlmacen'
      'FROM         OrdenesEntradaItems OEI '
      
        'inner join OrdenesEntradas OE on OEI.idordenEntrada=OE.idOrdenEn' +
        'trada'
      ' where IdOrdenEntradaItem=:IdOrdenEntradaItem2'
      '')
    Left = 324
    Top = 315
  end
  object DSInsertaKardex: TDataSource
    AutoEdit = False
    Left = 316
    Top = 368
  end
  object ADODtStProductosKardex: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from ProductosKardex '
    Parameters = <>
    Left = 176
    Top = 289
    object ADODtStProductosKardexIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStProductosKardexIdOrdenEntradaItem: TIntegerField
      FieldName = 'IdOrdenEntradaItem'
    end
    object ADODtStProductosKardexIdOrdenSalidaItem: TIntegerField
      FieldName = 'IdOrdenSalidaItem'
    end
    object ADODtStProductosKardexIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object ADODtStProductosKardexMovimiento: TStringField
      FieldName = 'Movimiento'
      Size = 1
    end
    object ADODtStProductosKardexCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object ADODtStProductosKardexImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStProductosKardexIdProductoKardex: TAutoIncField
      FieldName = 'IdProductoKardex'
      ReadOnly = True
    end
    object ADODtStProductosKardexIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object ADODtStProductosKardexIdProductoKardexEstatus: TIntegerField
      FieldName = 'IdProductoKardexEstatus'
    end
    object ADODtStProductosKardexFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStProductosKardexPrecioUnitario: TFMTBCDField
      FieldName = 'PrecioUnitario'
      Precision = 18
      Size = 6
    end
    object ADODtStProductosKardexCostoUnitario: TFMTBCDField
      FieldName = 'CostoUnitario'
      Precision = 18
      Size = 6
    end
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
    Left = 320
    Top = 160
  end
  object ADODtStOrdenEntradaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdOrdenEntradaTipo, Identificador, Descripcion from Orden' +
      'esEntradasTipos'
    Parameters = <>
    Left = 32
    Top = 296
  end
  object ADODtStListaProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdProducto, IdProductoTipo, IdUnidadMedida,'#13#10' IdProductoE' +
      'status, Identificador1, Identificador2, Identificador3,'#13#10' Descri' +
      'pcion, PrecioUnitario from Productos'
    Parameters = <>
    Left = 320
    Top = 240
  end
  object ADODtStItemsXDevolver: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select Co.IdCFDIConcepto, Co.IdProducto, Co.IdUnidadMedida, '#13#10'Co' +
      '.Cantidad, Co.Unidad, Co.Descripcion, '#13#10'Co.NoIdentifica,  co.Val' +
      'orUnitario, Co.Importe,'#13#10'Ci.IdCfdi, CI.Folio, Ci.serie,Ci.IdCFDI' +
      'Estatus, Ci.IdClienteDomicilio, CI.IdPersonaReceptor'#13#10'from CFDIC' +
      'onceptos Co '#13#10'inner join CFDI CI on Co.IdCFDI =CI.IdCFDI '#13#10'where' +
      ' CI.IdCFDITipoDocumento=2     -- Nota Credito'#13#10'and not Exists(SE' +
      'lect * from  OrdenesEntradasItems OEI where OEI .IdCfdiConceptoD' +
      'EV=Co.IdCFDIConcepto ) '#13#10'and Ci.IdPersonaReceptor=:IdPersona'
    Parameters = <
      item
        Name = 'IdPersona'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 40
    Top = 371
    object ADODtStItemsXDevolverIdCFDIConcepto: TLargeintField
      FieldName = 'IdCFDIConcepto'
      ReadOnly = True
    end
    object ADODtStItemsXDevolverIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStItemsXDevolverIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
    end
    object ADODtStItemsXDevolverCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object ADODtStItemsXDevolverUnidad: TStringField
      FieldName = 'Unidad'
      Size = 30
    end
    object ADODtStItemsXDevolverDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 400
    end
    object ADODtStItemsXDevolverNoIdentifica: TStringField
      FieldName = 'NoIdentifica'
      Size = 50
    end
    object ADODtStItemsXDevolverImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object ADODtStItemsXDevolverIdCfdi: TLargeintField
      FieldName = 'IdCfdi'
      ReadOnly = True
    end
    object ADODtStItemsXDevolverFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADODtStItemsXDevolverserie: TStringField
      FieldName = 'serie'
    end
    object ADODtStItemsXDevolverIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object ADODtStItemsXDevolverIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object ADODtStItemsXDevolverIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object ADODtStItemsXDevolverCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaReceptor'
      Size = 150
      Lookup = True
    end
    object ADODtStItemsXDevolverValorUnitario: TFMTBCDField
      FieldName = 'ValorUnitario'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdMoneda, IdPais, Identificador, Descripcion from Monedas'
    Parameters = <>
    Left = 176
    Top = 360
    object ADODtStMonedasIdMoneda: TAutoIncField
      FieldName = 'IdMoneda'
      ReadOnly = True
    end
    object ADODtStMonedasIdPais: TIntegerField
      FieldName = 'IdPais'
    end
    object ADODtStMonedasIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object ADODtStMonedasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
  object adopAplicaEntradaXDev: TADOStoredProc
    Connection = _dmConection.ADOConnection
    ProcedureName = 'p_SetOrdenesEntradasDevolucionEstatus;1'
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
    Left = 80
    Top = 448
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 428
    Top = 160
  end
end
