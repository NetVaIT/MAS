inherited DMOrdenesSalidas: TDMOrdenesSalidas
  OldCreateOrder = True
  Height = 614
  Width = 733
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    AfterOpen = adodsMasterAfterOpen
    CommandText = 
      'select idOrdenSalida, IdDocumentoSalida, IdOrdenEstatus, '#13#10'IdPer' +
      'sonaRecolecta, IdPersonaRevisa, IdPersonaEmpaca, '#13#10'FechaRegistro' +
      ', Total, FechaIniRecolecta, FechaFinRecolecta, '#13#10'FechaIniRevisa,' +
      ' FechaFinRevisa, FechaIniEmpaca, FechaFinEmpaca,'#13#10' IdPersonaAuto' +
      'riza, FechaAutoriza,'#13#10' Subtotal, IVA'#13#10'from OrdenesSalidas '#13#10'Orde' +
      'r by IdOrdenEstatus,FechaRegistro Desc'
    Left = 56
    object adodsMasteridOrdenSalida: TAutoIncField
      FieldName = 'idOrdenSalida'
      ReadOnly = True
    end
    object adodsMasterIdDocumentoSalida: TIntegerField
      FieldName = 'IdDocumentoSalida'
    end
    object adodsMasterIdOrdenEstatus: TIntegerField
      FieldName = 'IdOrdenEstatus'
    end
    object adodsMasterIdPersonaRecolecta: TIntegerField
      FieldName = 'IdPersonaRecolecta'
    end
    object adodsMasterIdPersonaRevisa: TIntegerField
      FieldName = 'IdPersonaRevisa'
    end
    object adodsMasterIdPersonaEmpaca: TIntegerField
      FieldName = 'IdPersonaEmpaca'
    end
    object adodsMasterFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterFechaIniRecolecta: TDateTimeField
      FieldName = 'FechaIniRecolecta'
    end
    object adodsMasterFechaFinRecolecta: TDateTimeField
      FieldName = 'FechaFinRecolecta'
    end
    object adodsMasterFechaIniRevisa: TDateTimeField
      FieldName = 'FechaIniRevisa'
    end
    object adodsMasterFechaFinRevisa: TDateTimeField
      FieldName = 'FechaFinRevisa'
    end
    object adodsMasterFechaIniEmpaca: TDateTimeField
      FieldName = 'FechaIniEmpaca'
    end
    object adodsMasterFechaFinEmpaca: TDateTimeField
      FieldName = 'FechaFinEmpaca'
    end
    object adodsMasterIdPersonaAutoriza: TIntegerField
      FieldName = 'IdPersonaAutoriza'
    end
    object adodsMasterFechaAutoriza: TDateTimeField
      FieldName = 'FechaAutoriza'
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = ADODtStOrdenSalEstatus
      LookupKeyFields = 'IdOrdenEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdOrdenEstatus'
      Lookup = True
    end
    object adodsMasterPersonaRecolecta: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaRecolecta'
      LookupDataSet = ADODtStPersonaRecolecta
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaRecolecta'
      Size = 150
      Lookup = True
    end
    object adodsMasterPersonaRevisa: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaRevisa'
      LookupDataSet = ADODtStPersonaRevisa
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaRevisa'
      Size = 150
      Lookup = True
    end
    object adodsMasterPersonaEmpaca: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaEmpaca'
      LookupDataSet = ADODtStPersonaEmpaca
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaEmpaca'
      Size = 150
      Lookup = True
    end
    object adodsMasterSubtotal: TFMTBCDField
      FieldName = 'Subtotal'
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
    object adodsMasterClaveURecolecta: TStringField
      FieldKind = fkLookup
      FieldName = 'ClaveURecolecta'
      LookupDataSet = ADODtStPersonaRecolecta
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Password'
      KeyFields = 'IdPersonaRecolecta'
      Lookup = True
    end
    object adodsMasterClaveURevisa: TStringField
      FieldKind = fkLookup
      FieldName = 'ClaveURevisa'
      LookupDataSet = ADODtStPersonaRevisa
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Password'
      KeyFields = 'IdPersonaRevisa'
      Lookup = True
    end
    object adodsMasterClaveUEmpaca: TStringField
      FieldKind = fkLookup
      FieldName = 'ClaveUEmpaca'
      LookupDataSet = ADODtStPersonaEmpaca
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Password'
      KeyFields = 'IdPersonaEmpaca'
      Lookup = True
    end
    object adodsMasterNombreCliente: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'NombreCliente'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdDocumentoSalida'
      Size = 200
      Lookup = True
    end
    object adodsMasterPersonaAutoriza: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaAutoriza'
      LookupDataSet = ADODtStPersonaAutoriza
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaAutoriza'
      Size = 150
      Lookup = True
    end
    object adodsMasterClaveUAutoriza: TStringField
      FieldKind = fkLookup
      FieldName = 'ClaveUAutoriza'
      LookupDataSet = ADODtStPersonaAutoriza
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Password'
      KeyFields = 'IdPersonaAutoriza'
      Lookup = True
    end
    object adodsMasterIdentificadorCte: TStringField
      FieldKind = fkLookup
      FieldName = 'IdentificadorCte'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'IdentificadorCte'
      KeyFields = 'IdDocumentoSalida'
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdDocumento, IdDocumentoTipo, IdDocumentoClase,'#13#10' Descrip' +
      'cion, NombreArchivo, IdArchivo, Archivo FROM Documentos'#13#10'WHERE I' +
      'dDocumento =:IdDocumento'
    Parameters = <
      item
        Name = 'IdDocumento'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 416
    object adodsUpdateIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object adodsUpdateIdDocumentoTipo: TIntegerField
      FieldName = 'IdDocumentoTipo'
    end
    object adodsUpdateIdDocumentoClase: TIntegerField
      FieldName = 'IdDocumentoClase'
    end
    object adodsUpdateDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object adodsUpdateNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
    object adodsUpdateIdArchivo: TGuidField
      FieldName = 'IdArchivo'
      FixedChar = True
      Size = 38
    end
    object adodsUpdateArchivo: TBlobField
      FieldName = 'Archivo'
    end
  end
  inherited ActionList: TActionList
    Left = 408
    object ActCargarGuia: TAction
      Caption = 'CargarGuia'
      OnExecute = ActCargarGuiaExecute
    end
    object ActEnvioCorreoConArchivos: TAction
      Caption = 'Enviar Gu'#237'a X Correo '
      Hint = 'Enviar Correo'
      OnExecute = ActEnvioCorreoConArchivosExecute
    end
  end
  object ADODtStOrdenSalidaItem: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforePost = ADODtStOrdenSalidaItemBeforePost
    AfterPost = ADODtStOrdenSalidaItemAfterPost
    CommandText = 
      'select IdOrdenSalidaItem, IdOrdenSalida, IdDocumentoSalidaDetall' +
      'e,'#13#10' IdProducto, CantidadDespachada, Precio, Importe, CantidadSo' +
      'licitada, Observaciones'#13#10', ClaveProducto from OrdenesSalidasItem' +
      's where idOrdenSalida=:IdOrdenSalida '#13#10
    DataSource = DSMaster
    IndexFieldNames = 'IdOrdenSalida'
    MasterFields = 'IdOrdenSalida'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 10
      end>
    Left = 56
    Top = 96
    object ADODtStOrdenSalidaItemIdOrdenSalidaItem: TAutoIncField
      FieldName = 'IdOrdenSalidaItem'
      ReadOnly = True
    end
    object ADODtStOrdenSalidaItemIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object ADODtStOrdenSalidaItemIdDocumentoSalidaDetalle: TIntegerField
      FieldName = 'IdDocumentoSalidaDetalle'
    end
    object ADODtStOrdenSalidaItemIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStOrdenSalidaItemCantidadDespachada: TFloatField
      FieldName = 'CantidadDespachada'
      OnChange = ADODtStOrdenSalidaItemCantidadDespachadaChange
    end
    object ADODtStOrdenSalidaItemCantidadSolicitada: TFloatField
      FieldName = 'CantidadSolicitada'
      ReadOnly = True
    end
    object ADODtStOrdenSalidaItemPrecio: TFMTBCDField
      FieldName = 'Precio'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStOrdenSalidaItemImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object ADODtStOrdenSalidaItemObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object ADODtStOrdenSalidaItemProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 150
      Lookup = True
    end
    object ADODtStOrdenSalidaItemClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object ADODtStOrdenSalidaItemIDAlmacen: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IDAlmacen'
      LookupDataSet = ADODtStDocumentoDetalleItem
      LookupKeyFields = 'IdDocumentoSalidaDetalle'
      LookupResultField = 'IdAlmacen'
      KeyFields = 'IdDocumentoSalidaDetalle'
      Lookup = True
    end
  end
  object ADODtStOrdenSalEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdOrdenEstatus, Identificador, Descripcion from OrdenesEs' +
      'tatus'
    Parameters = <>
    Left = 240
    Top = 16
    object ADODtStOrdenSalEstatusIdOrdenEstatus: TIntegerField
      FieldName = 'IdOrdenEstatus'
    end
    object ADODtStOrdenSalEstatusIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtStOrdenSalEstatusDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object ADODtStPersonaRecolecta: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial ,'#13#10' U.P' +
      'assword,U.Permiso  from Personas P '#13#10'inner join Usuarios U on P.' +
      'IdPersona =U.idPersona'#13#10'where P.idRol=3 and U.IDUsuarioEstatus=1'
    Parameters = <>
    Left = 240
    Top = 96
    object ADODtStPersonaRecolectaIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object ADODtStPersonaRecolectaIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object ADODtStPersonaRecolectaIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object ADODtStPersonaRecolectaRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaRecolectaPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
    object ADODtStPersonaRecolectaPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
  end
  object ADODtStPersonaRevisa: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial , U.Pas' +
      'sword,U.Permiso'#13#10'from Personas P inner join Usuarios U on P.IdPe' +
      'rsona =U.idPersona'#13#10'where P.idRol=3 and U.IDUsuarioEstatus=1'
    Parameters = <>
    Left = 240
    Top = 168
    object ADODtStPersonaRevisaIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object ADODtStPersonaRevisaIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object ADODtStPersonaRevisaIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object ADODtStPersonaRevisaRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaRevisaPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
    object ADODtStPersonaRevisaPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
  end
  object ADODtStPersonaEmpaca: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial , U.Pas' +
      'sword,U.Permiso'#13#10'from Personas P inner join Usuarios U on P.IdPe' +
      'rsona =U.idPersona'#13#10'where P.idRol=3 and U.IDUsuarioEstatus=1'
    Parameters = <>
    Left = 240
    Top = 240
    object ADODtStPersonaEmpacaIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object ADODtStPersonaEmpacaIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object ADODtStPersonaEmpacaIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object ADODtStPersonaEmpacaRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaEmpacaPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
    object ADODtStPersonaEmpacaPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdProducto,P.Descripcion,P.PrecioUnitario, I.Existencia' +
      #13#10' FROM Productos P'#13#10' inner join Inventario  I On P.IDProducto=I' +
      '.IdProducto'
    Parameters = <>
    Left = 64
    Top = 168
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 132
    Top = 40
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 60
    Top = 241
  end
  object ADODtStDatosDocumentoSalida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select DS.IdPersona, ds.IDDocumentoSalida, P.RazonSocial'#13#10' from ' +
      'DocumentosSalidas DS'#13#10' inner join Personas P on P.IDpersona =DS.' +
      'IdPersona'
    Parameters = <>
    Left = 248
    Top = 408
    object ADODtStDatosDocumentoSalidaIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDatosDocumentoSalidaIDDocumentoSalida: TAutoIncField
      FieldName = 'IDDocumentoSalida'
      ReadOnly = True
    end
    object ADODtStDatosDocumentoSalidaRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStDatosDocumentoSalidaIdentificadorCte: TStringField
      FieldKind = fkLookup
      FieldName = 'IdentificadorCte'
      LookupDataSet = ADODtStIdentificadores
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Identificador'
      KeyFields = 'IdPersona'
      Lookup = True
    end
  end
  object DSDatosDocSalida: TDataSource
    DataSet = ADODtStDatosDocumentoSalida
    Left = 412
    Top = 304
  end
  object ADODtStDireccionesCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13#10',D.Calle' +
      ', D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEsc' +
      'ripcion Municipio, P.Descripcion Poblacion, E.Descripcion Estado' +
      ','#13#10'Pa.descripcion Pais'#13#10#13#10'from PersonasDomicilios PD'#13#10'inner join' +
      ' Domicilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaci' +
      'ones P on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on' +
      ' M.idmunicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=' +
      'D.idestado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10'where PD.' +
      'IDPersona=:IDPersona'#13#10#13#10#13#10#13#10
    Parameters = <
      item
        Name = 'IDPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 408
    Top = 240
  end
  object ADODtStPersonaAutoriza: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial , U.Pas' +
      'sword,U.Permiso'#13#10'from Personas P inner join Usuarios U on P.IdPe' +
      'rsona =U.idPersona'#13#10'where P.idRol=3 and U.IDUsuarioEstatus=1'#13#10'--' +
      ' and U.Permiso like '#39'%Aut%'#39
    Parameters = <>
    Left = 240
    Top = 304
    object ADODtStPersonaAutorizaIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object ADODtStPersonaAutorizaIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object ADODtStPersonaAutorizaIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object ADODtStPersonaAutorizaRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStPersonaAutorizaPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
    object ADODtStPersonaAutorizaPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
  end
  object ADODtStProductosKardex: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from ProductosKardex '
    Parameters = <>
    Left = 632
    Top = 129
    object ADODtStProductosKardexIdProductosKardex: TAutoIncField
      FieldName = 'IdProductosKardex'
      ReadOnly = True
    end
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
    object ADODtStProductosKardexIdSeccion: TIntegerField
      FieldName = 'IdSeccion'
    end
    object ADODtStProductosKardexReferenciaEspacio: TIntegerField
      FieldName = 'ReferenciaEspacio'
    end
    object ADODtStProductosKardexContenedor: TStringField
      FieldName = 'Contenedor'
      Size = 30
    end
    object ADODtStProductosKardexFecha: TWideStringField
      FieldName = 'Fecha'
      Size = 10
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
  end
  object ADODtStInformacionEnvio: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeOpen = ADODtStInformacionEnvioBeforeOpen
    CommandText = 'select * from InformacionEntregas where IdCFDI=:IDCFDI'
    DataSource = dsFacturaCFDI
    IndexFieldNames = 'IdCFDI'
    MasterFields = 'IDCFDI'
    Parameters = <
      item
        Name = 'IDCFDI'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 440
    Top = 489
    object ADODtStInformacionEnvioIdInfoEntrega: TAutoIncField
      FieldName = 'IdInfoEntrega'
      ReadOnly = True
    end
    object ADODtStInformacionEnvioIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStInformacionEnvioIDPersonaCliente: TIntegerField
      FieldName = 'IDPersonaCliente'
    end
    object ADODtStInformacionEnvioIDPersonaDomicilio: TIntegerField
      FieldName = 'IDPersonaDomicilio'
    end
    object ADODtStInformacionEnvioIDResponsableEntrega: TIntegerField
      FieldName = 'IDResponsableEntrega'
    end
    object ADODtStInformacionEnvioFechaProgramadaEnt: TWideStringField
      FieldName = 'FechaProgramadaEnt'
      Size = 10
    end
    object ADODtStInformacionEnvioFechaRealEnt: TWideStringField
      FieldName = 'FechaRealEnt'
      Size = 10
    end
    object ADODtStInformacionEnvioCondicionEntrega: TStringField
      FieldName = 'CondicionEntrega'
      Size = 300
    end
    object ADODtStInformacionEnvioObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 100
    end
    object ADODtStInformacionEnvioEstatusEntrega: TStringField
      FieldName = 'EstatusEntrega'
    end
    object ADODtStInformacionEnvioIdTelefono: TIntegerField
      FieldName = 'IdTelefono'
    end
    object ADODtStInformacionEnvioContenido: TStringField
      FieldName = 'Contenido'
      Size = 500
    end
    object ADODtStInformacionEnvioConducto: TStringField
      FieldName = 'Conducto'
      Size = 100
    end
    object ADODtStInformacionEnvioServicio: TStringField
      FieldName = 'Servicio'
      Size = 50
    end
    object ADODtStInformacionEnvioPagoFlete: TBooleanField
      FieldName = 'PagoFlete'
    end
    object ADODtStInformacionEnvioValor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object ADODtStInformacionEnvioAsegurado: TBooleanField
      FieldName = 'Asegurado'
    end
    object ADODtStInformacionEnvioTelefonoCompleto: TStringField
      FieldKind = fkLookup
      FieldName = 'TelefonoCompleto'
      LookupDataSet = ADODtStTelefonos
      LookupKeyFields = 'IdTelefono'
      LookupResultField = 'TeleconLada'
      KeyFields = 'IdTelefono'
      Size = 40
      Lookup = True
    end
    object ADODtStInformacionEnvioOcurre: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'OcurreChk'
      Calculated = True
    end
    object ADODtStInformacionEnvioDomicilioChk: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'DomicilioChk'
      Calculated = True
    end
    object ADODtStInformacionEnvioCantidadCajas: TIntegerField
      FieldName = 'CantidadCajas'
    end
    object ADODtStInformacionEnvioIdDocumentoGuia: TIntegerField
      FieldName = 'IdDocumentoGuia'
    end
    object ADODtStInformacionEnvioDocGuia: TStringField
      FieldKind = fkLookup
      FieldName = 'DocGuia'
      LookupDataSet = adodsDocumento
      LookupKeyFields = 'IdDocumento'
      LookupResultField = 'NombreArchivo'
      KeyFields = 'IdDocumentoGuia'
      Size = 100
      Lookup = True
    end
  end
  object ADODtStFacturasCFDI: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select PD.IDDomicilio, IdCFDI, IDOrdenSalida, IdPersonaReceptor,' +
      #13#10' IdClienteDomicilio, IdDocumentoXML, IdDocumentoPDF  from CFDI' +
      #13#10'inner join PersonasDomicilios PD on PD.idPersonaDomicilio=IdCl' +
      'ienteDomicilio '#13#10' where IdOrdenSalida=:IdOrdenSalida'#13#10
    DataSource = DSMaster
    IndexFieldNames = 'IDOrdenSalida'
    MasterFields = 'IdOrdenSalida'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 10
      end>
    Left = 432
    Top = 417
    object ADODtStFacturasCFDIIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object ADODtStFacturasCFDIIDOrdenSalida: TIntegerField
      FieldName = 'IDOrdenSalida'
    end
    object ADODtStFacturasCFDIIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object ADODtStFacturasCFDIIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object ADODtStFacturasCFDIIDDomicilio: TIntegerField
      FieldName = 'IDDomicilio'
    end
    object ADODtStFacturasCFDIIdDocumentoXML: TIntegerField
      FieldName = 'IdDocumentoXML'
    end
    object ADODtStFacturasCFDIIdDocumentoPDF: TIntegerField
      FieldName = 'IdDocumentoPDF'
    end
  end
  object dsFacturaCFDI: TDataSource
    DataSet = ADODtStFacturasCFDI
    Left = 532
    Top = 408
  end
  object ADODtStTelefonos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStTelefonosCalcFields
    CommandText = 'Select * from Telefonos'
    DataSource = dsFacturaCFDI
    IndexFieldNames = 'IdPersona;IdDomicilio'
    MasterFields = 'IdPersonaReceptor;IDDomicilio'
    Parameters = <>
    Left = 592
    Top = 489
    object ADODtStTelefonosTelefono: TStringField
      FieldName = 'Telefono'
    end
    object ADODtStTelefonosIdTelefono: TAutoIncField
      FieldName = 'IdTelefono'
      ReadOnly = True
    end
    object ADODtStTelefonosIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStTelefonosIdTelefonoTipo: TIntegerField
      FieldName = 'IdTelefonoTipo'
    end
    object ADODtStTelefonosIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStTelefonosLada: TStringField
      FieldName = 'Lada'
      Size = 10
    end
    object ADODtStTelefonosPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStTelefonosTeleconLada: TStringField
      FieldKind = fkCalculated
      FieldName = 'TeleconLada'
      Size = 40
      Calculated = True
    end
  end
  object ADODtStSalidasUbicaciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforePost = ADODtStSalidasUbicacionesBeforePost
    AfterPost = ADODtStSalidasUbicacionesAfterPost
    AfterDelete = ADODtStSalidasUbicacionesAfterDelete
    CommandText = 
      'select IdSalidaUbicacion, IdProductoKardexS, IdProductoXEspacio,' +
      #13#10' Cantidad, IdSalidaUbicacionEstatus,  IdOrdenSalidaItem, IdOrd' +
      'enSalida '#13#10'from SalidasUbicaciones where IdOrdenSalida =:IdOrden' +
      'Salida'
    DataSource = DSMaster
    IndexFieldNames = 'IdOrdenSalida'
    MasterFields = 'IdOrdenSalida'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 248
    Top = 481
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
    object ADODtStSalidasUbicacionesIdProducto: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdProducto'
      LookupDataSet = ADODtStOrdenSalidaItem
      LookupKeyFields = 'IdOrdenSalidaItem'
      LookupResultField = 'IdProducto'
      KeyFields = 'IdOrdenSalidaItem'
      OnChange = ADODtStOrdenSalidaItemCantidadDespachadaChange
      Lookup = True
    end
    object ADODtStSalidasUbicacionesproducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = ADODtStOrdenSalidaItem
      LookupKeyFields = 'IdOrdenSalidaItem'
      LookupResultField = 'Producto'
      KeyFields = 'IdOrdenSalidaItem'
      Size = 150
      Lookup = True
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
  end
  object DSOrdenSalidaItem: TDataSource
    DataSet = ADODtStOrdenSalidaItem
    Left = 140
    Top = 112
  end
  object ADODtStProductosXEspacio: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Pe.*, E.Descripcion as Espacio from ProductosXEspacio PE'#13 +
      #10'inner join Espacios E on E.IdEspacio=PE.IdEspacio'
    Parameters = <>
    Left = 248
    Top = 545
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
  object DSInsertaKardex: TDataSource
    DataSet = ADODtStDatosDocumentoSalida
    Left = 620
    Top = 240
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
        'lmacen)'
      ''
      
        'SELECT   osi.IdProducto, osi.IdOrdenSalidaItem,DS.IdMoneda, 1, G' +
        'ETDATE() , '#39'S'#39','
      'OSI.CantidadDespachada, osi.Importe, :IdAlmacen'
      ''
      'FROM         OrdenesSalidasItems OSI '
      
        'inner join DocumentosSalidasDEtalles DSD on DSD.idDocumentoSalid' +
        'aDEtalle=OSI.IdDocumentoSalidaDetalle'
      
        'inner join DocumentosSalidas DS on DS.idDocumentoSalida=DSD.IdDo' +
        'cumentoSalida'
      ''
      ''
      'Where OSI.IdOrdenSalidaItem =:IdOrdenSalidaItem2')
    Left = 620
    Top = 297
  end
  object ADODtStIdentificadores: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13#10',D.Calle' +
      ', D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEsc' +
      'ripcion Municipio, P.Descripcion Poblacion, E.Descripcion Estado' +
      ','#13#10'Pa.descripcion Pais'#13#10#13#10'from PersonasDomicilios PD'#13#10'inner join' +
      ' Domicilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaci' +
      'ones P on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on' +
      ' M.idmunicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=' +
      'D.idestado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10#13#10#13#10#13#10
    Parameters = <>
    Left = 616
    Top = 352
  end
  object DSSalidaUbicacion: TDataSource
    DataSet = ADODtStSalidasUbicaciones
    Left = 108
    Top = 480
  end
  object ADODtStDocumentoDetalleItem: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforePost = ADODtStOrdenSalidaItemBeforePost
    AfterPost = ADODtStOrdenSalidaItemAfterPost
    CommandText = 
      'select IdDocumentoSalidaDetalle,IdAlmacen, IDProducto  from Docu' +
      'mentosSalidasDetalles '#13#10
    Parameters = <>
    Left = 80
    Top = 312
    object ADODtStDocumentoDetalleItemIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object ADODtStDocumentoDetalleItemIDProducto: TIntegerField
      FieldName = 'IDProducto'
    end
    object ADODtStDocumentoDetalleItemIdDocumentoSalidaDetalle: TAutoIncField
      FieldName = 'IdDocumentoSalidaDetalle'
      ReadOnly = True
    end
  end
  object adodsDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDocumento, NombreArchivo FROM Documentos'
    Parameters = <>
    Left = 440
    Top = 552
    object adodsDocumentoIdDocumento: TAutoIncField
      FieldName = 'IdDocumento'
      ReadOnly = True
    end
    object adodsDocumentoNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 200
    end
  end
end
