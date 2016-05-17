inherited dmPersonaContactos: TdmPersonaContactos
  OldCreateOrder = True
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    OnNewRecord = adodsMasterNewRecord
    CommandText = 
      'select IdContacto, IdPersona, Nombre, Cargo, '#13#10'CorreoElectronico' +
      ', TelefonoFijo, TelefonoMovil, IDPersonaDomicilio from Contactos' +
      #13#10' WHERE IdPersona= :IdPersona and IDPersonaDomicilio = :IdPerso' +
      'naDomicilio'
    Parameters = <
      item
        Name = 'IdPersona'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IdPersonaDomicilio'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 40
    Top = 24
    object adodsMasterIdContacto: TIntegerField
      FieldName = 'IdContacto'
    end
    object adodsMasterIdPersona: TIntegerField
      FieldName = 'IdPersona'
    end
    object adodsMasterNombre: TStringField
      FieldName = 'Nombre'
      Size = 300
    end
    object adodsMasterCargo: TStringField
      FieldName = 'Cargo'
      Size = 25
    end
    object adodsMasterCorreoElectronico: TStringField
      DisplayLabel = 'Correo Electr'#243'nico'
      FieldName = 'CorreoElectronico'
      Size = 200
    end
    object adodsMasterTelefonoFijo: TStringField
      DisplayLabel = 'Tel'#233'fono Fijo'
      FieldName = 'TelefonoFijo'
      Size = 25
    end
    object adodsMasterTelefonoMovil: TStringField
      DisplayLabel = 'Tel'#233'fono M'#243'vil'
      FieldName = 'TelefonoMovil'
      Visible = False
      Size = 25
    end
    object adodsMasterIDPersonaDomicilio: TIntegerField
      FieldName = 'IDPersonaDomicilio'
    end
  end
  object adodsContacto: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdPersona, Nombre, ApellidoPaterno, ApellidoMaterno, IdPe' +
      'rsonaEstatus, RFC, CURP,'#13#10'RazonSocial FROM Personas '#13#10'where idPe' +
      'rsonaTipo=1 and IDPersona >1'#13#10'order by RazonSocial'
    Parameters = <>
    Left = 152
    Top = 24
    object adodsContactoIdPersona: TAutoIncField
      FieldName = 'IdPersona'
      ReadOnly = True
    end
    object adodsContactoNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object adodsContactoApellidoPaterno: TStringField
      FieldName = 'ApellidoPaterno'
      Size = 100
    end
    object adodsContactoApellidoMaterno: TStringField
      FieldName = 'ApellidoMaterno'
      Size = 100
    end
    object adodsContactoRazonSocial: TStringField
      FieldName = 'RazonSocial'
      Size = 300
    end
    object adodsContactoIdPersonaEstatus: TIntegerField
      FieldName = 'IdPersonaEstatus'
    end
    object adodsContactoRFC: TStringField
      FieldName = 'RFC'
      Size = 13
    end
    object adodsContactoCURP: TStringField
      FieldName = 'CURP'
      Size = 18
    end
  end
end
