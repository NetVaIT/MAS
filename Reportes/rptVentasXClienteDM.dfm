inherited dmrptVentasXCliente: TdmrptVentasXCliente
  inherited adodsReport: TADODataSet
    CommandText = 
      'Select C.IdPersonaReceptor, P.RazonSocial, C.idcfditipodocumento' +
      ',  Td.Descripcion, sum(Total) SumaTotal from CFDI c'#13#10'inner join ' +
      'CFDITipoDocumento td on td.idcfditipodocumento=C.idcfditipodocum' +
      'ento'#13#10'inner join Personas P on P.idpersona=C.idpersonareceptor'#13#10 +
      'where IdCFDIEstatus in (1,2,5) and C.IdCFDITipoDocumento=1'#13#10'grou' +
      'p by IdPersonaReceptor, P.RazonSocial, c.idcfditipodocumento,Td.' +
      'Descripcion'#13#10#13#10'order by IdPersonaReceptor'#13#10
    object adodsReportIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object adodsReportDescripcion: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsReportRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsReportidcfditipodocumento: TIntegerField
      FieldName = 'idcfditipodocumento'
    end
    object adodsReportSumaTotal: TFloatField
      FieldName = 'SumaTotal'
      ReadOnly = True
    end
  end
  inherited ppReport: TppReport
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppImage4: TppImage
        LayerName = Foreground
      end
      inherited ppLabel6: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
  end
end
