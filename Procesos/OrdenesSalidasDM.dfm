inherited DMOrdenesSalidas: TDMOrdenesSalidas
  OldCreateOrder = True
  Height = 614
  Width = 733
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select idOrdenSalida, IdDocumentoSalida, IdOrdenEstatus, '#13#10'IdPer' +
      'sonaRecolecta, IdPersonaRevisa, IdPersonaEmpaca, '#13#10'FechaRegistro' +
      ', Total, FechaIniRecolecta, FechaFinRecolecta, '#13#10'FechaIniRevisa,' +
      ' FechaFinRevisa, FechaIniEmpaca, FechaFinEmpaca,'#13#10' IdPersonaAuto' +
      'riza, FechaAutoriza,'#13#10' Subtotal, IVA'#13#10'from OrdenesSalidas '
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
      LookupResultField = 'ClaveUsuario'
      KeyFields = 'IdPersonaRecolecta'
      Lookup = True
    end
    object adodsMasterClaveURevisa: TStringField
      FieldKind = fkLookup
      FieldName = 'ClaveURevisa'
      LookupDataSet = ADODtStPersonaRevisa
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'ClaveUsuario'
      KeyFields = 'IdPersonaRevisa'
      Lookup = True
    end
    object adodsMasterClaveUEmpaca: TStringField
      FieldKind = fkLookup
      FieldName = 'ClaveUEmpaca'
      LookupDataSet = ADODtStPersonaEmpaca
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'ClaveUsuario'
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
      LookupResultField = 'ClaveUsuario'
      KeyFields = 'IdPersonaAutoriza'
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 416
  end
  inherited ActionList: TActionList
    Left = 408
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
        Size = 4
        Value = Null
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
  end
  object ADODtStOrdenSalEstatus: TADODataSet
    Active = True
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
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial , U.Cla' +
      'veUsuario,U.Permiso'#13#10'from Personas P inner join Usuarios U on P.' +
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
    object ADODtStPersonaRecolectaClaveUsuario: TStringField
      FieldName = 'ClaveUsuario'
      Size = 15
    end
    object ADODtStPersonaRecolectaPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
  end
  object ADODtStPersonaRevisa: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial , U.Cla' +
      'veUsuario,U.Permiso'#13#10'from Personas P inner join Usuarios U on P.' +
      'IdPersona =U.idPersona'#13#10'where P.idRol=3 and U.IDUsuarioEstatus=1'
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
    object ADODtStPersonaRevisaClaveUsuario: TStringField
      FieldName = 'ClaveUsuario'
      Size = 15
    end
    object ADODtStPersonaRevisaPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
  end
  object ADODtStPersonaEmpaca: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial , U.Cla' +
      'veUsuario,U.Permiso'#13#10'from Personas P inner join Usuarios U on P.' +
      'IdPersona =U.idPersona'#13#10'where P.idRol=3 and U.IDUsuarioEstatus=1'
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
    object ADODtStPersonaEmpacaClaveUsuario: TStringField
      FieldName = 'ClaveUsuario'
      Size = 15
    end
    object ADODtStPersonaEmpacaPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
  end
  object adodsProductos: TADODataSet
    Active = True
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
    Active = True
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
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial , U.Cla' +
      'veUsuario,U.Permiso'#13#10'from Personas P inner join Usuarios U on P.' +
      'IdPersona =U.idPersona'#13#10'where P.idRol=3 and U.IDUsuarioEstatus=1' +
      #13#10'-- and U.Permiso like '#39'%Aut%'#39
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
    object ADODtStPersonaAutorizaClaveUsuario: TStringField
      FieldName = 'ClaveUsuario'
      Size = 15
    end
    object ADODtStPersonaAutorizaPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
  end
  object ADODtStProductosKardex: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from ProductosKardex'
    Parameters = <>
    Left = 72
    Top = 521
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
end
