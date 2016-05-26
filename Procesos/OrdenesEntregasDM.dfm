inherited dmOrdenesEntregas: TdmOrdenesEntregas
  inherited adodsMaster: TADODataSet
    CommandText = 
      'select IdInfoEntrega, IdCFDI, IDPersonaCliente, IDPersonaDomicil' +
      'io, '#13#10'IDResponsableEntrega, FechaProgramadaEnt, FechaRealEnt,'#13#10' ' +
      'CondicionEntrega, Observaciones, EstatusEntrega, IdTelefono,'#13#10' I' +
      'dDocumentoGuia, Contenido, Conducto, Servicio, PagoFlete, Valor,' +
      #13#10' Asegurado, CantidadCajas, IdPersonaEmpaca, FechaIniEmpaque, '#13 +
      #10'FechaFinEmpaque, IdEstatusOrdenEntrega from InformacionEntregas'
  end
end
