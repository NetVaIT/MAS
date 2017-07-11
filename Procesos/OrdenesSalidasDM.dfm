inherited DMOrdenesSalidas: TDMOrdenesSalidas
  OldCreateOrder = True
  Height = 707
  Width = 1023
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    Filter = 'IdOrdenEstatus <8'
    Filtered = True
    AfterOpen = adodsMasterAfterOpen
    BeforeDelete = adodsMasterBeforeDelete
    OnCalcFields = adodsMasterCalcFields
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select idOrdenSalida, IdDocumentoSalida, IdOrdenEstatus, IdPerso' +
      'na, IDOrdenSalidaTipo,'#13#10'IdPersonaRecolecta, IdPersonaRevisa, IdP' +
      'ersonaEmpaca,IDPersonaEntrega, '#13#10'OS.FechaRegistro, OS.Total, Fec' +
      'haIniRecolecta, FechaFinRecolecta, '#13#10'FechaIniRevisa, FechaFinRev' +
      'isa, FechaIniEmpaca, FechaFinEmpaca,'#13#10' IdPersonaAutoriza, FechaA' +
      'utoriza, IdGeneraCFDITipoDoc, Acumula,'#13#10'OS. Subtotal, OS.IVA,os.' +
      'IDPersonaDomicilio, OS.Observaciones, '#13#10'OS.IdAlmacen, os.IdUsuar' +
      'io, Os.EtiquetaImpresa, OS.OrdenEmbImpresa'#13#10'from OrdenesSalidas ' +
      'OS'#13#10'where IdOrdenSalidaTipo=1 -- Jul 1/16'#13#10#13#10'Order by IdOrdenEst' +
      'atus,OS.FechaRegistro Desc'
    Left = 56
    Top = 24
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
    object adodsMasterFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object adodsMasterIdPersonaEmpaca: TIntegerField
      FieldName = 'IdPersonaEmpaca'
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
    object adodsMasterIdGeneraCFDITipoDoc: TIntegerField
      FieldName = 'IdGeneraCFDITipoDoc'
    end
    object adodsMasterAcumula: TBooleanField
      FieldName = 'Acumula'
    end
    object adodsMasterIDPersonaDomicilio: TIntegerField
      FieldName = 'IDPersonaDomicilio'
    end
    object adodsMasterIdPaqueteria: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdPaqueteria'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'IdPaqueteria'
      KeyFields = 'IdDocumentoSalida'
      Lookup = True
    end
    object adodsMasterServicio: TStringField
      FieldKind = fkLookup
      FieldName = 'Servicio'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'Servicio'
      KeyFields = 'IdDocumentoSalida'
      Size = 50
      Lookup = True
    end
    object adodsMasterIDPersonaEntrega: TIntegerField
      FieldName = 'IDPersonaEntrega'
    end
    object adodsMasterPersonaEntrega: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaEntrega'
      LookupDataSet = AdoDtstPersonaEntrega
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IDPersonaEntrega'
      Size = 150
      Lookup = True
    end
    object adodsMasterDirEnvio: TStringField
      FieldKind = fkLookup
      FieldName = 'DirEnvio'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'DireccionEnvio'
      KeyFields = 'IdDocumentoSalida'
      Size = 200
      Lookup = True
    end
    object adodsMasterIdDireccionEnvio: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdDireccionEnvio'
      LookupDataSet = ADODtStDireccionesEnvio
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'IdPersonaDomicilio'
      KeyFields = 'IDPersonaDomicilio'
      Lookup = True
    end
    object adodsMasterIDOrdenSalidaTipo: TIntegerField
      FieldName = 'IDOrdenSalidaTipo'
    end
    object adodsMasterTipoSalida: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoSalida'
      LookupDataSet = ADODtStOrdenSalidaTipo
      LookupKeyFields = 'IdOrdenSalidaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IDOrdenSalidaTipo'
      Size = 30
      Lookup = True
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterIdAlmacen: TIntegerField
      FieldName = 'IdAlmacen'
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasternombreC: TStringField
      FieldKind = fkLookup
      FieldName = 'nombreC'
      LookupDataSet = adodsClientes
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 150
      Lookup = True
    end
    object adodsMasterIdentificadorNvo: TStringField
      FieldKind = fkLookup
      FieldName = 'IdentificadorNvo'
      LookupDataSet = ADODtStIdentificadores
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'Identificador'
      KeyFields = 'IDPersonaDomicilio'
      Size = 10
      Lookup = True
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object adodsMasterUsuarioCotiza: TStringField
      FieldKind = fkLookup
      FieldName = 'UsuarioCotiza'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'UsuarioCotiza'
      KeyFields = 'IdDocumentoSalida'
      Size = 100
      Lookup = True
    end
    object adodsMasterUsuarioPedido: TStringField
      FieldKind = fkLookup
      FieldName = 'UsuarioPedido'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'UsuarioAutPedido'
      KeyFields = 'IdDocumentoSalida'
      Size = 100
      Lookup = True
    end
    object adodsMasterEtiquetaImpresa: TBooleanField
      FieldName = 'EtiquetaImpresa'
    end
    object adodsMasterOrdenEmbImpresa: TBooleanField
      FieldName = 'OrdenEmbImpresa'
    end
    object adodsMasterPagoFlete: TBooleanField
      FieldKind = fkLookup
      FieldName = 'PagoFlete'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'PagoFlete'
      KeyFields = 'IdDocumentoSalida'
      Lookup = True
    end
    object adodsMasterAsegurado: TBooleanField
      FieldKind = fkLookup
      FieldName = 'Asegurado'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'Asegurado'
      KeyFields = 'IdDocumentoSalida'
      Lookup = True
    end
    object adodsMasterAnotacionEnvio: TStringField
      FieldKind = fkLookup
      FieldName = 'AnotacionEnvio'
      LookupDataSet = ADODtStDatosDocumentoSalida
      LookupKeyFields = 'IDDocumentoSalida'
      LookupResultField = 'AnotacionEnvio'
      KeyFields = 'IdDocumentoSalida'
      Size = 100
      Lookup = True
    end
    object adodsMasterDatosCFDI: TStringField
      FieldKind = fkCalculated
      FieldName = 'DatosCFDI'
      Size = 150
      Calculated = True
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
    Left = 440
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
    object ActActualizaApartado: TAction
      Caption = 'ActActualizaApartado'
      OnExecute = ActActualizaApartadoExecute
    end
    object ActRevierteApartado: TAction
      Caption = 'ActRevierteApartado'
      OnExecute = ActRevierteApartadoExecute
    end
    object ActCreaInformacionEnvio: TAction
      Caption = 'ActCreaInformacionEnvio'
      OnExecute = ActCreaInformacionEnvioExecute
    end
    object ActCompartirEnvio: TAction
      Caption = 'CompartirEnvio'
      OnExecute = ActCompartirEnvioExecute
    end
    object actVerificaYcreaResto: TAction
      Caption = 'actVerificaYcreaResto'
      OnExecute = actVerificaYcreaRestoExecute
    end
  end
  object ADODtStOrdenSalidaItem: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforePost = ADODtStOrdenSalidaItemBeforePost
    AfterPost = ADODtStOrdenSalidaItemAfterPost
    BeforeDelete = ADODtStOrdenSalidaItemBeforeDelete
    AfterDelete = ADODtStOrdenSalidaItemAfterDelete
    CommandText = 
      'select IdOrdenSalidaItem, IdOrdenSalida, IdDocumentoSalidaDetall' +
      'e,'#13#10' IdProducto, CantidadDespachada, Precio, Importe, CantidadSo' +
      'licitada, Observaciones'#13#10', ClaveProducto, CostoUnitario from Ord' +
      'enesSalidasItems where idOrdenSalida=:IdOrdenSalida '#13#10
    DataSource = dsMaster
    IndexFieldNames = 'IdOrdenSalida'
    MasterFields = 'IdOrdenSalida'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 8122
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
    object ADODtStOrdenSalidaItemCostoUnitario: TFMTBCDField
      FieldName = 'CostoUnitario'
      Precision = 18
      Size = 6
    end
  end
  object ADODtStOrdenSalEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdOrdenEstatus, Identificador, Descripcion from OrdenesEs' +
      'tatus'
    Parameters = <>
    Left = 256
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
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 140
    Top = 24
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 76
    Top = 241
  end
  object ADODtStDatosDocumentoSalida: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select DS.IdPersona, ds.IDDocumentoSalida, P.RazonSocial, '#13#10'DS.I' +
      'dPaqueteria, DS.Servicio, DS.PagoFlete,DS.Asegurado,DS.Anotacion' +
      'Envio,'#13#10'DS.IdDomicilioCliente, PD.IDDomicilio,'#13#10'DS.IdPersonaDomi' +
      'cilioEnvio, Facturar, IdUsuario, IDUsuarioAutPedido'#13#10' from Docum' +
      'entosSalidas DS'#13#10' inner join Personas P on P.IDpersona =DS.IdPer' +
      'sona'#13#10'inner join PersonasDomicilios PD on PD.IdPersonaDomicilio ' +
      '=Ds.IDDomicilioCliente'
    DataSource = dsMaster
    IndexFieldNames = 'IDDocumentoSalida'
    MasterFields = 'IdDocumentoSalida'
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
    object ADODtStDatosDocumentoSalidaIdPaqueteria: TIntegerField
      FieldName = 'IdPaqueteria'
    end
    object ADODtStDatosDocumentoSalidaServicio: TStringField
      FieldName = 'Servicio'
      Size = 50
    end
    object ADODtStDatosDocumentoSalidaIdDomicilioCliente: TIntegerField
      FieldName = 'IdDomicilioCliente'
    end
    object ADODtStDatosDocumentoSalidaIDDomicilio: TIntegerField
      FieldName = 'IDDomicilio'
    end
    object ADODtStDatosDocumentoSalidaIdPersonaDomicilioEnvio: TIntegerField
      FieldName = 'IdPersonaDomicilioEnvio'
    end
    object ADODtStDatosDocumentoSalidaDireccionEnvio: TStringField
      FieldKind = fkLookup
      FieldName = 'DireccionEnvio'
      LookupDataSet = ADODtStDireccionesEnvio
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'DirEnviocompleta'
      KeyFields = 'IdPersonaDomicilioEnvio'
      Size = 200
      Lookup = True
    end
    object ADODtStDatosDocumentoSalidaFacturar: TBooleanField
      FieldName = 'Facturar'
    end
    object ADODtStDatosDocumentoSalidaIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
    end
    object ADODtStDatosDocumentoSalidaUsuarioCotiza: TStringField
      FieldKind = fkLookup
      FieldName = 'UsuarioCotiza'
      LookupDataSet = adodsUsuarioCotiza
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Login'
      KeyFields = 'IdUsuario'
      Size = 150
      Lookup = True
    end
    object ADODtStDatosDocumentoSalidaIDUsuarioAutPedido: TIntegerField
      FieldName = 'IDUsuarioAutPedido'
    end
    object ADODtStDatosDocumentoSalidaUsuarioAutPedido: TStringField
      FieldKind = fkLookup
      FieldName = 'UsuarioAutPedido'
      LookupDataSet = AdoUsuarioPedido
      LookupKeyFields = 'IdUsuario'
      LookupResultField = 'Login'
      KeyFields = 'IDUsuarioAutPedido'
      Size = 100
      Lookup = True
    end
    object ADODtStDatosDocumentoSalidaPagoFlete: TBooleanField
      FieldName = 'PagoFlete'
    end
    object ADODtStDatosDocumentoSalidaAsegurado: TBooleanField
      FieldName = 'Asegurado'
    end
    object ADODtStDatosDocumentoSalidaAnotacionEnvio: TStringField
      FieldName = 'AnotacionEnvio'
      Size = 100
    end
  end
  object DSDatosDocSalida: TDataSource
    DataSet = ADODtStDatosDocumentoSalida
    Left = 380
    Top = 408
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
  object ADODtStInformacionEnvio: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeOpen = ADODtStInformacionEnvioBeforeOpen
    CommandText = 'select * from InformacionEntregas'
    DataSource = DSInfoEnviodetalle
    IndexFieldNames = 'IdInfoEntrega'
    MasterFields = 'IdInfoEntrega'
    Parameters = <>
    Left = 440
    Top = 481
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
    object ADODtStInformacionEnvioFechaProgramadaEnt: TDateTimeField
      FieldName = 'FechaProgramadaEnt'
    end
    object ADODtStInformacionEnvioFechaRealEnt: TDateTimeField
      FieldName = 'FechaRealEnt'
    end
    object ADODtStInformacionEnvioPaqueteria: TStringField
      FieldKind = fkLookup
      FieldName = 'Paqueteria'
      LookupDataSet = ADODtStPaqueterias
      LookupKeyFields = 'Identificador'
      LookupResultField = 'Identificador'
      KeyFields = 'Conducto'
      Size = 50
      Lookup = True
    end
    object ADODtStInformacionEnvioIdPersonaEmpaca: TIntegerField
      FieldName = 'IdPersonaEmpaca'
    end
    object ADODtStInformacionEnvioFechaIniEmpaque: TDateTimeField
      FieldName = 'FechaIniEmpaque'
    end
    object ADODtStInformacionEnvioFechaFinEmpaque: TDateTimeField
      FieldName = 'FechaFinEmpaque'
    end
    object ADODtStInformacionEnvioIdEstatusOrdenEntrega: TIntegerField
      FieldName = 'IdEstatusOrdenEntrega'
    end
    object ADODtStInformacionEnvioEtiquetaImpresa: TBooleanField
      FieldName = 'EtiquetaImpresa'
    end
    object ADODtStInformacionEnvioOrdenEmbImpresa: TBooleanField
      FieldName = 'OrdenEmbImpresa'
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
    DataSource = dsMaster
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
    Left = 792
    Top = 209
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
    Left = 900
    Top = 208
  end
  object ADODtStTelefonos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStTelefonosCalcFields
    CommandText = 'Select * from Telefonos'
    DataSource = DSDatosDocSalida
    IndexFieldNames = 'IdPersona;IdDomicilio'
    MasterFields = 'IdPersona;IDDomicilio'
    Parameters = <>
    Left = 520
    Top = 409
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
      'enSalida, IdProducto '#13#10'from SalidasUbicaciones where IdOrdenSali' +
      'da =:IdOrdenSalida'
    DataSource = dsMaster
    IndexFieldNames = 'IdOrdenSalida'
    MasterFields = 'IdOrdenSalida'
    Parameters = <
      item
        Name = 'IdOrdenSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8122
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
      FieldName = 'IdProductoX'
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
    object ADODtStSalidasUbicacionesIdProducto2: TIntegerField
      FieldName = 'IdProducto'
    end
    object ADODtStSalidasUbicacionesProductoDirecto: TStringField
      FieldKind = fkLookup
      FieldName = 'ProductoDirecto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 150
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
      #10'inner join Espacios E on E.IdEspacio=PE.IdEspacio and Pe.IdEspa' +
      'cio<>:IDAduana'
    DataSource = DSSalidaUbicacion
    IndexFieldNames = 'IdProducto'
    Parameters = <
      item
        Name = 'IDAduana'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
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
    AutoEdit = False
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
    Left = 68
    Top = 472
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
    Left = 72
    Top = 320
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
  object ADODtStCambioEstadoInv: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStCambioEstadoInvAfterPost
    CommandText = 
      'select IdOrdenSCambioEstatus, IdOrdenSalida, IdPersonaAutCambio'#13 +
      #10', IdOrdenSalidaEstatusNvo, FechaCambio, Observaciones'#13#10' from  O' +
      'rdenesSCambiosEstatus'
    Parameters = <>
    Left = 776
    Top = 473
    object ADODtStCambioEstadoInvIdOrdenSCambioEstatus: TIntegerField
      FieldName = 'IdOrdenSCambioEstatus'
    end
    object ADODtStCambioEstadoInvIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object ADODtStCambioEstadoInvIdPersonaAutCambio: TIntegerField
      FieldName = 'IdPersonaAutCambio'
    end
    object ADODtStCambioEstadoInvIdOrdenSalidaEstatusNvo: TIntegerField
      FieldName = 'IdOrdenSalidaEstatusNvo'
    end
    object ADODtStCambioEstadoInvFechaCambio: TDateTimeField
      FieldName = 'FechaCambio'
    end
    object ADODtStCambioEstadoInvObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object ADODtStCambioEstadoInvPersonaCambio: TStringField
      FieldKind = fkLookup
      FieldName = 'PersonaCambio'
      LookupDataSet = ADODtStUsuarioRegresa
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaAutCambio'
      Size = 150
      Lookup = True
    end
    object ADODtStCambioEstadoInvClaveUsr: TStringField
      FieldKind = fkLookup
      FieldName = 'ClaveUsr'
      LookupDataSet = ADODtStUsuarioRegresa
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'Password'
      KeyFields = 'IdPersonaAutCambio'
      Lookup = True
    end
  end
  object ADODtStUsuarioRegresa: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial , U.Pas' +
      'sword,U.Permiso'#13#10'from Personas P inner join Usuarios U on P.IdPe' +
      'rsona =U.idPersona'#13#10'where P.idRol=3 and U.IDUsuarioEstatus=1'#13#10'--' +
      ' and U.Permiso like '#39'%Aut%'#39
    Parameters = <>
    Left = 776
    Top = 400
    object AutoIncField1: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'IdRol'
    end
    object IntegerField2: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object StringField1: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object StringField2: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
    object StringField3: TStringField
      FieldName = 'Password'
      Size = 15
    end
  end
  object AdoDtStInfoEntregaDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select * from InformacionEntregasDetalles'
    DataSource = dsMaster
    IndexFieldNames = 'IdOrdenSalida'
    MasterFields = 'idOrdenSalida'
    Parameters = <>
    Left = 584
    Top = 553
    object AdoDtStInfoEntregaDetalleIdInformacionentregaDetalle: TAutoIncField
      FieldName = 'IdInformacionentregaDetalle'
      ReadOnly = True
    end
    object AdoDtStInfoEntregaDetalleIdInfoEntrega: TIntegerField
      FieldName = 'IdInfoEntrega'
    end
    object AdoDtStInfoEntregaDetalleIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
  end
  object ADODtStPaqueterias: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPaqueteria, Identificador, Descripcion from Paqueterias' +
      ' order by identificador'
    Parameters = <>
    Left = 64
    Top = 400
    object ADODtStPaqueteriasIdPaqueteria: TAutoIncField
      FieldName = 'IdPaqueteria'
      ReadOnly = True
    end
    object ADODtStPaqueteriasIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object ADODtStPaqueteriasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
  object DSInfoEnviodetalle: TDataSource
    DataSet = AdoDtStInfoEntregaDetalle
    Left = 588
    Top = 488
  end
  object ADODtstInsertaInfoEntrega: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    BeforeOpen = ADODtStInformacionEnvioBeforeOpen
    CommandText = 'select * from InformacionEntregas'
    Parameters = <>
    Left = 792
    Top = 545
    object ADODtstInsertaInfoEntregaIdInfoEntrega: TAutoIncField
      FieldName = 'IdInfoEntrega'
      ReadOnly = True
    end
    object ADODtstInsertaInfoEntregaIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtstInsertaInfoEntregaIDPersonaCliente: TIntegerField
      FieldName = 'IDPersonaCliente'
    end
    object ADODtstInsertaInfoEntregaIDPersonaDomicilio: TIntegerField
      FieldName = 'IDPersonaDomicilio'
    end
    object ADODtstInsertaInfoEntregaIDResponsableEntrega: TIntegerField
      FieldName = 'IDResponsableEntrega'
    end
    object ADODtstInsertaInfoEntregaFechaProgramadaEnt: TDateTimeField
      FieldName = 'FechaProgramadaEnt'
    end
    object ADODtstInsertaInfoEntregaFechaRealEnt: TDateTimeField
      FieldName = 'FechaRealEnt'
    end
    object ADODtstInsertaInfoEntregaCondicionEntrega: TStringField
      FieldName = 'CondicionEntrega'
      Size = 300
    end
    object ADODtstInsertaInfoEntregaObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 100
    end
    object ADODtstInsertaInfoEntregaEstatusEntrega: TStringField
      FieldName = 'EstatusEntrega'
    end
    object ADODtstInsertaInfoEntregaIdTelefono: TIntegerField
      FieldName = 'IdTelefono'
    end
    object ADODtstInsertaInfoEntregaIdDocumentoGuia: TIntegerField
      FieldName = 'IdDocumentoGuia'
    end
    object ADODtstInsertaInfoEntregaContenido: TStringField
      FieldName = 'Contenido'
      Size = 500
    end
    object ADODtstInsertaInfoEntregaConducto: TStringField
      FieldName = 'Conducto'
      Size = 100
    end
    object ADODtstInsertaInfoEntregaServicio: TStringField
      FieldName = 'Servicio'
      Size = 50
    end
    object ADODtstInsertaInfoEntregaPagoFlete: TBooleanField
      FieldName = 'PagoFlete'
    end
    object ADODtstInsertaInfoEntregaValor: TFloatField
      FieldName = 'Valor'
    end
    object ADODtstInsertaInfoEntregaAsegurado: TBooleanField
      FieldName = 'Asegurado'
    end
    object ADODtstInsertaInfoEntregaCantidadCajas: TIntegerField
      FieldName = 'CantidadCajas'
    end
    object ADODtstInsertaInfoEntregaIdPersonaEmpaca: TIntegerField
      FieldName = 'IdPersonaEmpaca'
    end
    object ADODtstInsertaInfoEntregaFechaIniEmpaque: TDateTimeField
      FieldName = 'FechaIniEmpaque'
    end
    object ADODtstInsertaInfoEntregaFechaFinEmpaque: TDateTimeField
      FieldName = 'FechaFinEmpaque'
    end
    object ADODtstInsertaInfoEntregaIdEstatusOrdenEntrega: TIntegerField
      FieldName = 'IdEstatusOrdenEntrega'
    end
  end
  object ADODtStDireccionesEnvio: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStDireccionesEnvioCalcFields
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
      'IDPersona=:IDPersonaCliente and  PD.UsarParaEnvio=1'#13#10#13#10#13#10#13#10
    DataSource = DSInformacionEnvio
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IDPersonaCliente'
    Parameters = <
      item
        Name = 'IDPersonaCliente'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 72
    Top = 544
    object ADODtStDireccionesEnvioIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStDireccionesEnvioIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDireccionesEnvioIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStDireccionesEnvioIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStDireccionesEnvioIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object ADODtStDireccionesEnvioPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStDireccionesEnvioCalle: TStringField
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStDireccionesEnvioNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStDireccionesEnvioNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStDireccionesEnvioColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStDireccionesEnvioCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStDireccionesEnvioMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStDireccionesEnvioPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStDireccionesEnvioEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStDireccionesEnvioPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStDireccionesEnvioDirEnviocompleta: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirEnviocompleta'
      Size = 300
      Calculated = True
    end
  end
  object DSInformacionEnvio: TDataSource
    DataSet = ADODtStInformacionEnvio
    Left = 524
    Top = 472
  end
  object AdoDtstPersonaEntrega: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select P.IdPersona, IdRol, IdPersonaEstatus, RazonSocial , U.Pas' +
      'sword,U.Permiso'#13#10'from Personas P inner join Usuarios U on P.IdPe' +
      'rsona =U.idPersona'#13#10'where P.idRol=3 and U.IDUsuarioEstatus=1'
    Parameters = <>
    Left = 400
    Top = 160
    object AdoDtstPersonaEntregaIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object AdoDtstPersonaEntregaIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object AdoDtstPersonaEntregaIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object AdoDtstPersonaEntregaRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object AdoDtstPersonaEntregaPassword: TStringField
      FieldName = 'Password'
      Size = 15
    end
    object AdoDtstPersonaEntregaPermiso: TStringField
      FieldName = 'Permiso'
      Size = 255
    end
  end
  object ADODtStOrdenSalidaTipo: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select  IdOrdenSalidaTipo, Identificador, Descripcion from Orden' +
      'esSalidasTipos'
    Parameters = <>
    Left = 632
    Top = 24
  end
  object adodsClientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdPersona,P.RFC, P.RazonSocial, P.IDRol,'#13#10' P.DiasCredit' +
      'oCliente ,P.SaldoCliente'#13#10'FROM Personas P'#13#10#13#10'where P.IdRol=1  an' +
      'd P.idPersona>-1'#13#10'order by P.RazonSocial'
    Parameters = <>
    Left = 624
    Top = 88
    object adodsClientesIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsClientesRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsClientesRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsClientesIDRol: TIntegerField
      FieldName = 'IDRol'
    end
    object adodsClientesDiasCreditoCliente: TIntegerField
      FieldName = 'DiasCreditoCliente'
    end
    object adodsClientesSaldoCliente: TFMTBCDField
      FieldName = 'SaldoCliente'
      Precision = 18
      Size = 6
    end
  end
  object adodsUsuarioCotiza: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUsuario, IdPersona, Login FROM Usuarios'
    Parameters = <>
    Left = 896
    Top = 32
  end
  object AdoUsuarioPedido: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUsuario, IdPersona, Login FROM Usuarios'
    Parameters = <>
    Left = 896
    Top = 96
  end
  object ADOQryDAtosCFDI: TADOQuery
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IdOrdensalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select CI.* , CE.Descripcion Estatus  from CFDI CI '
      'inner join CFDIEstatus CE  on CE. IDCFDIEStatus=CI.IDCFDIEstatus'
      '  where idOrdenSalida=:IdOrdensalida')
    Left = 764
    Top = 25
    object ADOQryDAtosCFDIIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object ADOQryDAtosCFDITipoComp: TStringField
      FieldName = 'TipoComp'
      Size = 10
    end
    object ADOQryDAtosCFDISerie: TStringField
      FieldName = 'Serie'
    end
    object ADOQryDAtosCFDIFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADOQryDAtosCFDIFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADOQryDAtosCFDILugarExpedicion: TStringField
      FieldName = 'LugarExpedicion'
      Size = 100
    end
    object ADOQryDAtosCFDIEstatus: TStringField
      FieldName = 'Estatus'
      Size = 15
    end
  end
end
