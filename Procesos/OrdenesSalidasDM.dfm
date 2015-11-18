inherited DMOrdenesSalidas: TDMOrdenesSalidas
  OldCreateOrder = True
  Height = 449
  Width = 507
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select idOrdenSalida, IdDocumentoSalida, IdOrdenEstatus, '#13#10'IdPer' +
      'sonaRecolecta, IdPersonaRevisa, IdPersonaEmpaca, '#13#10'FechaRegistro' +
      ', Total, FechaIniRecolecta, FechaFinRecolecta, '#13#10'FechaIniRevisa,' +
      ' FechaFinRevisa, FechaIniEmpaca, FechaFinEmpaca,'#13#10' Subtotal, IVA' +
      #13#10'from OrdenesSalidas where iddocumentoSalida=:IDDocumentoSalida'
    Parameters = <
      item
        Name = 'IDDocumentoSalida'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
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
      Precision = 18
      Size = 6
    end
    object adodsMasterIVA: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 6
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
    CommandText = 
      'select IdOrdenSalidaItem, IdOrdenSalida, IdDocumentoSalidaDetall' +
      'e,'#13#10' IdProducto, CantidadDespachada, Precio, Importe, CantidadSo' +
      'licitada, Observaciones'#13#10' from OrdenesSalidaItems where idOrdenS' +
      'alida=:IdOrdenSalida'
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
    end
    object ADODtStOrdenSalidaItemCantidadSolicitada: TFloatField
      FieldName = 'CantidadSolicitada'
    end
    object ADODtStOrdenSalidaItemPrecio: TFMTBCDField
      FieldName = 'Precio'
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
      'select IdPersona, IdRol, IdPersonaEstatus, RazonSocial from Pers' +
      'onas'#13#10'where idRol=3'
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
  end
  object ADODtStPersonaRevisa: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdRol, IdPersonaEstatus, RazonSocial '#13#10'from Pe' +
      'rsonas where idRol=3'
    Parameters = <>
    Left = 240
    Top = 168
  end
  object ADODtStPersonaEmpaca: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, IdRol, IdPersonaEstatus, RazonSocial '#13#10'from Pe' +
      'rsonas  where idRol=3'
    Parameters = <>
    Left = 240
    Top = 240
  end
  object adodsProductos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT P.IdProducto,P.Descripcion,P.PrecioUnitario, I.Existencia' +
      #13#10' FROM Productos P'#13#10' inner join Inventario  I On P.IDProducto=I' +
      '.IdProducto'
    Parameters = <>
    Left = 56
    Top = 168
  end
end
