inherited dmRptAntiguedadSaldos: TdmRptAntiguedadSaldos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT     CI.IdCFDI, CI.IdCFDITipoDocumento, CI.IdCFDIFormaPago' +
      ', CI.IdMetodoPago, CI.IdMoneda, CI.IdPersonaEmisor, CI.IdPersona' +
      'Receptor, CI.IdDocumentoCBB, '#13#10'                      CI.IdDocume' +
      'ntoXML, CI.IdDocumentoPDF, CI.IdOrdenSalida, CI.IdCFDIEstatus, C' +
      'I.IdCFDIFacturaGral, CI.IdClienteDomicilio, CI.CuentaCte, CI.Tip' +
      'oCambio, CI.TipoComp, '#13#10'                      CI.Serie, CI.Folio' +
      ', CI.Fecha, CI.SubTotal, CI.Total, CI.TotalImpuestoRetenido, CI.' +
      'TotalImpuestoTrasladado, CI.SaldoDocumento, CI.FechaCancelacion,' +
      ' CI.UUID_TB, '#13#10'                      PR.RazonSocial AS Cliente, ' +
      'PR.DiasCreditoCliente AS Dias, CASE WHEN getdate() - CI.Fecha < ' +
      '30 + PR.DiasCreditoCliente THEN CI.SaldoDocumento END AS '#39'Vigent' +
      'es'#39','#13#10'                       CASE WHEN (getdate() - CI.Fecha < 6' +
      '0 + PR.DiasCreditoCliente) AND (getdate() - CI.Fecha >= 30 + PR.' +
      'DiasCreditoCliente) '#13#10'                      THEN CI.SaldoDocumen' +
      'to END AS '#39'Vencidos a 30 d'#237'as'#39', CASE WHEN (getdate() - CI.Fecha ' +
      '< 90 + PR.DiasCreditoCliente) AND (getdate() '#13#10'                 ' +
      '     - CI.Fecha >= 60 - PR.DiasCreditoCliente) THEN CI.SaldoDocu' +
      'mento END AS '#39'Vencidos a 60 d'#237'as'#39', CASE WHEN (getdate() - CI.Fec' +
      'ha >= 90 - PR.DiasCreditoCliente) AND '#13#10'                      (g' +
      'etdate() - CI.Fecha < 120 + PR.DiasCreditoCliente) THEN CI.Saldo' +
      'Documento END AS '#39'Vencidos a 90 d'#237'as'#39', CASE WHEN getdate() '#13#10'   ' +
      '                   - CI.Fecha >= 120 + PR.DiasCreditoCliente THE' +
      'N CI.SaldoDocumento END AS '#39'Vencidos m'#225's de 90 d'#237'as'#39#13#10'FROM      ' +
      '   CFDI AS CI INNER JOIN'#13#10'                      Personas AS PR O' +
      'N CI.IdPersonaReceptor = PR.IdPersona'#13#10'WHERE   -- (CI.SaldoDocum' +
      'ento > 0)   AND  -- mientras para que muestre todo'#13#10'            ' +
      '              (Ci.IdPersonaReceptor <> - 1)'#13#10'And      (    (Ci.I' +
      'dCFDIEstatus = 2) AND (Ci.IdCFDITipoDocumento = 1) OR'#13#10'         ' +
      '       (CI.IdCFDIEstatus = 2) AND (Ci.IdCFDITipoDocumento = 3) O' +
      'R'#13#10'                (CI.IdCFDIEstatus = 4) AND (Ci.IdCFDITipoDocu' +
      'mento = 4) OR'#13#10'                  (CI.IdCFDIEstatus = 5) AND (CI.' +
      'IdCFDITipoDocumento = 4)  OR  (CI.IdCFDITipoDocumento = 5)  )'#13#10' ' +
      '    '#13#10'ORDER BY Cliente'
    object adodsMasterTipoComp: TStringField
      FieldName = 'TipoComp'
      Size = 10
    end
    object adodsMasterSerie: TStringField
      FieldName = 'Serie'
    end
    object adodsMasterFolio: TLargeintField
      FieldName = 'Folio'
    end
    object adodsMasterCliente: TStringField
      FieldName = 'Cliente'
      Size = 300
    end
    object adodsMasterDias: TIntegerField
      DisplayLabel = 'Dias Cr'#233'dito'
      FieldName = 'Dias'
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterSaldoDocumento: TFloatField
      FieldName = 'SaldoDocumento'
      currency = True
    end
    object adodsMasterVigentes: TFloatField
      FieldName = 'Vigentes'
      ReadOnly = True
      currency = True
    end
    object adodsMasterVencidosa30días: TFloatField
      FieldName = 'Vencidos a 30 d'#237'as'
      ReadOnly = True
      currency = True
    end
    object adodsMasterVencidosa60días: TFloatField
      FieldName = 'Vencidos a 60 d'#237'as'
      ReadOnly = True
      currency = True
    end
    object adodsMasterVencidosa90días: TFloatField
      FieldName = 'Vencidos a 90 d'#237'as'
      ReadOnly = True
      currency = True
    end
    object adodsMasterVencidosmásde90días: TFloatField
      FieldName = 'Vencidos m'#225's de 90 d'#237'as'
      ReadOnly = True
      currency = True
    end
    object adodsMasterTotalImpuestoTrasladado: TFloatField
      FieldName = 'TotalImpuestoTrasladado'
      Visible = False
      currency = True
    end
    object adodsMasterUUID_TB: TStringField
      FieldName = 'UUID_TB'
      Visible = False
      Size = 40
    end
    object adodsMasterTotalImpuestoRetenido: TFloatField
      FieldName = 'TotalImpuestoRetenido'
      Visible = False
      currency = True
    end
    object adodsMasterTotal: TFloatField
      FieldName = 'Total'
      Visible = False
      currency = True
    end
    object adodsMasterSubTotal: TFloatField
      FieldName = 'SubTotal'
      Visible = False
      currency = True
    end
  end
end
