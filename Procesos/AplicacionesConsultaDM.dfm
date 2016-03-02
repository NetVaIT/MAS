inherited dmAplicacionesConsulta: TdmAplicacionesConsulta
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select PA.Fecha FechaAplicacion,pa.importe, PR.Fecha as FechaPag' +
      'o, PR.FolioPago, Pr.SeriePago,CI.Folio FolioFactura,CI.Serie Ser' +
      'ieFactura, CI.Fecha as FechaFactura ,P.RazonSocial,Pd.Identifica' +
      'dor'#13#10' from PagosAplicaciones PA'#13#10'inner join PagosRegistros PR on' +
      ' PA.IdPagoRegistro=PR.IdPagoRegistro'#13#10'inner join CFDI CI on PA.I' +
      'dCFDI =CI.IdCFDI'#13#10'inner join PersonasDomicilios Pd on Pd.IdPerso' +
      'naDomicilio= CI.IdClienteDomicilio'#13#10'inner join Personas P on P.I' +
      'dPersona =Pd.IdPersona '#13#10
    object adodsMasterRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsMasterIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object adodsMasterFechaAplicacion: TDateTimeField
      FieldName = 'FechaAplicacion'
    end
    object adodsMasterFechaPago: TDateTimeField
      FieldName = 'FechaPago'
    end
    object adodsMasterFolioPago: TIntegerField
      FieldName = 'FolioPago'
    end
    object adodsMasterSeriePago: TStringField
      FieldName = 'SeriePago'
    end
    object adodsMasterFolioFactura: TLargeintField
      FieldName = 'FolioFactura'
    end
    object adodsMasterSerieFactura: TStringField
      FieldName = 'SerieFactura'
    end
    object adodsMasterFechaFactura: TDateTimeField
      FieldName = 'FechaFactura'
    end
    object adodsMasterimporte: TFloatField
      FieldName = 'importe'
      currency = True
    end
  end
end
