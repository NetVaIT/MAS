inherited dmDevoluciones: TdmDevoluciones
  OldCreateOrder = True
  Height = 582
  Width = 703
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforeOpen = adodsMasterBeforeOpen
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdOrdenEntrada, IdDocumentoEntrada, IdAlmacen, '#13#10'IdOrdenE' +
      'status, IdPersona, IdMoneda, IdUsuario, Fecha, '#13#10'TipoCambio, Sub' +
      'Total, IVA, Total, Observaciones,'#13#10' IdOrdenEntradaTipo from Orde' +
      'nesEntradas where'#13#10' IdOrdenEntradaTipo=2'
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
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsPersonas
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 150
      Lookup = True
    end
    object adodsMasterTipoOrden: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoOrden'
      LookupDataSet = ADODtStOrdenEntradaTipo
      LookupKeyFields = 'IdOrdenEntradaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrdenEntradaTipo'
      Lookup = True
    end
  end
  inherited ActionList: TActionList
    object ActAplicarEntrada: TAction
      Caption = 'Aplicar Devoluci'#243'n'
      OnExecute = ActAplicarEntradaExecute
    end
    object ActSeleccionaProducto: TAction
      Caption = 'SeleccionaProducto'
      OnExecute = ActSeleccionaProductoExecute
    end
    object ActSeleccionItemsDev: TAction
      Caption = 'ActSeleccionItemsDev'
      OnExecute = ActSeleccionItemsDevExecute
    end
  end
  object dsmaster: TDataSource
    DataSet = adodsMaster
    OnDataChange = dsmasterDataChange
    Left = 96
    Top = 16
  end
  object adodsItems: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeInsert = adodsItemsBeforeInsert
    AfterPost = adodsItemsAfterPost
    OnNewRecord = adodsItemsNewRecord
    CommandText = 
      'select IdOrdenEntradaItem, IdOrdenEntrada, IdProducto,'#13#10' ClavePr' +
      'oducto, Cantidad, CantidadSolicitada, Importe,'#13#10'ImporteMonedaLoc' +
      'al, ImporteTotal, Costo, PrecioVenta, '#13#10'CostoAproximado, IdCFDIC' +
      'onceptoDev'#13#10'from OrdenesEntradasItems'#13#10'where IdOrdenEntrada  = :' +
      'IdOrdenEntrada'
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
        Value = 1
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
    object adodsItemsIdProducto: TIntegerField
      FieldName = 'IdProducto'
      Visible = False
    end
    object adodsItemsClaveProducto: TStringField
      DisplayLabel = 'Identificador'
      FieldName = 'ClaveProducto'
      OnChange = adodsItemsClaveProductoChange
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
      OnChange = adodsItemsCantidadChange
    end
    object adodsItemsCantidadSolicitada: TFloatField
      DisplayLabel = 'Solicitada'
      FieldName = 'CantidadSolicitada'
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
    object adodsItemsImporteTotal: TFMTBCDField
      DisplayLabel = 'Importe total'
      FieldName = 'ImporteTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsItemsCosto: TFMTBCDField
      FieldName = 'Costo'
      Precision = 18
      Size = 6
    end
    object adodsItemsPrecioVenta: TFMTBCDField
      FieldName = 'PrecioVenta'
      Precision = 18
      Size = 6
    end
    object adodsItemsCostoAproximado: TFMTBCDField
      FieldName = 'CostoAproximado'
      Precision = 18
      Size = 6
    end
    object adodsItemsIdCFDIConceptoDev: TLargeintField
      FieldName = 'IdCFDIConceptoDev'
    end
  end
  object dsItems: TDataSource
    DataSet = adodsItems
    Left = 96
    Top = 80
  end
  object adodsEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdOrdenEstatus, Descripcion from OrdenesEstatus'
    Parameters = <>
    Left = 24
    Top = 216
  end
  object adodsAlmacenes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdAlmacen, Descripcion from Almacenes'
    Parameters = <>
    Left = 24
    Top = 160
  end
  object adodsProductos: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdProducto, Descripcion from Productos'
    Parameters = <>
    Left = 184
    Top = 160
  end
  object adodsPersonas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdPersona,P.RFC, P.RazonSocial, P.IDRol,P.SaldoCliente'#13 +
      #10'FROM Personas P'#13#10'where P.IdRol=1  and P.idPersona>-1'#13#10'order by ' +
      'P.RazonSocial'
    Parameters = <>
    Left = 184
    Top = 16
    object adodsPersonasIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsPersonasRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsPersonasRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsPersonasIDRol: TIntegerField
      FieldName = 'IDRol'
    end
    object adodsPersonasSaldoCliente: TFMTBCDField
      FieldName = 'SaldoCliente'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStDireccionesCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13#10',D.Calle' +
      ', D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEsc' +
      'ripcion Municipio, P.Descripcion Poblacion, E.Descripcion Estado' +
      ','#13#10'Pa.descripcion Pais,PD.Saldo,PD.IdEnvioTipo'#13#10#13#10'from PersonasD' +
      'omicilios PD'#13#10'inner join Domicilios D on PD.IDDomicilio=D.IDDomi' +
      'cilio'#13#10'Left Join Poblaciones P on P.idPoblacion=d.IdPoblacion'#13#10'l' +
      'eft join Municipios M on M.idmunicipio=D.IdMunicipio'#13#10'Left Join ' +
      'Estados E on E.idestado=D.idestado'#13#10'Left Join Paises Pa on Pa.id' +
      'pais=D.Idpais'#13#10#13#10
    DataSource = dsmaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IDPersona'
    Parameters = <>
    Left = 188
    Top = 75
    object ADODtStDireccionesClienteIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStDireccionesClienteIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDireccionesClienteIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStDireccionesClienteIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStDireccionesClienteIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object ADODtStDireccionesClientePredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStDireccionesClienteCalle: TStringField
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStDireccionesClienteNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStDireccionesClienteNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStDireccionesClienteColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStDireccionesClienteCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStDireccionesClienteMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStDireccionesClientePoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStDireccionesClienteEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStDireccionesClientePais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStDireccionesClienteDirCompleta: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 300
      Calculated = True
    end
    object ADODtStDireccionesClienteSaldo: TFMTBCDField
      FieldName = 'Saldo'
      Precision = 18
      Size = 6
    end
    object ADODtStDireccionesClienteIdEnvioTipo: TIntegerField
      FieldName = 'IdEnvioTipo'
    end
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
    Top = 353
  end
  object DSInsertaKardex: TDataSource
    AutoEdit = False
    Left = 324
    Top = 296
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
    object ADODtStProductosKardexContenedor: TStringField
      FieldName = 'Contenedor'
      Size = 30
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
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 436
    Top = 160
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
    Left = 56
    Top = 384
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
      LookupDataSet = adodsPersonas
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
    Left = 56
    Top = 464
  end
end
