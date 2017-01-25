inherited dmConVentasXCliente: TdmConVentasXCliente
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'Select C.IdPersonaReceptor, P.RazonSocial, C.idcfditipodocumento' +
      ',  Td.Descripcion, sum(Total) SumaTotal from CFDI c'#13#10'inner join ' +
      'CFDITipoDocumento td on td.idcfditipodocumento=C.idcfditipodocum' +
      'ento'#13#10'inner join Personas P on P.idpersona=C.idpersonareceptor'#13#10 +
      'where IdCFDIEstatus in (1,2,5) and C.IdCFDITipoDocumento=1'#13#10'grou' +
      'p by IdPersonaReceptor, P.RazonSocial, c.idcfditipodocumento,Td.' +
      'Descripcion'#13#10#13#10'order by IdPersonaReceptor'#13#10
    object adodsMasterIdPersonaReceptor: TIntegerField
      FieldName = 'IdPersonaReceptor'
    end
    object adodsMasterRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsMasteridcfditipodocumento: TIntegerField
      FieldName = 'idcfditipodocumento'
    end
    object adodsMasterDescripcion: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'Descripcion'
      Size = 50
    end
    object adodsMasterSumaTotal: TFloatField
      FieldName = 'SumaTotal'
      ReadOnly = True
      currency = True
    end
  end
end
