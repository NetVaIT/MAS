inherited frmPersonasMaster: TfrmPersonasMaster
  Caption = 'frmPersonasMaster'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited tbarCategorias: TToolBar
    ButtonHeight = 21
    ButtonWidth = 49
    ShowCaptions = True
    inherited ToolButton3: TToolButton
      ExplicitHeight = 21
    end
    object ToolButton1: TToolButton
      Left = 8
      Top = 0
      Action = actPersona
      Grouped = True
    end
    object ToolButton2: TToolButton
      Left = 57
      Top = 0
      Action = actDomicilio
      Grouped = True
    end
    object ToolButton4: TToolButton
      Left = 106
      Top = 0
      Action = actTelefono
      Grouped = True
    end
    object ToolButton5: TToolButton
      Left = 155
      Top = 0
      Action = actEmail
      Grouped = True
    end
  end
  inherited ActionList: TActionList
    object actPersona: TAction
      Caption = 'Persona'
    end
    object actDomicilio: TAction
      Caption = 'Domicilio'
    end
    object actTelefono: TAction
      Caption = 'Telefono'
    end
    object actEmail: TAction
      Caption = 'Email'
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
