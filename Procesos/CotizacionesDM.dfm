inherited dmCotizaciones: TdmCotizaciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdDocumentoSalida, IdTipoDocumentoSalida, IdPersona,'#13#10' Id' +
      'DocumentoSalidaEstatus, IdMoneda, IdUsuario, FechaRegistro,'#13#10' IV' +
      'A, SubTotal, Total, VigenciaDias, Observaciones'#13#10' FROM Documento' +
      'sSalidas where IdTipoDocumentoSalida=:TipoDocto'
    Parameters = <
      item
        Name = 'TipoDocto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    object adodsMasterIdDocumentoSalida: TAutoIncField
      FieldName = 'IdDocumentoSalida'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdTipoDocumentoSalida: TIntegerField
      FieldName = 'IdTipoDocumentoSalida'
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterIdUsuario: TIntegerField
      FieldName = 'IdUsuario'
      Visible = False
    end
    object adodsMasterIdDocumentoSalidaEstatus: TIntegerField
      FieldName = 'IdDocumentoSalidaEstatus'
      Visible = False
    end
    object adodsMasterFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object adodsMasterIVA: TFMTBCDField
      FieldName = 'IVA'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSubTotal: TFMTBCDField
      FieldName = 'SubTotal'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterTotal: TFMTBCDField
      FieldName = 'Total'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterVigenciaDias: TIntegerField
      FieldName = 'VigenciaDias'
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 300
    end
    object adodsMasterCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = adodsClientes
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersona'
      Size = 100
      Lookup = True
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMoneda
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Lookup = True
    end
    object adodsMasterEstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Estatus'
      LookupDataSet = adodsCotizacionEstatus
      LookupKeyFields = 'IdDocumentoSalidaEstatus'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDocumentoSalidaEstatus'
      Size = 15
      Lookup = True
    end
    object adodsMasterTipoDocumento: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoDocumento'
      LookupDataSet = ADOdsTipoDocumento
      LookupKeyFields = 'IdDocumentoSalidaTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdTipoDocumentoSalida'
      Lookup = True
    end
  end
  object adodsCotizacionesDetalle: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = adodsCotizacionesDetalleAfterPost
    AfterDelete = adodsCotizacionesDetalleAfterPost
    OnNewRecord = adodsCotizacionesDetalleNewRecord
    CommandText = 
      'SELECT  IdDocumentoSalidaDetalle, IdDocumentoSalida, IdProducto,' +
      ' ClaveProducto, Cantidad, CantidadPendiente, PrecioUnitario, Imp' +
      'orte'#13#10' FROM DocumentosSalidasDetalles WHERE  IdDocumentoSalida= ' +
      ':IdDocumentoSalida'
    DataSource = DSMaster
    IndexFieldNames = 'IdDocumentoSalida'
    MasterFields = 'IdDocumentoSalida'
    Parameters = <
      item
        Name = 'IdDocumentoSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    Top = 80
    object adodsCotizacionesDetalleIdDocumentoSalidaDetalle: TAutoIncField
      FieldName = 'IdDocumentoSalidaDetalle'
      ReadOnly = True
    end
    object adodsCotizacionesDetalleIdDocumentoSalida: TIntegerField
      FieldName = 'IdDocumentoSalida'
    end
    object adodsCotizacionesDetalleIdProducto: TIntegerField
      FieldName = 'IdProducto'
    end
    object adodsCotizacionesDetalleClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      OnChange = adodsCotizacionesDetalleClaveProductoChange
      Size = 50
    end
    object adodsCotizacionesDetalleCantidad: TFloatField
      FieldName = 'Cantidad'
      OnChange = adodsCotizacionesDetalleCantidadChange
    end
    object adodsCotizacionesDetalleCantidadPendiente: TFloatField
      FieldName = 'CantidadPendiente'
    end
    object adodsCotizacionesDetallePrecioUnitario: TFMTBCDField
      DisplayLabel = 'Precio Unitario'
      FieldName = 'PrecioUnitario'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCotizacionesDetalleImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsCotizacionesDetalleProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdProducto'
      Size = 150
      Lookup = True
    end
    object adodsCotizacionesDetalleExistenciaActual: TFloatField
      FieldKind = fkLookup
      FieldName = 'ExistenciaActual'
      LookupDataSet = adodsProductos
      LookupKeyFields = 'IdProducto'
      LookupResultField = 'Existencia'
      KeyFields = 'IdProducto'
      Lookup = True
    end
  end
  object adodsUsuario: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdUsuario, Nombre FROM Usuarios'
    Parameters = <>
    Left = 192
    Top = 224
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
    Top = 144
  end
  object adodsClientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdPersona,P.RFC, P.RazonSocial, P.IDRol,PD.Identificado' +
      'r, '#13#10'D.Calle, D.NoExterior,D.Colonia, M.Descripcion Municipio, E' +
      '.Descripcion'#13#10'Estado FROM Personas P'#13#10'left join  PersonasDomicil' +
      'ios PD on PD.IdPersona=P.IdPersona and PD.Predeterminado=1'#13#10'Left' +
      ' join Domicilios D on D.IDDomicilio =PD.IdDomicilio'#13#10'Left join E' +
      'stados E On E.IdEstado=D.IdEstado'#13#10'Left Join  Municipios M on D.' +
      'idmunicipio=M.IdMunicipio'#13#10'where P.IdRol=1  '
    Parameters = <>
    Left = 192
    Top = 40
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
    object adodsClientesCalle: TStringField
      FieldName = 'Calle'
      Size = 30
    end
    object adodsClientesNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object adodsClientesColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object adodsClientesMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object adodsClientesEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object adodsClientesIdentificador: TIntegerField
      DisplayLabel = 'Alias'
      DisplayWidth = 10
      FieldName = 'Identificador'
    end
  end
  object adodsCotizacionEstatus: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Identificador, IdDocumentoSalidaEstatus, Descripcion '#13#10#13#10 +
      'FROM DocumentosSalidasEstatus'
    Parameters = <>
    Left = 192
    Top = 104
    object adodsCotizacionEstatusIdDocumentoSalidaEstatus: TAutoIncField
      FieldName = 'IdDocumentoSalidaEstatus'
      ReadOnly = True
    end
    object adodsCotizacionEstatusIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsCotizacionEstatusDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
  object adodsMoneda: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdMoneda, Descripcion FROM Monedas'
    Parameters = <>
    Left = 192
    Top = 160
    object adodsMonedaIdMoneda: TAutoIncField
      FieldName = 'IdMoneda'
      ReadOnly = True
    end
    object adodsMonedaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
  object ADOdsTipoDocumento: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdDocumentoSalidaTipo, Identificador, Descripcion from Do' +
      'cumentosSalidasTipos'
    Parameters = <>
    Left = 312
    Top = 224
    object ADOdsTipoDocumentoIdDocumentoSalidaTipo: TAutoIncField
      FieldName = 'IdDocumentoSalidaTipo'
      ReadOnly = True
    end
    object ADOdsTipoDocumentoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 3
    end
    object ADOdsTipoDocumentoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 15
    end
  end
  object ADODSAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 64
    Top = 224
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 132
    Top = 40
  end
end
