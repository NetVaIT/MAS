inherited frmAlmacenesEdit: TfrmAlmacenesEdit
  Caption = 'frmAlmacenesEdit'
  ClientHeight = 661
  ClientWidth = 768
  ExplicitWidth = 768
  ExplicitHeight = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 576
    Width = 768
    ExplicitTop = 576
    ExplicitWidth = 768
  end
  inherited splDetail2: TSplitter
    Top = 532
    Width = 768
    ExplicitTop = 532
    ExplicitWidth = 768
  end
  inherited splDetail1: TSplitter
    Top = 488
    Width = 768
    ExplicitTop = 488
    ExplicitWidth = 768
  end
  inherited pnlClose: TPanel
    Top = 620
    Width = 768
    ExplicitTop = 620
    ExplicitWidth = 768
  end
  inherited pnlDetail3: TPanel
    Top = 579
    Width = 768
    ExplicitTop = 579
    ExplicitWidth = 768
  end
  inherited pnlDetail2: TPanel
    Top = 535
    Width = 768
    ExplicitTop = 535
    ExplicitWidth = 768
  end
  inherited pnlDetail1: TPanel
    Top = 491
    Width = 768
    ExplicitLeft = 0
    ExplicitTop = 491
    ExplicitWidth = 768
  end
  inherited pcMain: TcxPageControl
    Width = 768
    Height = 488
    Properties.HideTabs = False
    ExplicitWidth = 768
    ExplicitHeight = 488
    ClientRectBottom = 486
    ClientRectLeft = 2
    ClientRectRight = 766
    ClientRectTop = 28
    inherited tsGeneral: TcxTabSheet
      Caption = 'Almacenes'
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 764
      ExplicitHeight = 458
      inherited cxScrollBox1: TcxScrollBox
        Width = 764
        Height = 458
        ExplicitWidth = 764
        ExplicitHeight = 458
        inherited tbarData: TToolBar
          Width = 762
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 762
        end
        inherited pnlMaster: TPanel
          Width = 762
          Height = 431
          ExplicitLeft = 0
          ExplicitTop = 25
          ExplicitWidth = 762
          ExplicitHeight = 431
          object Label1: TLabel
            Left = 24
            Top = 16
            Width = 61
            Height = 13
            Caption = 'Identificador'
            FocusControl = cxDBTextEdit1
          end
          object Label2: TLabel
            Left = 24
            Top = 56
            Width = 54
            Height = 13
            Caption = 'Descripci'#243'n'
            FocusControl = cxDBTextEdit2
          end
          object Label3: TLabel
            Left = 24
            Top = 96
            Width = 45
            Height = 13
            Caption = 'Ubicaci'#243'n'
            FocusControl = cxDBTextEdit3
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 24
            Top = 32
            DataBinding.DataField = 'Identificador'
            DataBinding.DataSource = DataSource
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 24
            Top = 72
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = DataSource
            TabOrder = 1
            Width = 300
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 24
            Top = 112
            DataBinding.DataField = 'Ubicacion'
            DataBinding.DataSource = DataSource
            TabOrder = 2
            Width = 300
          end
        end
      end
    end
    object tsEspacios: TcxTabSheet
      Caption = 'Espacios'
      ImageIndex = 4
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
