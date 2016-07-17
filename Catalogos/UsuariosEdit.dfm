inherited frmUsuariosEdit: TfrmUsuariosEdit
  Caption = 'Usuario'
  ClientHeight = 334
  ClientWidth = 480
  ExplicitWidth = 486
  ExplicitHeight = 362
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 480
    Height = 293
    ExplicitWidth = 480
    ExplicitHeight = 293
    ClientRectBottom = 291
    ClientRectRight = 478
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 476
      ExplicitHeight = 263
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Persona'
      end
      object Label2: TLabel
        Left = 24
        Top = 48
        Width = 92
        Height = 13
        Caption = 'Estatus del Usuario'
      end
      object Label3: TLabel
        Left = 24
        Top = 88
        Width = 25
        Height = 13
        Caption = 'Login'
        FocusControl = cxDBTextEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 128
        Width = 46
        Height = 13
        Caption = 'Password'
        FocusControl = cxDBTxtEdtPass
      end
      object Label5: TLabel
        Left = 24
        Top = 176
        Width = 60
        Height = 13
        Caption = 'PerfilUsuario'
        FocusControl = DBLookupComboBox1
      end
      object SpdBtnVerPass: TSpeedButton
        Left = 174
        Top = 144
        Width = 23
        Height = 21
        AllowAllUp = True
        GroupIndex = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        OnClick = SpdBtnVerPassClick
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 104
        DataBinding.DataField = 'Login'
        DataBinding.DataSource = DataSource
        TabOrder = 0
        Width = 144
      end
      object cxDBTxtEdtPass: TcxDBTextEdit
        Left = 24
        Top = 144
        DataBinding.DataField = 'Password'
        DataBinding.DataSource = DataSource
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        TabOrder = 1
        Width = 144
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 23
        Top = 23
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 434
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 23
        Top = 63
        DataBinding.DataField = 'UsuarioEstatus'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 3
        Width = 145
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 192
        Width = 339
        Height = 21
        DataField = 'PerfilUsuario'
        DataSource = DataSource
        TabOrder = 4
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 293
    Width = 480
    ExplicitTop = 293
    ExplicitWidth = 480
    inherited btnCancel: TButton
      Left = 398
      ExplicitLeft = 398
    end
    inherited btnOk: TButton
      Left = 317
      ExplicitLeft = 317
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
