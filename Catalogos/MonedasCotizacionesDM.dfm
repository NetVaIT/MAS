inherited dmMonedasCotizaciones: TdmMonedasCotizaciones
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdMonedaCotizacion, IdMoneda, Fecha, Importe FROM Monedas' +
      'Cotizaciones'
    object adodsMasterIdMonedaCotizacion: TAutoIncField
      FieldName = 'IdMonedaCotizacion'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdMoneda: TIntegerField
      FieldName = 'IdMoneda'
      Visible = False
    end
    object adodsMasterMoneda: TStringField
      FieldKind = fkLookup
      FieldName = 'Moneda'
      LookupDataSet = adodsMonedas
      LookupKeyFields = 'IdMoneda'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdMoneda'
      Size = 80
      Lookup = True
    end
    object adodsMasterFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsMasterImporte: TFMTBCDField
      FieldName = 'Importe'
      DisplayFormat = '$,0.000000;-$,0.000000'
      EditFormat = ',0.000000;-,0.000000'
      Precision = 18
      Size = 6
    end
  end
  object adodsMonedas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdMoneda, Descripcion FROM Monedas'
    Parameters = <>
    Left = 168
    Top = 120
    object adodsMonedasIdMoneda: TAutoIncField
      FieldName = 'IdMoneda'
      ReadOnly = True
    end
    object adodsMonedasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
end
