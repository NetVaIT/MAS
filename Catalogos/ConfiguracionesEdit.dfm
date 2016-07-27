inherited frmConfiguracionesEdit: TfrmConfiguracionesEdit
  Caption = 'Configuraci'#243'n'
  ClientHeight = 562
  ClientWidth = 378
  ExplicitWidth = 384
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 378
    Height = 521
    ExplicitWidth = 378
    ExplicitHeight = 521
    ClientRectBottom = 519
    ClientRectRight = 376
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 374
      ExplicitHeight = 491
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
        Height = 270
        BevelInner = bvLowered
        TabOrder = 5
        object Label3: TLabel
          Left = 29
          Top = 13
          Width = 62
          Height = 13
          Caption = 'Correo Envio'
          FocusControl = cxDBTxtEdtCorreo
        end
        object Label4: TLabel
          Left = 27
          Top = 61
          Width = 51
          Height = 13
          Caption = 'Host Envio'
          FocusControl = cxDBTxtEdtHost
        end
        object Label5: TLabel
          Left = 212
          Top = 61
          Width = 61
          Height = 13
          Caption = 'Puerto Envio'
          FocusControl = cxDBTxtEdtPuerto
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
        object SpdBtnPruebaEnv: TSpeedButton
          Left = 213
          Top = 224
          Width = 97
          Height = 28
          Caption = 'Prueba Envio'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550B30555000
            0000557F57F557777777550B305508888880557F57F575555557550B30508888
            8805557F57F7FFFFFF75550B300000000055557F5777777777F5550300000000
            0055557F777F555F77F555007800000070555F77557F5F7757F5007888000077
            70557755557F775557F508888800777770557F555577555557F5088808077777
            70557FF5757F555557F5098988077777705577F7557F555557F5999888077777
            705577755575F55557550988888077770555775555575FFF7555088888888000
            55557F55555577775555088888880755555575F5555F77555555508888075555
            5555575FFF775555555555000755555555555577775555555555}
          NumGlyphs = 2
          OnClick = SpdBtnPruebaEnvClick
        end
        object cxDBTxtEdtCorreo: TcxDBTextEdit
          Left = 29
          Top = 32
          DataBinding.DataField = 'CorreoEnvio'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 304
        end
        object cxDBTxtEdtHost: TcxDBTextEdit
          Left = 27
          Top = 77
          DataBinding.DataField = 'HostEnvio'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 155
        end
        object cxDBTxtEdtPuerto: TcxDBTextEdit
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
          Left = 189
          Top = 174
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
        object PrgrsBrEnvioP: TProgressBar
          Left = 213
          Top = 201
          Width = 94
          Height = 17
          Max = 20
          MarqueeInterval = 5
          TabOrder = 7
          Visible = False
        end
        object CBXTipoSEg: TComboBox
          Left = 237
          Top = 174
          Width = 123
          Height = 21
          ItemIndex = 3
          TabOrder = 8
          Text = 'sslvTLSV1'
          Items.Strings = (
            'sslvSSLv2'
            'sslvsssV23'
            'sslSSLV3'
            'sslvTLSV1'
            'sslvTLSV1_1'
            'sslvTLSV1_2')
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 521
    Width = 378
    ExplicitTop = 521
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
