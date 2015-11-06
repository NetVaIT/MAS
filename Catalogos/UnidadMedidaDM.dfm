inherited dmUnidadMedida: TdmUnidadMedida
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdUnidadMedida, Identificador, Descripcion '#13#10'FROM Unidade' +
      'sMedida '
    object adodsMasterIdUnidadMedida: TIntegerField
      FieldName = 'IdUnidadMedida'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
end
