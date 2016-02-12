inherited dmPersonasDomicilios: TdmPersonasDomicilios
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'SELECT IdPersonaDomicilio, IdPersona, IdDomicilio, IdDomicilioTi' +
      'po, Predeterminado FROM PersonasDomicilios WHERE IdPersona = :Id' +
      'Persona'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 24
    object adodsMasterIdPersonaDomicilio: TAutoIncField
      FieldName = 'IdPersonaDomicilio'
      ReadOnly = True
      Visible = False
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
      Required = True
      Visible = False
    end
    object adodsMasterIdDomicilio: TIntegerField
      FieldName = 'IdDomicilio'
      Required = True
      Visible = False
    end
    object adodsMasterIdDomicilioTipo: TIntegerField
      FieldName = 'IdDomicilioTipo'
      Required = True
      Visible = False
    end
    object adodsMasterDomicilio: TStringField
      FieldKind = fkLookup
      FieldName = 'Domicilio'
      LookupDataSet = adodsDomicilios
      LookupKeyFields = 'IdDomicilio'
      LookupResultField = 'Domicilio'
      KeyFields = 'IdDomicilio'
      Size = 500
      Lookup = True
    end
    object adodsMasterDomicilioTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'DomicilioTipo'
      LookupDataSet = adodsDomiciliosTipos
      LookupKeyFields = 'IdDomicilioTipo'
      LookupResultField = 'Descripcion'
      KeyFields = 'IdDomicilioTipo'
      Size = 50
      Lookup = True
    end
    object adodsMasterPredeterminado: TBooleanField
      FieldName = 'Predeterminado'
    end
  end
  inherited ActionList: TActionList
    object actUpdate: TAction
      Caption = '...'
      OnExecute = actUpdateExecute
      OnUpdate = actUpdateUpdate
    end
  end
  object adodsDomiciliosTipos: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 'SELECT IdDomicilioTipo, Descripcion FROM DomiciliosTipos'
    Parameters = <>
    Left = 120
    Top = 96
  end
  object adodsDomicilios: TADODataSet
    Active = True
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT Domicilios.IdDomicilio,'#13#10'Domicilios.Calle + '#39' '#39' + ISNULL(' +
      'Domicilios.NoExterior,'#39#39') + '#39' '#39' + ISNULL(Domicilios.NoInterior,'#39 +
      #39') + CHAR(13)+CHAR(10) +'#13#10'ISNULL(Domicilios.Colonia,'#39#39') + '#39', '#39' +' +
      ' Municipios.Descripcion + '#39', '#39' + Poblaciones.Descripcion + '#39', '#39' ' +
      '+ Estados.Descripcion + '#39' '#39' + Domicilios.CodigoPostal + CHAR(13)' +
      '+CHAR(10) +'#13#10'Paises.Descripcion AS Domicilio'#13#10'FROM Domicilios '#13#10 +
      'LEFT JOIN Paises ON Domicilios.IdPais = Paises.IdPais'#13#10'LEFT JOIN' +
      ' Estados ON Domicilios.IdEstado = Estados.IdEstado'#13#10'LEFT JOIN Mu' +
      'nicipios ON Domicilios.IdMunicipio = Municipios.IdMunicipio'#13#10'LEF' +
      'T JOIN Poblaciones ON Domicilios.IdPoblacion = Poblaciones.IdPob' +
      'lacion'#13#10
    Parameters = <>
    Left = 120
    Top = 48
    object adodsDomiciliosIdDomicilio: TAutoIncField
      FieldName = 'IdDomicilio'
      ReadOnly = True
    end
    object adodsDomiciliosDomicilio: TStringField
      FieldName = 'Domicilio'
      ReadOnly = True
      Size = 473
    end
  end
  object DSPersona: TDataSource
    DataSet = ADODtStPersona
    Left = 124
    Top = 176
  end
  object ADODtStPersona: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select IdPersona, RFC, RazonSocial from Personas where IDPersona' +
      '=:idpersona'
    DataSource = dsmaster
    IndexFieldNames = 'IdPersona'
    MasterFields = 'IdPersona'
    Parameters = <
      item
        Name = 'idpersona'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 176
  end
  object dsmaster: TDataSource
    DataSet = adodsMaster
    Left = 36
    Top = 80
  end
end
