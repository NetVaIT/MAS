inherited frmPersonasContactosEdit: TfrmPersonasContactosEdit
  Caption = 'frmPersonasContactosEdit'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    inherited tsGeneral: TcxTabSheet
      inherited cxScrollBox1: TcxScrollBox
        inherited pnlMaster: TPanel
          object Label1: TLabel
            Left = 24
            Top = 24
            Width = 44
            Height = 13
            Caption = 'Contacto'
            FocusControl = DBLookupComboBox1
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 24
            Top = 40
            Width = 600
            Height = 21
            DataField = 'Contacto'
            DataSource = DataSource
            TabOrder = 0
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 24
            Top = 64
            Caption = 'Principal'
            DataBinding.DataField = 'Principal'
            DataBinding.DataSource = DataSource
            TabOrder = 1
            Width = 121
          end
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonaContactos.adodsMaster
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
