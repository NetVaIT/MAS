inherited DMPaqueterias: TDMPaqueterias
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 'select IdPaqueteria, Identificador, Descripcion from Paqueterias'
    object adodsMasterIdPaqueteria: TIntegerField
      FieldName = 'IdPaqueteria'
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
  end
end
