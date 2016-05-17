inherited frmConfiguracionesEdit: TfrmConfiguracionesEdit
  Caption = 'Configuraci'#243'n'
  ClientHeight = 555
  ClientWidth = 378
  ExplicitWidth = 384
  ExplicitHeight = 583
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 378
    Height = 514
    ExplicitWidth = 378
    ExplicitHeight = 514
    ClientRectBottom = 512
    ClientRectRight = 376
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 374
      ExplicitHeight = 484
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
      object Label11: TLabel
        Left = 215
        Top = 161
        Width = 81
        Height = 13
        Caption = 'Ultimo Folio Pago'
        FocusControl = cxDBSpinEdit1
      end
      object Label12: TLabel
        Left = 32
        Top = 161
        Width = 83
        Height = 13
        Caption = 'Ultima Serie Pago'
        FocusControl = cxDBTextEdit9
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
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 215
        Top = 177
        DataBinding.DataField = 'UltimoFolioPago'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 32
        Top = 177
        DataBinding.DataField = 'UltimaSeriePago'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object PnlDatosCorreoSalida: TPanel
        Left = 3
        Top = 217
        Width = 366
        Height = 254
        BevelInner = bvLowered
        TabOrder = 5
        object Label3: TLabel
          Left = 29
          Top = 13
          Width = 62
          Height = 13
          Caption = 'Correo Envio'
          FocusControl = cxDBTextEdit2
        end
        object Label4: TLabel
          Left = 27
          Top = 61
          Width = 51
          Height = 13
          Caption = 'Host Envio'
          FocusControl = cxDBTextEdit3
        end
        object Label5: TLabel
          Left = 212
          Top = 61
          Width = 61
          Height = 13
          Caption = 'Puerto Envio'
          FocusControl = cxDBTextEdit4
        end
        object Label6: TLabel
          Left = 29
          Top = 109
          Width = 72
          Height = 13
          Caption = 'Usuario Correo'
          FocusControl = cxDBTextEdit5
        end
        object Label7: TLabel
          Left = 29
          Top = 157
          Width = 82
          Height = 13
          Caption = 'Password Correo'
        end
        object Label9: TLabel
          Left = 212
          Top = 157
          Width = 71
          Height = 13
          Caption = 'Tipo Seguridad'
          FocusControl = cxDBTextEdit7
        end
        object Label10: TLabel
          Left = 29
          Top = 205
          Width = 104
          Height = 13
          Caption = 'Metodo Autenticacion'
          FocusControl = cxDBTextEdit8
        end
        object SpdBtnVerPass: TSpeedButton
          Left = 153
          Top = 173
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
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 29
          Top = 32
          DataBinding.DataField = 'CorreoEnvio'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 304
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 27
          Top = 77
          DataBinding.DataField = 'HostEnvio'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 155
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 212
          Top = 77
          DataBinding.DataField = 'PuertoEnvio'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 29
          Top = 125
          DataBinding.DataField = 'UsuarioCorreo'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 304
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 212
          Top = 173
          DataBinding.DataField = 'TipoSeguridad'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 29
          Top = 221
          DataBinding.DataField = 'MetodoAutenticacion'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object DBTxtEdtPass: TDBEdit
          Left = 27
          Top = 173
          Width = 121
          Height = 21
          DataField = 'PasswordCorreo'
          DataSource = DataSource
          PasswordChar = '*'
          TabOrder = 6
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 514
    Width = 378
    ExplicitTop = 514
    ExplicitWidth = 378
    inherited btnCancel: TButton
      Left = 296
      ExplicitLeft = 296
    end
    inherited btnOk: TButton
      Left = 215
      ExplicitLeft = 215
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmConfiguracion.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
