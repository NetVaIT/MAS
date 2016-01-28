inherited frmConfiguracionesEdit: TfrmConfiguracionesEdit
  Caption = 'Configuraci'#243'n'
  ClientHeight = 454
  ClientWidth = 408
  ExplicitWidth = 414
  ExplicitHeight = 483
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 408
    Height = 413
    ExplicitWidth = 408
    ExplicitHeight = 413
    ClientRectBottom = 411
    ClientRectRight = 406
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 404
      ExplicitHeight = 383
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 32
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBLookupComboBox2
      end
      object Label8: TLabel
        Left = 32
        Top = 112
        Width = 119
        Height = 13
        Caption = 'Ruta Base para Facturas'
        FocusControl = cxDBTextEdit1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 40
        Width = 304
        Height = 21
        DataField = 'Pais'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 32
        Top = 80
        Width = 304
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 128
        DataBinding.DataField = 'RutaBaseFacturas'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 304
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 413
    Width = 408
    ExplicitTop = 413
    ExplicitWidth = 408
    inherited btnCancel: TButton
      Left = 326
      ExplicitLeft = 326
    end
    inherited btnOk: TButton
      Left = 245
      ExplicitLeft = 245
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
