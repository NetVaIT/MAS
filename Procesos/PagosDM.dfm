inherited dmPagos: TdmPagos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    BeforeInsert = adodsMasterBeforeInsert
    BeforePost = adodsMasterBeforePost
    AfterPost = adodsMasterAfterPost
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdPagoRegistro, IdBanco, IdMetodoPago, IdPersonaCliente, ' +
      #13#10'IdCuentaBancariaEstadoCuenta, Fecha, Referencia, Importe, Sald' +
      'o,'#13#10' Observaciones,'#13#10' IdDomicilioCliente, FolioPago, SeriePago f' +
      'rom PagosRegistros'#13#10'where fecha >getdate()'
    Left = 40
    object adodsMasterIdPagoRegistro: TLargeintField
      FieldName = 'IdPagoRegistro'
      ReadOnly = True
    end
    object adodsMasterIdBanco: TIntegerField
      FieldName = 'IdBanco'
    end
    object adodsMasterIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object adodsMasterIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object adodsMasterIdCuentaBancariaEstadoCuenta: TIntegerField
      FieldName = 'IdCuentaBancariaEstadoCuenta'
    end
    object adodsMasterIdDomicilioCliente: TIntegerField
      FieldName = 'IdDomicilioCliente'
    end
    object adodsMasterFolioPago: TIntegerField
      FieldName = 'FolioPago'
    end
    object adodsMasterSeriePago: TStringField
      FieldName = 'SeriePago'
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterSaldo: TFMTBCDField
      FieldName = 'Saldo'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsMasterObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 255
    end
    object adodsMasterNombreCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreCliente'
      LookupDataSet = ADODtStClientes
      LookupKeyFields = 'IdPersona'
      LookupResultField = 'RazonSocial'
      KeyFields = 'IdPersonaCliente'
      Size = 150
      Lookup = True
    end
    object adodsMasterMetodoPago: TStringField
      FieldKind = fkLookup
      FieldName = 'MetodoPago'
      LookupDataSet = ADODtstMetodoPago
      LookupKeyFields = 'IdMetodoPago'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMetodoPago'
      Size = 30
      Lookup = True
    end
    object adodsMasterBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = ADODtStBancos
      LookupKeyFields = 'IdBanco'
      LookupResultField = 'Nombre'
      KeyFields = 'IdBanco'
      Size = 30
      Lookup = True
    end
    object adodsMasterDomicilioCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'DomicilioCliente'
      LookupDataSet = ADODtStDireccionesCliente
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'DirCompleta'
      KeyFields = 'IdDomicilioCliente'
      Size = 150
      Lookup = True
    end
    object adodsMasterIdentificador: TStringField
      FieldKind = fkLookup
      FieldName = 'Identificador'
      LookupDataSet = ADODtStDireccionesCliente
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'Identificador'
      KeyFields = 'IdDomicilioCliente'
      Lookup = True
    end
    object adodsMasterIdMetPagSugerido: TIntegerField
      FieldKind = fkLookup
      FieldName = 'IdMetPagSugerido'
      LookupDataSet = ADODtStDireccAuxiliar
      LookupKeyFields = 'IdPersonaDomicilio'
      LookupResultField = 'IDMetododePago'
      KeyFields = 'IdDomicilioCliente'
      Lookup = True
    end
  end
  inherited adodsUpdate: TADODataSet
    Left = 328
  end
  object ADODtStDireccAuxiliar: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStDireccionesClienteCalcFields
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13#10',D.Calle' +
      ', D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEsc' +
      'ripcion Municipio, P.Descripcion Poblacion, E.Descripcion Estado' +
      ','#13#10'Pa.descripcion Pais, PD.IDMetododePago'#13#10#13#10'from PersonasDomici' +
      'lios PD'#13#10'inner join Domicilios D on PD.IDDomicilio=D.IDDomicilio' +
      #13#10'Left Join Poblaciones P on P.idPoblacion=d.IdPoblacion'#13#10'left j' +
      'oin Municipios M on M.idmunicipio=D.IdMunicipio'#13#10'Left Join Estad' +
      'os E on E.idestado=D.idestado'#13#10'Left Join Paises Pa on Pa.idpais=' +
      'D.Idpais'#13#10'where PD.IDPersona=:IDPersona'#13#10#13#10#13#10#13#10
    Parameters = <
      item
        Name = 'IDPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 172
    Top = 51
    object ADODtStDireccAuxiliarIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
    end
    object ADODtStDireccAuxiliarIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object ADODtStDireccAuxiliarIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
    end
    object ADODtStDireccAuxiliarIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
    end
    object ADODtStDireccAuxiliarIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object ADODtStDireccAuxiliarPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
    object ADODtStDireccAuxiliarCalle: TStringField
      FieldName = 'Calle'
      Size = 50
    end
    object ADODtStDireccAuxiliarNoExterior: TStringField
      FieldName = 'NoExterior'
      Size = 10
    end
    object ADODtStDireccAuxiliarNoInterior: TStringField
      FieldName = 'NoInterior'
      Size = 10
    end
    object ADODtStDireccAuxiliarColonia: TStringField
      FieldName = 'Colonia'
      Size = 50
    end
    object ADODtStDireccAuxiliarCodigoPostal: TStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object ADODtStDireccAuxiliarMunicipio: TStringField
      FieldName = 'Municipio'
      Size = 50
    end
    object ADODtStDireccAuxiliarPoblacion: TStringField
      FieldName = 'Poblacion'
      Size = 150
    end
    object ADODtStDireccAuxiliarEstado: TStringField
      FieldName = 'Estado'
      Size = 50
    end
    object ADODtStDireccAuxiliarPais: TStringField
      FieldName = 'Pais'
      Size = 100
    end
    object ADODtStDireccAuxiliarDirCompleta: TStringField
      FieldKind = fkCalculated
      FieldName = 'DirCompleta'
      Size = 150
      Calculated = True
    end
    object ADODtStDireccAuxiliarIDMetododePago: TIntegerField
      FieldName = 'IDMetododePago'
    end
  end
  object ADODtStDireccionesCliente: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADODtStDireccionesClienteCalcFields
    CommandText = 
      'select PD.IdPersonaDomicilio, PD.IdPersona, Pd.IdDomicilio, '#13#10'Pd' +
      '.IdDomicilioTipo, PD.Identificador, Pd.Predeterminado '#13#10',D.Calle' +
      ', D.NoExterior, D.NoInterior, D.Colonia, D.CodigoPostal,'#13#10'M.DEsc' +
      'ripcion Municipio, P.Descripcion Poblacion, E.Descripcion Estado' +
      ','#13#10'Pa.descripcion Pais'#13#10#13#10'from PersonasDomicilios PD'#13#10'inner join' +
      ' Domicilios D on PD.IDDomicilio=D.IDDomicilio'#13#10'Left Join Poblaci' +
      'ones P on P.idPoblacion=d.IdPoblacion'#13#10'left join Municipios M on' +
      ' M.idmunicipio=D.IdMunicipio'#13#10'Left Join Estados E on E.idestado=' +
      'D.idestado'#13#10'Left Join Paises Pa on Pa.idpais=D.Idpais'#13#10#13#10
    DataSource = DSMaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IdPersonaCliente'
    Parameters = <>
    Left = 172
    Top = 107
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
  end
  object DSMaster: TDataSource
    DataSet = adodsMaster
    Left = 100
    Top = 16
  end
  object ADODtstMetodoPago: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdMetodoPago, Identificador, Descripcion, ExigeCuenta '#13#10'f' +
      'rom MetodosPago'#13#10
    Parameters = <>
    Left = 44
    Top = 171
    object ADODtstMetodoPagoIdMetodoPago: TIntegerField
      FieldName = 'IdMetodoPago'
    end
    object ADODtstMetodoPagoIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object ADODtstMetodoPagoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object ADODtstMetodoPagoExigeCuenta: TIntegerField
      FieldName = 'ExigeCuenta'
    end
  end
  object ADODtStClientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'Select  IdPersona, IdPersonaTipo, IdRol, IdMetodoPagoCliente, Id' +
      'PersonaEstatus, IdMoneda, RFC, RazonSocial, NumCtaPagoCliente, S' +
      'aldoCliente'#13#10'from Personas where IdRol=1'#13#10'order by Razonsocial'
    Parameters = <>
    Left = 44
    Top = 75
    object ADODtStClientesIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object ADODtStClientesIdPersonaTipo: TIntegerField
      FieldName = 'IdPersonaTipo'
    end
    object ADODtStClientesIdRol: TIntegerField
      FieldName = 'IdRol'
    end
    object ADODtStClientesIdMetodoPagoCliente: TIntegerField
      FieldName = 'IdMetodoPagoCliente'
    end
    object ADODtStClientesIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object ADODtStClientesIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
    end
    object ADODtStClientesRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object ADODtStClientesRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object ADODtStClientesNumCtaPagoCliente: TStringField
      FieldName = 'NumCtaPagoCliente'
      Size = 30
    end
    object ADODtStClientesSaldoCliente: TFMTBCDField
      FieldName = 'SaldoCliente'
      currency = True
      Precision = 18
      Size = 6
    end
  end
  object ADODtStBancos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select IdBanco, IdPais, Identificador, Nombre  from Bancos'
    Parameters = <>
    Left = 172
    Top = 171
    object ADODtStBancosIdBanco: TAutoIncField
      FieldName = 'IdBanco'
      ReadOnly = True
    end
    object ADODtStBancosIdPais: TIntegerField
      FieldName = 'IdPais'
    end
    object ADODtStBancosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 5
    end
    object ADODtStBancosNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
  end
  object ADODtStConfiguraciones: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'select UltimoFolioPago, UltimaSeriePago from Configuraciones'
    Parameters = <>
    Left = 316
    Top = 179
    object ADODtStConfiguracionesUltimoFolioPago: TIntegerField
      FieldName = 'UltimoFolioPago'
    end
    object ADODtStConfiguracionesUltimaSeriePago: TStringField
      FieldName = 'UltimaSeriePago'
    end
  end
  object ADODtStAplicacionesPagos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    AfterPost = ADODtStAplicacionesPagosAfterPost
    OnNewRecord = ADODtStAplicacionesPagosNewRecord
    CommandText = 
      'select IdPagoAplicacion, IdPagoRegistro, IdCFDI, IdPersonaClient' +
      'e,'#13#10' Fecha, Importe from PagosAplicaciones'
    Parameters = <>
    Left = 60
    Top = 251
    object ADODtStAplicacionesPagosIdPagoAplicacion: TLargeintField
      FieldName = 'IdPagoAplicacion'
      ReadOnly = True
    end
    object ADODtStAplicacionesPagosIdPagoRegistro: TLargeintField
      FieldName = 'IdPagoRegistro'
    end
    object ADODtStAplicacionesPagosIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
    end
    object ADODtStAplicacionesPagosIdPersonaCliente: TIntegerField
      FieldName = 'IdPersonaCliente'
    end
    object ADODtStAplicacionesPagosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStAplicacionesPagosImporte: TFloatField
      FieldName = 'Importe'
      currency = True
    end
    object ADODtStAplicacionesPagosserieFactura: TStringField
      FieldKind = fkLookup
      FieldName = 'serieFactura'
      LookupDataSet = ADODtStConFactPendientes
      LookupKeyFields = 'IdCFDI'
      LookupResultField = 'Serie'
      KeyFields = 'IdCFDI'
      Size = 10
      Lookup = True
    end
    object ADODtStAplicacionesPagosFolioFactura: TIntegerField
      FieldKind = fkLookup
      FieldName = 'FolioFactura'
      LookupDataSet = ADODtStConFactPendientes
      LookupKeyFields = 'IdCFDI'
      LookupResultField = 'Folio'
      KeyFields = 'IdCFDI'
      Lookup = True
    end
  end
  object ADODtStConFactPendientes: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select  IdCFDI, IdCFDITipoDocumento, IdPersonaReceptor, '#13#10'IdOrde' +
      'nSalida, IdCFDIEstatus, IdClienteDomicilio, TipoCambio,'#13#10' Serie,' +
      ' Folio, Fecha, Total, SaldoDocumento from CFDI where '#13#10'SaldoDocu' +
      'mento >0 and (IDCFDITipoDocumento=1 or IDCFDITipoDocumento=3'#13#10' o' +
      'r IDCFDITipoDocumento=4 or IDCFDITipoDocumento=5 ) and (IDCFDIEs' +
      'tatus<>3)'
    DataSource = DSMaster
    IndexFieldNames = 'IdPersonaReceptor;IdClienteDomicilio'
    MasterFields = 'IdPersonaCliente;IdDomicilioCliente'
    Parameters = <>
    Left = 196
    Top = 251
    object ADODtStConFactPendientesIdCFDI: TLargeintField
      FieldName = 'IdCFDI'
      ReadOnly = True
    end
    object ADODtStConFactPendientesIdCFDITipoDocumento: TIntegerField
      FieldName = 'IdCFDITipoDocumento'
    end
    object ADODtStConFactPendientesIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object ADODtStConFactPendientesIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object ADODtStConFactPendientesIdCFDIEstatus: TIntegerField
      FieldName = 'IdCFDIEstatus'
    end
    object ADODtStConFactPendientesIdClienteDomicilio: TIntegerField
      FieldName = 'IdClienteDomicilio'
    end
    object ADODtStConFactPendientesTipoCambio: TStringField
      FieldName = 'TipoCambio'
    end
    object ADODtStConFactPendientesSerie: TStringField
      FieldName = 'Serie'
    end
    object ADODtStConFactPendientesFolio: TLargeintField
      FieldName = 'Folio'
    end
    object ADODtStConFactPendientesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object ADODtStConFactPendientesTotal: TFloatField
      FieldName = 'Total'
      currency = True
    end
    object ADODtStConFactPendientesSaldoDocumento: TFloatField
      FieldName = 'SaldoDocumento'
      currency = True
    end
  end
  object ADOQryAuxiliar: TADOQuery
    Connection = _dmConection.ADOConnection
    Parameters = <>
    Left = 324
    Top = 251
  end
end
