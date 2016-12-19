inherited DMPaqueterias: TDMPaqueterias
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select IdPaqueteria, Identificador, Descripcion,Telefono1, Telef' +
      'ono2, Contacto'#13#10' from Paqueterias'
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
    object adodsMasterTelefono1: TStringField
      DisplayLabel = 'Tel'#233'fono 1'
      FieldName = 'Telefono1'
    end
    object adodsMasterTelefono2: TStringField
      DisplayLabel = 'Tel'#233'fono 2'
      FieldName = 'Telefono2'
    end
    object adodsMasterContacto: TStringField
      FieldName = 'Contacto'
      Size = 50
    end
  end
end
