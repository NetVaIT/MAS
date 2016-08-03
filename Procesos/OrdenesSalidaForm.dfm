inherited FrmOrdenesSalida: TFrmOrdenesSalida
  Caption = 'FrmOrdenesSalida'
  ClientWidth = 1267
  OnActivate = FormActivate
  ExplicitWidth = 1267
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 620
    Width = 1267
    ExplicitTop = 620
    ExplicitWidth = 933
  end
  inherited splDetail2: TSplitter
    Top = 582
    Width = 1267
    Height = 18
    ExplicitLeft = -1
    ExplicitTop = 588
    ExplicitWidth = 1097
    ExplicitHeight = 18
  end
  inherited splDetail1: TSplitter
    Top = 561
    Width = 1267
    ExplicitTop = 524
    ExplicitWidth = 933
  end
  inherited pnlClose: TPanel
    Top = 640
    Width = 1267
    Height = 10
    ExplicitTop = 640
    ExplicitWidth = 1267
    ExplicitHeight = 10
  end
  inherited pnlDetail3: TPanel
    Top = 623
    Width = 1267
    Height = 17
    ExplicitTop = 623
    ExplicitWidth = 1267
    ExplicitHeight = 17
  end
  inherited pnlDetail2: TPanel
    Top = 600
    Width = 1267
    Height = 20
    ExplicitTop = 600
    ExplicitWidth = 1267
    ExplicitHeight = 20
  end
  inherited pnlDetail1: TPanel
    Top = 564
    Width = 1267
    Height = 18
    ExplicitLeft = 0
    ExplicitTop = 564
    ExplicitWidth = 1267
    ExplicitHeight = 18
  end
  inherited pcMain: TcxPageControl
    Top = 22
    Width = 1267
    Height = 539
    ExplicitTop = 22
    ExplicitWidth = 1267
    ExplicitHeight = 539
    ClientRectBottom = 538
    ClientRectRight = 1266
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1265
      ExplicitHeight = 537
      inherited cxScrollBox1: TcxScrollBox
        Width = 1265
        Height = 537
        ExplicitWidth = 1265
        ExplicitHeight = 537
        inherited tbarData: TToolBar
          Width = 1263
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 1263
          object ToolButton4: TToolButton
            Left = 254
            Top = 0
            Width = 224
            Caption = 'ToolButton4'
            ImageIndex = 13
            Style = tbsSeparator
          end
          object TlBtnImprimirOrdenSal: TToolButton
            Left = 478
            Top = 0
            Hint = 'Imprimir Orden Salida'
            ImageIndex = 22
            ParentShowHint = False
            ShowHint = True
            OnClick = TlBtnImprimirOrdenSalClick
          end
          object TlBtnEnvioFactura: TToolButton
            Tag = 200
            Left = 501
            Top = 0
            ImageIndex = 23
          end
        end
        inherited pnlMaster: TPanel
          Width = 1263
          Height = 510
          ExplicitLeft = 0
          ExplicitTop = 25
          ExplicitWidth = 1263
          ExplicitHeight = 510
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1263
            Height = 416
            Align = alTop
            TabOrder = 0
            object Label10: TLabel
              Left = 137
              Top = 16
              Width = 84
              Height = 13
              Caption = 'Fecha Registro'
              FocusControl = cxDBDateEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 341
              Top = 16
              Width = 42
              Height = 13
              Caption = 'Estatus'
              FocusControl = DBLookupComboBox5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 63
              Top = 314
              Width = 23
              Height = 13
              Caption = 'IVA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 33
              Top = 295
              Width = 53
              Height = 13
              Caption = 'SubTotal:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 54
              Top = 334
              Width = 32
              Height = 13
              Caption = 'Total:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LblRecoleccion: TLabel
              Left = 33
              Top = 78
              Width = 59
              Height = 13
              Caption = 'Recolect'#243':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBTxtQuienRecolecta: TDBText
              Left = 115
              Top = 78
              Width = 104
              Height = 13
              AutoSize = True
              DataField = 'PersonaRecolecta'
              DataSource = DataSource
            end
            object LblReviso: TLabel
              Left = 34
              Top = 124
              Width = 41
              Height = 13
              Caption = 'Revis'#243':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LblEmpaco: TLabel
              Left = 33
              Top = 243
              Width = 47
              Height = 13
              Caption = 'Empac'#243':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBTxtQuienRevisa: TDBText
              Left = 114
              Top = 124
              Width = 89
              Height = 13
              AutoSize = True
              DataField = 'PersonaRevisa'
              DataSource = DataSource
            end
            object DBTxtQuienEmpaca: TDBText
              Left = 136
              Top = 242
              Width = 94
              Height = 13
              AutoSize = True
              DataField = 'PersonaEmpaca'
              DataSource = DataSource
            end
            object DBTxtEstatus: TDBText
              Left = 341
              Top = 35
              Width = 65
              Height = 17
              Color = clMoneyGreen
              DataField = 'Estatus'
              DataSource = DataSource
              ParentColor = False
              Transparent = True
            end
            object DBText2: TDBText
              Left = 435
              Top = 35
              Width = 41
              Height = 13
              AutoSize = True
              DataField = 'NombreCliente'
              DataSource = DataSource
            end
            object Label1: TLabel
              Left = 435
              Top = 16
              Width = 39
              Height = 13
              Caption = 'Cliente'
              FocusControl = DBLookupComboBox5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBTxtSubtotal: TDBText
              Left = 91
              Top = 295
              Width = 121
              Height = 17
              DataField = 'Subtotal'
              DataSource = DataSource
            end
            object DBTxtIVA: TDBText
              Left = 91
              Top = 314
              Width = 121
              Height = 17
              DataField = 'IVA'
              DataSource = DataSource
            end
            object DBTxtTotal: TDBText
              Left = 92
              Top = 337
              Width = 121
              Height = 17
              DataField = 'Total'
              DataSource = DataSource
            end
            object LblAutorizo: TLabel
              Left = 33
              Top = 172
              Width = 51
              Height = 13
              Caption = 'Autoriz'#243':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText3: TDBText
              Left = 113
              Top = 172
              Width = 41
              Height = 13
              AutoSize = True
              DataField = 'PersonaAutoriza'
              DataSource = DataSource
            end
            object DBText4: TDBText
              Left = 31
              Top = 35
              Width = 65
              Height = 17
              DataField = 'idOrdenSalida'
              DataSource = DataSource
            end
            object Label23: TLabel
              Left = 31
              Top = 16
              Width = 91
              Height = 13
              Caption = 'No. Orden Salida'
              FocusControl = DBLookupComboBox5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText5: TDBText
              Left = 907
              Top = 35
              Width = 41
              Height = 13
              AutoSize = True
              DataField = 'IdentificadorCte'
              DataSource = DataSource
            end
            object Label24: TLabel
              Left = 853
              Top = 16
              Width = 95
              Height = 13
              Caption = 'Identificador Cte'
              FocusControl = DBLookupComboBox5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 990
              Top = 16
              Width = 98
              Height = 13
              Caption = 'No. Pedido Origen'
              FocusControl = DBLookupComboBox5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText6: TDBText
              Left = 990
              Top = 35
              Width = 65
              Height = 17
              DataField = 'IdDocumentoSalida'
              DataSource = DataSource
            end
            object LblRespEntrega: TLabel
              Left = 34
              Top = 368
              Width = 122
              Height = 13
              Caption = 'Responsable Entrega:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText7: TDBText
              Left = 161
              Top = 368
              Width = 41
              Height = 13
              AutoSize = True
              DataField = 'PersonaEntrega'
              DataSource = DataSource
            end
            object Label31: TLabel
              Left = 1133
              Top = 16
              Width = 61
              Height = 13
              Caption = 'Tipo Salida'
              FocusControl = DBLookupComboBox5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText8: TDBText
              Left = 1133
              Top = 35
              Width = 65
              Height = 17
              DataField = 'TipoSalida'
              DataSource = DataSource
            end
            object PnlAutorizaYFactura: TPanel
              Left = 0
              Top = 152
              Width = 767
              Height = 50
              BevelOuter = bvNone
              TabOrder = 11
              Visible = False
              object Label3: TLabel
                Left = 262
                Top = 3
                Width = 65
                Height = 13
                Caption = 'Contrase'#241'a'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 33
                Top = 2
                Width = 48
                Height = 13
                Caption = 'Autoriza'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EdtContraAutoriza: TEdit
                Left = 264
                Top = 22
                Width = 110
                Height = 21
                PasswordChar = '*'
                TabOrder = 0
                OnKeyDown = cxDBDateEdit1KeyDown
              end
              object BitBtn5: TBitBtn
                Tag = 3
                Left = 569
                Top = 18
                Width = 83
                Height = 25
                Caption = 'Aceptar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  555555555555555555555555555555555555555555FF55555555555559055555
                  55555555577FF5555555555599905555555555557777F5555555555599905555
                  555555557777FF5555555559999905555555555777777F555555559999990555
                  5555557777777FF5555557990599905555555777757777F55555790555599055
                  55557775555777FF5555555555599905555555555557777F5555555555559905
                  555555555555777FF5555555555559905555555555555777FF55555555555579
                  05555555555555777FF5555555555557905555555555555777FF555555555555
                  5990555555555555577755555555555555555555555555555555}
                NumGlyphs = 2
                TabOrder = 1
                OnClick = BtBtnAceptaProcesosClick
              end
              object DBLkupCmbBxAutoriza: TDBLookupComboBox
                Left = 34
                Top = 21
                Width = 222
                Height = 21
                DataField = 'PersonaAutoriza'
                DataSource = DataSource
                TabOrder = 2
                OnKeyDown = cxDBDateEdit1KeyDown
              end
              object BitBtn6: TBitBtn
                Tag = 3
                Left = 668
                Top = 18
                Width = 83
                Height = 25
                Caption = 'Cancelar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333333333333333333333333FFF33FF333FFF339993370733
                  999333777FF37FF377733339993000399933333777F777F77733333399970799
                  93333333777F7377733333333999399933333333377737773333333333990993
                  3333333333737F73333333333331013333333333333777FF3333333333910193
                  333333333337773FF3333333399000993333333337377737FF33333399900099
                  93333333773777377FF333399930003999333337773777F777FF339993370733
                  9993337773337333777333333333333333333333333333333333333333333333
                  3333333333333333333333333333333333333333333333333333}
                NumGlyphs = 2
                TabOrder = 3
                OnClick = BtBtnCancelaProcClick
              end
              object DBRdGrpGenerar: TDBRadioGroup
                Left = 390
                Top = 9
                Width = 92
                Height = 41
                Caption = 'Generar'
                DataField = 'IdGeneraCFDITipoDoc'
                DataSource = DataSource
                Items.Strings = (
                  'Factura'
                  'Nota Venta')
                TabOrder = 4
                Values.Strings = (
                  '1'
                  '4')
                OnClick = DBRdGrpGenerarClick
              end
              object DBChckBxAcumula: TDBCheckBox
                Left = 488
                Top = 26
                Width = 75
                Height = 17
                Caption = 'Acumula'
                DataField = 'Acumula'
                DataSource = DataSource
                TabOrder = 5
                Visible = False
              end
            end
            object PnlEmpaca: TPanel
              Left = 0
              Top = 242
              Width = 721
              Height = 47
              BevelOuter = bvNone
              TabOrder = 6
              Visible = False
              object Label14: TLabel
                Left = 320
                Top = 0
                Width = 65
                Height = 13
                Caption = 'Contrase'#241'a'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 32
                Top = 0
                Width = 44
                Height = 13
                Caption = 'Empaca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EdtContraseniaEm: TEdit
                Left = 320
                Top = 15
                Width = 153
                Height = 21
                PasswordChar = '*'
                TabOrder = 0
              end
              object BitBtn3: TBitBtn
                Tag = 4
                Left = 498
                Top = 15
                Width = 83
                Height = 25
                Caption = 'Aceptar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  555555555555555555555555555555555555555555FF55555555555559055555
                  55555555577FF5555555555599905555555555557777F5555555555599905555
                  555555557777FF5555555559999905555555555777777F555555559999990555
                  5555557777777FF5555557990599905555555777757777F55555790555599055
                  55557775555777FF5555555555599905555555555557777F5555555555559905
                  555555555555777FF5555555555559905555555555555777FF55555555555579
                  05555555555555777FF5555555555557905555555555555777FF555555555555
                  5990555555555555577755555555555555555555555555555555}
                NumGlyphs = 2
                TabOrder = 1
                OnClick = BtBtnAceptaProcesosClick
              end
              object DBLkupCmbBxEmpaca: TDBLookupComboBox
                Left = 31
                Top = 16
                Width = 283
                Height = 21
                DataField = 'PersonaEmpaca'
                DataSource = DataSource
                TabOrder = 2
                OnKeyDown = cxDBDateEdit1KeyDown
              end
              object BtBtnCancelaProc: TBitBtn
                Tag = 4
                Left = 597
                Top = 15
                Width = 83
                Height = 25
                Caption = 'Cancelar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333333333333333333333333FFF33FF333FFF339993370733
                  999333777FF37FF377733339993000399933333777F777F77733333399970799
                  93333333777F7377733333333999399933333333377737773333333333990993
                  3333333333737F73333333333331013333333333333777FF3333333333910193
                  333333333337773FF3333333399000993333333337377737FF33333399900099
                  93333333773777377FF333399930003999333337773777F777FF339993370733
                  9993337773337333777333333333333333333333333333333333333333333333
                  3333333333333333333333333333333333333333333333333333}
                NumGlyphs = 2
                TabOrder = 3
                OnClick = BtBtnCancelaProcClick
              end
            end
            object BtBtnRegresaEstado: TBitBtn
              Tag = 4
              Left = 500
              Top = 77
              Width = 156
              Height = 25
              Caption = 'Regresar Estado Anterior'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                3333333777333777FF33339993707399933333773337F3777FF3399933000339
                9933377333777F3377F3399333707333993337733337333337FF993333333333
                399377F33333F333377F993333303333399377F33337FF333373993333707333
                333377F333777F333333993333101333333377F333777F3FFFFF993333000399
                999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
                99933773FF777F3F777F339993707399999333773F373F77777F333999999999
                3393333777333777337333333999993333333333377777333333}
              NumGlyphs = 2
              TabOrder = 16
              OnClick = BtBtnRegresaEstadoClick
            end
            object cxDBDateEdit2: TcxDBDateEdit
              Left = 136
              Top = 34
              DataBinding.DataField = 'FechaRegistro'
              DataBinding.DataSource = DataSource
              Properties.ReadOnly = True
              TabOrder = 0
              OnKeyDown = cxDBDateEdit1KeyDown
              Width = 170
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = -368
              Top = 358
              Width = 34
              Height = 21
              DataField = 'Estatus'
              DataSource = DataSource
              TabOrder = 1
            end
            object PnlRecolecta: TPanel
              Left = -2
              Top = 61
              Width = 684
              Height = 50
              BevelOuter = bvNone
              TabOrder = 2
              Visible = False
              object Label11: TLabel
                Left = 320
                Top = 1
                Width = 65
                Height = 13
                Caption = 'Contrase'#241'a'
                FocusControl = DBLkupCmbBxRecolecta
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 32
                Top = -2
                Width = 56
                Height = 13
                Caption = 'Recolecta'
                FocusControl = DBLkupCmbBxRecolecta
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBLkupCmbBxRecolecta: TDBLookupComboBox
                Left = 34
                Top = 16
                Width = 281
                Height = 21
                DataField = 'PersonaRecolecta'
                DataSource = DataSource
                TabOrder = 0
                OnKeyDown = cxDBDateEdit1KeyDown
              end
              object EdtContraseniaRC: TEdit
                Left = 320
                Top = 16
                Width = 153
                Height = 21
                PasswordChar = '*'
                TabOrder = 1
              end
              object BtBtnAceptaRecoleccion: TBitBtn
                Tag = 1
                Left = 499
                Top = 17
                Width = 83
                Height = 25
                Caption = 'Aceptar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  555555555555555555555555555555555555555555FF55555555555559055555
                  55555555577FF5555555555599905555555555557777F5555555555599905555
                  555555557777FF5555555559999905555555555777777F555555559999990555
                  5555557777777FF5555557990599905555555777757777F55555790555599055
                  55557775555777FF5555555555599905555555555557777F5555555555559905
                  555555555555777FF5555555555559905555555555555777FF55555555555579
                  05555555555555777FF5555555555557905555555555555777FF555555555555
                  5990555555555555577755555555555555555555555555555555}
                NumGlyphs = 2
                TabOrder = 2
                OnClick = BtBtnAceptaProcesosClick
              end
              object BitBtn2: TBitBtn
                Tag = 1
                Left = 598
                Top = 17
                Width = 83
                Height = 25
                Caption = 'Cancelar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333333333333333333333333FFF33FF333FFF339993370733
                  999333777FF37FF377733339993000399933333777F777F77733333399970799
                  93333333777F7377733333333999399933333333377737773333333333990993
                  3333333333737F73333333333331013333333333333777FF3333333333910193
                  333333333337773FF3333333399000993333333337377737FF33333399900099
                  93333333773777377FF333399930003999333337773777F777FF339993370733
                  9993337773337333777333333333333333333333333333333333333333333333
                  3333333333333333333333333333333333333333333333333333}
                NumGlyphs = 2
                TabOrder = 3
                OnClick = BtBtnCancelaProcClick
              end
            end
            object BtBtnRecolecta: TBitBtn
              Tag = 1
              Left = 31
              Top = 77
              Width = 103
              Height = 25
              Caption = 'Recolectar'
              Glyph.Data = {
                66030000424D6603000000000000360000002800000010000000110000000100
                18000000000030030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F9F9F9BCBCBCC3C3C3FFFFFFFFFFFFFFFFFFF8F8F8B6B6B6CBCBCBFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B000000000000AAAAAADDDDDDCA
                CACA8A8A8A000000000000C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC
                000000BBBBBB8A8A8A000000000000000000000000FFFFFF8C8C8C000000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDB1B1B1000000000000D3D3D3F6F6F6F3
                F3F3B8B8B8000000000000D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFC8C8C8000000EDEDED000000000000E6E6E60000007F7F7FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B900000000000000000000000000
                0000000000000000000000EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                000000B2B2B2B7B7B7000000F0F0F0C8C8C86B6B6BD9D9D9000000C3C3C3FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA00000000000000000000000000000000
                0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2
                0000007676766262620000007E7E7E6D6D6E000000767676696969000000F6F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFB3B3B3000000FFFFFFC3C3C3000000FFFFFFDF
                DFDB000000FDFEFFFFFFFF000000C6C6C6FFFFFFFFFFFFFFFFFFFFFFFF000000
                000000000000000000000000000000000000000000000000000000000000E8A2
                00FFFFFFFEFEFFFEFDFFFFFFFFF5F5F5DADADAD0D1D0D1D1D1D7D5D8D6D5D5D7
                D9D2E0E2E1CFCFD7D3D0DE000000000000FEFEFDFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFF0000
                000000009CA295FBFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEBEAB6AFB1000000FAFCFEFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF}
              TabOrder = 3
              OnClick = BtBtnIniciarProceso
            end
            object PnlRevisa: TPanel
              Left = 0
              Top = 108
              Width = 684
              Height = 50
              BevelOuter = bvNone
              TabOrder = 4
              Visible = False
              object Label19: TLabel
                Left = 320
                Top = 2
                Width = 65
                Height = 13
                Caption = 'Contrase'#241'a'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label20: TLabel
                Left = 33
                Top = 2
                Width = 38
                Height = 13
                Caption = 'Revisa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EdtContraseniaRV: TEdit
                Left = 320
                Top = 16
                Width = 153
                Height = 21
                PasswordChar = '*'
                TabOrder = 0
              end
              object BitBtn1: TBitBtn
                Tag = 2
                Left = 498
                Top = 16
                Width = 83
                Height = 25
                Caption = 'Aceptar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  555555555555555555555555555555555555555555FF55555555555559055555
                  55555555577FF5555555555599905555555555557777F5555555555599905555
                  555555557777FF5555555559999905555555555777777F555555559999990555
                  5555557777777FF5555557990599905555555777757777F55555790555599055
                  55557775555777FF5555555555599905555555555557777F5555555555559905
                  555555555555777FF5555555555559905555555555555777FF55555555555579
                  05555555555555777FF5555555555557905555555555555777FF555555555555
                  5990555555555555577755555555555555555555555555555555}
                NumGlyphs = 2
                TabOrder = 1
                OnClick = BtBtnAceptaProcesosClick
              end
              object DBLkupCmbBxRevisa: TDBLookupComboBox
                Left = 34
                Top = 17
                Width = 281
                Height = 21
                DataField = 'PersonaRevisa'
                DataSource = DataSource
                TabOrder = 2
                OnKeyDown = cxDBDateEdit1KeyDown
              end
              object BitBtn4: TBitBtn
                Tag = 2
                Left = 597
                Top = 16
                Width = 83
                Height = 25
                Caption = 'Cancelar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333333333333333333333333FFF33FF333FFF339993370733
                  999333777FF37FF377733339993000399933333777F777F77733333399970799
                  93333333777F7377733333333999399933333333377737773333333333990993
                  3333333333737F73333333333331013333333333333777FF3333333333910193
                  333333333337773FF3333333399000993333333337377737FF33333399900099
                  93333333773777377FF333399930003999333337773777F777FF339993370733
                  9993337773337333777333333333333333333333333333333333333333333333
                  3333333333333333333333333333333333333333333333333333}
                NumGlyphs = 2
                TabOrder = 3
                OnClick = BtBtnCancelaProcClick
              end
            end
            object BtBtnRevisa: TBitBtn
              Tag = 2
              Left = 30
              Top = 124
              Width = 103
              Height = 25
              Caption = 'Revisar'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                000000000000000000AD8A730000000000000000000000000000000000000000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E7DBCE000000000000BD8E73F7
                FBF7F7E7E7DECBBDE7CBBDF7EFF7000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                000000F2F2F2E7E3DE0000000000000000000000000000000000000000000000
                00FFFBFFFFFFFFFFFFFFFFFFFFFFFFFF000000F2F2F2FDFDFDE7E3DE00000000
                0000D6A684D6A684D6A684000000000000DEBEA5FFFFFFFFFFFFFFFFFFFFFFFF
                000000F2F2F2FAFAFAE7DBCE000000C6865AF7EFE7FFFBFFFFFBFFF7E7DE0000
                00000000F7EFE7FFFFFFFFFFFFFFFFFF000000F2F2F2F8F8F8000000C68242E7
                C7A5F8F8F8F8F8F8F8F8F8F8F8F8D6B28C000000E7CBB5FFFFFFFFFFFFFFFFFF
                000000F2F2F2F7F7F7000000C68A42E7CBB5F8F8F8F8F8F8F8F8F8F8F8F8E7BA
                8C000000E7CBB5FFFFFFFFFFFFFFFFFF000000F2F2F2F5F5F5E7D3B5000000D6
                A66BF7FBF7F8F8F8F8F8F8F7F3F7000000000000F7E7DEFFFFFFFFFFFFFFFFFF
                000000F2F2F2F3F3F3F7FBF7000000000000D6AE6BE7D3B5E7D3B50000000000
                00D6B66BFFFBFFFFFFFFFFFFFFFFFFFF000000F2F2F2F2F2F2F2F2F2F7EFDEE7
                BE5A000000000000000000000000E7BE6BF7F3E7FFFFFFFFFFFFFFFFFFFFFFFF
                000000F2F2F2EEEEEEEEEEEEEEEEEEFFFBF7000000E7D78CE7D78CF7E7BD0000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F2F2F2EDEDEDEDEDEDEDEDEDED
                EDED000000FFFFFFEBEBEB000000ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                000000F2F2F2EBEBEBEBEBEBEBEBEBEBEBEB000000EBEBEB000000ECECECFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F2F2F2F2F2F2F2F2F2F2F2F2F2
                F2F2000000000000ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                000000000000000000000000000000000000000000ECECECFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 5
              OnClick = BtBtnIniciarProceso
            end
            object BtBtnEmpaca: TBitBtn
              Tag = 4
              Left = 31
              Top = 256
              Width = 99
              Height = 25
              Caption = 'Empacar'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
                0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF00000000000099FFFF0000000099CC00CCFF0000000000000000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000099FFFF99FFFF99FFFF00
                000000CCFF00CCFF00CCFF0099CC0099CC000000000000FFFFFFFFFFFFFFFFFF
                00000000CCFF00CCFF00CCFFFFFFFF00000000CCFF00CCFF00CCFF00CCFF00CC
                FF0099CC000000FFFFFFFFFFFFFFFFFF00000000CCFF00CCFF00CCFF99FFFF00
                000000CCFF00CCFF00CCFF00CCFF00CCFF0099CC000000FFFFFFFFFFFFFFFFFF
                00000000CCFF00CCFF00CCFF99FFFF00000000CCFF00CCFF00CCFF00CCFF00CC
                FF0099CC000000FFFFFFFFFFFFFFFFFF00000000CCFF00CCFF00CCFF00000000
                000000000000000000CCFF00CCFF00CCFF0099CC000000FFFFFFFFFFFFFFFFFF
                00000000CCFF0000000000000099CC0099CC0099CC0099CC0000000000000000
                000099CC000000FFFFFFFFFFFFFFFFFF0000000000000099CC0099CC0099CC00
                99CC0099CC0099CC0000000000000099CC000000000000FFFFFFFFFFFFFFFFFF
                0000000099CC0099CC0099CC0099CC0099CC0000000000000099CC0099CC0099
                CC0099CC000000FFFFFFFFFFFFFFFFFF0000000000000099CC0099CC00000000
                00000099CC0099CC0099CC0099CC0099CC000000000000FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0000000000000099CC0099CC0099CC0099CC0000000000000000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
                0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 7
              Visible = False
              OnClick = BtBtnIniciarProceso
            end
            object BtBtnFinRecolecta: TBitBtn
              Tag = 1
              Left = 342
              Top = 77
              Width = 129
              Height = 25
              Caption = 'Entregar a Revisi'#243'n'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                333333333337F33333333333333033333333333333373F333333333333090333
                33333333337F7F33333333333309033333333333337373F33333333330999033
                3333333337F337F33333333330999033333333333733373F3333333309999903
                333333337F33337F33333333099999033333333373333373F333333099999990
                33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333300033333333333337773333333}
              NumGlyphs = 2
              TabOrder = 8
              Visible = False
              OnClick = BtBtnFinGenProcesoClick
            end
            object BtBtnFinRevisa: TBitBtn
              Tag = 2
              Left = 341
              Top = 121
              Width = 134
              Height = 25
              Caption = 'Liberar para Autorizar'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                333333333337F33333333333333033333333333333373F333333333333090333
                33333333337F7F33333333333309033333333333337373F33333333330999033
                3333333337F337F33333333330999033333333333733373F3333333309999903
                333333337F33337F33333333099999033333333373333373F333333099999990
                33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333300033333333333337773333333}
              NumGlyphs = 2
              TabOrder = 9
              Visible = False
              OnClick = BtBtnFinGenProcesoClick
            end
            object BtBtnFinEmpaque: TBitBtn
              Tag = 4
              Left = 284
              Top = 256
              Width = 97
              Height = 25
              Caption = 'Fin empaque'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                333333333337F33333333333333033333333333333373F333333333333090333
                33333333337F7F33333333333309033333333333337373F33333333330999033
                3333333337F337F33333333330999033333333333733373F3333333309999903
                333333337F33337F33333333099999033333333373333373F333333099999990
                33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333309033333333333337F7F333333333333090333
                33333333337F7F33333333333300033333333333337773333333}
              NumGlyphs = 2
              TabOrder = 10
              Visible = False
              OnClick = BtBtnFinGenProcesoClick
            end
            object BtBtnAutoriza: TBitBtn
              Tag = 3
              Left = 32
              Top = 173
              Width = 99
              Height = 25
              Caption = 'Autorizar'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FF7FFFFF07333337F3FF33337F333330F767FFFF
                07333337FF77F3337F33333076667FFF07333337F7737F337F33333066F667FF
                07333FF7F33337F37FFFBBB06FFF667F0BB37777F333333F777F3BB0FFFFF667
                0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
                33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              TabOrder = 12
              OnClick = BtBtnIniciarProceso
            end
            object ChckBxDatosEnvios: TCheckBox
              Left = 32
              Top = 204
              Width = 140
              Height = 17
              Caption = 'Mostrar Datos de Envio'
              TabOrder = 15
              OnClick = ChckBxDatosEnviosClick
              OnKeyDown = cxDBDateEdit1KeyDown
            end
            object PnlRegresaEstado: TPanel
              Left = 321
              Top = 58
              Width = 769
              Height = 50
              BevelOuter = bvNone
              TabOrder = 17
              Visible = False
              object Label27: TLabel
                Left = 262
                Top = 3
                Width = 65
                Height = 13
                Caption = 'Contrase'#241'a'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label28: TLabel
                Left = 33
                Top = 2
                Width = 50
                Height = 13
                Caption = 'Regresa '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EdtContraRev: TEdit
                Left = 262
                Top = 22
                Width = 110
                Height = 21
                PasswordChar = '*'
                TabOrder = 0
                OnKeyDown = cxDBDateEdit1KeyDown
              end
              object BtBtnAceptaReg: TBitBtn
                Tag = 3
                Left = 413
                Top = 15
                Width = 83
                Height = 25
                Caption = 'Aceptar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  555555555555555555555555555555555555555555FF55555555555559055555
                  55555555577FF5555555555599905555555555557777F5555555555599905555
                  555555557777FF5555555559999905555555555777777F555555559999990555
                  5555557777777FF5555557990599905555555777757777F55555790555599055
                  55557775555777FF5555555555599905555555555557777F5555555555559905
                  555555555555777FF5555555555559905555555555555777FF55555555555579
                  05555555555555777FF5555555555557905555555555555777FF555555555555
                  5990555555555555577755555555555555555555555555555555}
                NumGlyphs = 2
                TabOrder = 1
                OnClick = BtBtnAceptaRegClick
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 34
                Top = 21
                Width = 222
                Height = 21
                DataField = 'PersonaCambio'
                DataSource = DsCambiosREgreso
                TabOrder = 2
                OnKeyDown = cxDBDateEdit1KeyDown
              end
              object BitBtn9: TBitBtn
                Tag = 3
                Left = 502
                Top = 15
                Width = 83
                Height = 25
                Caption = 'Cancelar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333333333333333333333333FFF33FF333FFF339993370733
                  999333777FF37FF377733339993000399933333777F777F77733333399970799
                  93333333777F7377733333333999399933333333377737773333333333990993
                  3333333333737F73333333333331013333333333333777FF3333333333910193
                  333333333337773FF3333333399000993333333337377737FF33333399900099
                  93333333773777377FF333399930003999333337773777F777FF339993370733
                  9993337773337333777333333333333333333333333333333333333333333333
                  3333333333333333333333333333333333333333333333333333}
                NumGlyphs = 2
                TabOrder = 3
                OnClick = BitBtn9Click
              end
            end
            object BtBtnEnviar: TBitBtn
              Tag = 5
              Left = 31
              Top = 365
              Width = 99
              Height = 25
              Caption = 'Enviar'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B7313140313140B1B1B7FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFB1B1B7313140313140B1B1B7FFFFFFFFFFFF30303F
                777777BBBBBB30303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30303F7777
                77BBBBBB30303FFFFFFF7676761212237777777777771212239191916B6B6B68
                68686666666262628787871212237777777777771212235656565555550099DD
                31465D31465D32649976A9D974A7D878ABDB78ABDB7AADDE7CAFE06487AE3D43
                593D4359698BB13D71A5338ED232CBFF29C2FF29C2FF337DC177AADA71A4D674
                A7D977AADB79ACDE7CAFE07DB0E17DB0E17DB0E185B8E65086BAA89472CDBA98
                98B0A52FC8FF3381C67DB0DF77AADB79ACDD7DB0E180B3E482B5E582B5E582B5
                E582B5E58BBEEB598EC3A38B69D5BB99B19A7835CEFF3387CB86B9E67DB0E081
                B4E385B8E787BAE987BAE987BAE987BAE987BAE991C4EF5F94C89E815ECEAD8B
                A587653BD4FF338CD18EC1EC85B8E689BCEA4477AA8CBFEC4477AA8CBFEC8CBF
                EC8CBFEC97CAF36499CD9A78569B7A589B7A5840D9FF3391D597CAF38FC2EE91
                C4F05588BB4477AA5588BB4073A691C4F091C4F09BCEF6689DD133B6FA51EAFF
                4CE5FF4CE5FF3395D99DD0F895C8F395C8F35588BB5588BB5588BB4D80B395C8
                F395C8F39FD2F96DA1D566CBFE33BAFE33BAFE33BAFE3398DDAADDFFAADDFFAA
                DDFF77AADD77AADD77AADD6699CCAADDFFAADDFFAADDFF70A4D8FFFFFFFFFFFF
                FFFFFFFFFFFF98BADD6FA7DF88BBEE88BBEE4477AA4477AA4477AA4073A688BB
                EE88BBEE6FA7DF98BADDFFFFFFFFFFFFFFFFFFFFFFFFEDF4FA76A9DD76A9DD76
                A9DD33669933669933669933669976A9DD76A9DD76A9DDEDF4FAFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 18
              Visible = False
              OnClick = BtBtnIniciarProceso
            end
            object PnlInformacionEntrega: TPanel
              Left = 342
              Top = 164
              Width = 868
              Height = 225
              BevelOuter = bvNone
              TabOrder = 13
              Visible = False
              object Label2: TLabel
                Left = 23
                Top = 5
                Width = 113
                Height = 13
                Caption = 'Programaci'#243'n entrega: '
              end
              object Label5: TLabel
                Left = 312
                Top = 5
                Width = 87
                Height = 13
                Caption = 'Condicion Entrega'
                FocusControl = cxDBTextEdit2
              end
              object Label6: TLabel
                Left = 21
                Top = 182
                Width = 71
                Height = 13
                Caption = 'Observaciones'
                FocusControl = cxDBTextEdit3
              end
              object Label7: TLabel
                Left = 160
                Top = 5
                Width = 42
                Height = 13
                Caption = 'Tel'#233'fono'
              end
              object Label9: TLabel
                Left = 21
                Top = 136
                Width = 24
                Height = 13
                Caption = 'Valor'
              end
              object Label8: TLabel
                Left = 312
                Top = 53
                Width = 46
                Height = 13
                Caption = 'Conducto'
                FocusControl = cxDBTextEdit1
              end
              object Label21: TLabel
                Left = 23
                Top = 52
                Width = 49
                Height = 13
                Caption = 'Contenido'
                FocusControl = cxDBTextEdit4
              end
              object Label25: TLabel
                Left = 156
                Top = 137
                Width = 54
                Height = 13
                Caption = 'Total Cajas'
                FocusControl = cxDBTextEdit6
              end
              object Label26: TLabel
                Left = 370
                Top = 137
                Width = 42
                Height = 13
                Caption = 'Doc Guia'
              end
              object Label30: TLabel
                Left = 23
                Top = 93
                Width = 69
                Height = 13
                Caption = 'Domicilio Envio'
                FocusControl = DBLookupComboBox1
              end
              object cxDBTextEdit2: TcxDBTextEdit
                Tag = 50
                Left = 309
                Top = 24
                DataBinding.DataField = 'CondicionEntrega'
                DataBinding.DataSource = DSInformacionEntrega
                TabOrder = 2
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 287
              end
              object cxDBTextEdit3: TcxDBTextEdit
                Tag = 50
                Left = 21
                Top = 201
                DataBinding.DataField = 'Observaciones'
                DataBinding.DataSource = DSInformacionEntrega
                TabOrder = 7
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 486
              end
              object cxDBCheckBox1: TcxDBCheckBox
                Tag = 50
                Left = 271
                Top = 138
                Caption = 'Flete Pagado'
                DataBinding.DataField = 'PagoFlete'
                DataBinding.DataSource = DSInformacionEntrega
                TabOrder = 6
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 88
              end
              object cxDBCheckBox2: TcxDBCheckBox
                Tag = 50
                Left = 271
                Top = 163
                Caption = 'Asegurado'
                DataBinding.DataField = 'Asegurado'
                DataBinding.DataSource = DSInformacionEntrega
                TabOrder = 10
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 87
              end
              object cxDBTextEdit5: TcxDBTextEdit
                Tag = 50
                Left = 21
                Top = 155
                DataBinding.DataField = 'Valor'
                DataBinding.DataSource = DSInformacionEntrega
                TabOrder = 9
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 129
              end
              object cxDBDateEdit1: TcxDBDateEdit
                Tag = 50
                Left = 23
                Top = 24
                DataBinding.DataField = 'FechaProgramadaEnt'
                DataBinding.DataSource = DSInformacionEntrega
                TabOrder = 0
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 127
              end
              object cxDBTextEdit1: TcxDBTextEdit
                Left = 312
                Top = 70
                DataBinding.DataField = 'Conducto'
                DataBinding.DataSource = DSInformacionEntrega
                TabOrder = 3
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 197
              end
              object cxDBTextEdit4: TcxDBTextEdit
                Tag = 50
                Left = 23
                Top = 71
                DataBinding.DataField = 'Contenido'
                DataBinding.DataSource = DSInformacionEntrega
                TabOrder = 4
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 278
              end
              object cxDBRadioGroup1: TcxDBRadioGroup
                Tag = 50
                Left = 516
                Top = 45
                TabStop = False
                Caption = 'Servicio'
                DataBinding.DataField = 'Servicio'
                DataBinding.DataSource = DSInformacionEntrega
                Properties.Items = <
                  item
                    Caption = 'Ocurre'
                    Value = 'Ocurre'
                  end
                  item
                    Caption = 'Domicilio'
                    Value = 'Domicilio'
                  end>
                TabOrder = 5
                Height = 57
                Width = 78
              end
              object BtBtnAceptaInfoEnt: TBitBtn
                Tag = 20
                Left = 595
                Top = 189
                Width = 84
                Height = 24
                Caption = 'Aceptar'
                Enabled = False
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  555555555555555555555555555555555555555555FF55555555555559055555
                  55555555577FF5555555555599905555555555557777F5555555555599905555
                  555555557777FF5555555559999905555555555777777F555555559999990555
                  5555557777777FF5555557990599905555555777757777F55555790555599055
                  55557775555777FF5555555555599905555555555557777F5555555555559905
                  555555555555777FF5555555555559905555555555555777FF55555555555579
                  05555555555555777FF5555555555557905555555555555777FF555555555555
                  5990555555555555577755555555555555555555555555555555}
                NumGlyphs = 2
                TabOrder = 11
                OnClick = BtBtnAceptaInfoEntClick
              end
              object BtBtnCancelaInfoEnt: TBitBtn
                Tag = 22
                Left = 690
                Top = 188
                Width = 85
                Height = 25
                Caption = 'Cancelar'
                Enabled = False
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333333333333333333333333FFF33FF333FFF339993370733
                  999333777FF37FF377733339993000399933333777F777F77733333399970799
                  93333333777F7377733333333999399933333333377737773333333333990993
                  3333333333737F73333333333331013333333333333777FF3333333333910193
                  333333333337773FF3333333399000993333333337377737FF33333399900099
                  93333333773777377FF333399930003999333337773777F777FF339993370733
                  9993337773337333777333333333333333333333333333333333333333333333
                  3333333333333333333333333333333333333333333333333333}
                NumGlyphs = 2
                TabOrder = 12
                OnClick = BtBtnCancelaInfoEntClick
              end
              object BtBtnImprimeEtiqueta: TBitBtn
                Tag = 22
                Left = 659
                Top = 54
                Width = 116
                Height = 25
                Caption = 'Imprime Etiqueta'
                Enabled = False
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
                  0003377777777777777308888888888888807F33333333333337088888888888
                  88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
                  8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
                  8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
                  03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
                  03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
                  33333337FFFF7733333333300000033333333337777773333333}
                NumGlyphs = 2
                TabOrder = 13
                OnClick = BtBtnImprimeEtiquetaClick
              end
              object BtBtnAdjGuia: TBitBtn
                Tag = 50
                Left = 511
                Top = 149
                Width = 96
                Height = 25
                Caption = 'Adjuntar Gu'#237'a'
                Enabled = False
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
                  333333333333337FF3333333333333903333333333333377FF33333333333399
                  03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
                  99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
                  99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
                  03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
                  33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
                  33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
                  3333777777333333333333333333333333333333333333333333}
                NumGlyphs = 2
                TabOrder = 14
              end
              object cxDBTextEdit6: TcxDBTextEdit
                Tag = 50
                Left = 156
                Top = 155
                DataBinding.DataField = 'CantidadCajas'
                DataBinding.DataSource = DSInformacionEntrega
                TabOrder = 8
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 96
              end
              object cxDBLabel1: TcxDBLabel
                Left = 368
                Top = 154
                DataBinding.DataField = 'DocGuia'
                DataBinding.DataSource = DSInformacionEntrega
                PopupMenu = PppMnEnviar
                Height = 22
                Width = 137
              end
              object cmbTelefono: TcxDBLookupComboBox
                Tag = 50
                Left = 160
                Top = 24
                DataBinding.DataField = 'TelefonoCompleto'
                DataBinding.DataSource = DSInformacionEntrega
                Properties.KeyFieldNames = 'IdTelefono'
                Properties.ListColumns = <
                  item
                    FieldName = 'TeleconLada'
                  end
                  item
                    FieldName = 'Descripcion'
                  end>
                TabOrder = 1
                OnKeyDown = cxDBDateEdit1KeyDown
                Width = 141
              end
              object BtBtnOrdenEmbarque: TBitBtn
                Tag = 22
                Left = 623
                Top = 23
                Width = 152
                Height = 25
                Caption = 'Imprime Orden Embarque'
                Enabled = False
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                  FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                  00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                  F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                  00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                  F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                  3333777777777777333333399033333333333337773333333333333903333333
                  3333333773333333333333303333333333333337333333333333}
                NumGlyphs = 2
                TabOrder = 16
                OnClick = BtBtnOrdenEmbarqueClick
              end
              object DBLkupCmbBxPaqueteria: TDBLookupComboBox
                Tag = 50
                Left = 312
                Top = 70
                Width = 197
                Height = 21
                DataField = 'Paqueteria'
                DataSource = DSInformacionEntrega
                TabOrder = 17
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Tag = 50
                Left = 21
                Top = 109
                Width = 572
                Height = 21
                DataField = 'IDPersonaDomicilio'
                DataSource = DSInformacionEntrega
                KeyField = 'IdPersonaDomicilio'
                ListField = 'DirEnviocompleta'
                ListSource = DSDireccionenvios
                TabOrder = 18
              end
            end
            object PnlSalidasUbicacion: TPanel
              Left = 312
              Top = 58
              Width = 631
              Height = 249
              TabOrder = 14
              Visible = False
              object Label22: TLabel
                Left = 22
                Top = 12
                Width = 184
                Height = 13
                Caption = 'Ubicaci'#243'n de Salida por Producto'
                FocusControl = DBLookupComboBox5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BitBtn8: TBitBtn
                Tag = 12
                Left = 525
                Top = 193
                Width = 83
                Height = 25
                Caption = 'Cancelar'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  333333333333333333333333333333333333333FFF33FF333FFF339993370733
                  999333777FF37FF377733339993000399933333777F777F77733333399970799
                  93333333777F7377733333333999399933333333377737773333333333990993
                  3333333333737F73333333333331013333333333333777FF3333333333910193
                  333333333337773FF3333333399000993333333337377737FF33333399900099
                  93333333773777377FF333399930003999333337773777F777FF339993370733
                  9993337773337333777333333333333333333333333333333333333333333333
                  3333333333333333333333333333333333333333333333333333}
                NumGlyphs = 2
                TabOrder = 1
                Visible = False
                OnClick = BtBtnFinGenProcesoClick
              end
              object BtBtnAcepta: TBitBtn
                Tag = 10
                Left = 444
                Top = 194
                Width = 165
                Height = 25
                Caption = 'Aceptar Ubicaciones'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  555555555555555555555555555555555555555555FF55555555555559055555
                  55555555577FF5555555555599905555555555557777F5555555555599905555
                  555555557777FF5555555559999905555555555777777F555555559999990555
                  5555557777777FF5555557990599905555555777757777F55555790555599055
                  55557775555777FF5555555555599905555555555557777F5555555555559905
                  555555555555777FF5555555555559905555555555555777FF55555555555579
                  05555555555555777FF5555555555557905555555555555777FF555555555555
                  5990555555555555577755555555555555555555555555555555}
                NumGlyphs = 2
                TabOrder = 0
                OnClick = BtBtnFinGenProcesoClick
              end
              object DBGrid1: TDBGrid
                Left = 21
                Top = 31
                Width = 590
                Height = 159
                DataSource = DSSalidasUbicaciones
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnCellClick = DBGrid1CellClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'IdProducto'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'Producto'
                    Width = 187
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EspacioA'
                    Title.Caption = 'Espacio'
                    Width = 208
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Disponible'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'Cantidad'
                    Visible = True
                  end>
              end
              object DBNavigator1: TDBNavigator
                Left = 48
                Top = 194
                Width = 220
                Height = 25
                DataSource = DSSalidasUbicaciones
                VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
                TabOrder = 3
              end
              object BtBtnCancela: TBitBtn
                Tag = 10
                Left = 316
                Top = 194
                Width = 122
                Height = 25
                Caption = 'Cancelar'
                Kind = bkCancel
                NumGlyphs = 2
                TabOrder = 4
                OnClick = BtBtnCancelaClick
              end
            end
          end
          object PnlDetalle: TPanel
            Left = 0
            Top = 416
            Width = 1263
            Height = 138
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object ToolBar2: TToolBar
              Left = 0
              Top = 0
              Width = 1263
              Height = 29
              Images = ilAction
              TabOrder = 0
              object ToolButton31: TToolButton
                Left = 0
                Top = 0
                Action = DatasetInsert1
                Visible = False
              end
              object ToolButton32: TToolButton
                Left = 23
                Top = 0
                Width = 8
                Caption = 'ToolButton2'
                ImageIndex = 1
                Style = tbsSeparator
              end
              object ToolButton33: TToolButton
                Left = 31
                Top = 0
                Action = DatasetDelete1
                OnClick = ToolButton33Click
              end
              object ToolButton34: TToolButton
                Left = 54
                Top = 0
                Width = 8
                Caption = 'ToolButton3'
                ImageIndex = 10
                Style = tbsSeparator
              end
              object ToolButton35: TToolButton
                Left = 62
                Top = 0
                Action = DatasetEdit1
              end
              object ToolButton36: TToolButton
                Left = 85
                Top = 0
                Width = 8
                Caption = 'ToolButton4'
                ImageIndex = 2
                Style = tbsSeparator
              end
              object ToolButton37: TToolButton
                Left = 93
                Top = 0
                Action = DatasetFirst1
              end
              object ToolButton38: TToolButton
                Left = 116
                Top = 0
                Action = DatasetPrior1
              end
              object ToolButton39: TToolButton
                Left = 139
                Top = 0
                Action = DatasetNext1
              end
              object ToolButton40: TToolButton
                Left = 162
                Top = 0
                Action = DatasetLast1
              end
              object ToolButton41: TToolButton
                Left = 185
                Top = 0
                Action = DatasetPost1
              end
              object ToolButton42: TToolButton
                Left = 208
                Top = 0
                Action = DatasetCancel1
              end
            end
            object DBGrid2: TDBGrid
              Left = 0
              Top = 29
              Width = 1263
              Height = 109
              Align = alClient
              DataSource = DtSrcOrdenSalItem
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'IdOrdenSalidaItem'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'IdOrdenSalida'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'IdDocumentoSalidaDetalle'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'IdProducto'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'Producto'
                  Width = 273
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CantidadSolicitada'
                  Title.Caption = 'Cantidad Solicitada'
                  Width = 104
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CantidadDespachada'
                  Title.Caption = 'Cantidad Despachada'
                  Width = 113
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Precio'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Importe'
                  Width = 114
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Observaciones'
                  Width = 184
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object PnlTitulo: TPanel [8]
    Left = 0
    Top = 0
    Width = 1267
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    Ordenes de Salida'
    Color = 5553385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  inherited DataSource: TDataSource
    DataSet = DMOrdenesSalidas.adodsMaster
    OnDataChange = DataSourceDataChange
  end
  inherited ilPageControl: TImageList
    Bitmap = {
      494C010102000400FC0110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C96A5008C8E8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFF7F700FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFE7E700FFE7
      E700FFDFDE00FFDFDE00FFD7AD0000000000FF9E0000FFF7F700FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFE7E700FFEF
      EF002979FF006BD7FF00ADAEAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFDFDE00FFDF
      DE00FFD7D600FFD7D600FFDFDE0000000000FF9E0000FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700EFDFDE003179
      FF006BD7FF00398EFF00EFDFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFDF
      DE00FFDFDE00FFD7D600FFDFDE0000000000FF9E0000FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700F7EFEF008C8E8C0084868C00ADA6AD008C8E8C007BA6
      B500398EFF00F7DFE700FFDFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFF7F700FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFE7E700FFE7
      E700FFDFDE00FFDFDE00FFDFDE0000000000FF9E0000FFF7F700FFFFFF00FFFF
      FF00FFFFFF00DEDFDE00E7C79400F7CF9400F7CF9C00F7CF8C0063616B009496
      9400EFDFE700FFDFDE00FFDFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7E700FFE7
      E700FFDFDE00FFDFDE00FFDFDE0000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5A69400F7D7A500F7D7A500F7D79C00EFCF8C00F7CF9400C6B6
      BD00FFDFDE00FFDFDE00FFDFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFEFEF00FFE7
      E700FFDFDE00FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7DFAD00F7E7BD00F7E7C600F7DFAD00F7D79C00F7D7A5008C8E
      9400FFDFDE00FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DECFAD00FFF7DE00FFF7E700F7EFC600F7DFAD00F7D7A5009C96
      9C00FFE7E700FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5A6AD00FFFFEF00FFFFEF00FFEFCE00F7DFAD00E7CF9C00FFEF
      EF00FFE7E700FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A5A6A500E7DFBD00FFEFBD00B5A69400E7D7DE00FFE7
      E700FFE7E700FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E000000000000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000EF860000EF860000EF86
      0000EF860000EF860000EF860000EF860000EF860000EF860000EF860000EF86
      0000EF860000EF860000F796000000000000FF9E0000EF860000EF860000EF86
      0000EF860000EF860000EF860000EF860000EF860000EF860000EF860000EF86
      0000EF860000EF860000F7960000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E00000000000000000000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFF900000000
      0001000100000000000100010000000000010001000000000001000100000000
      0001000100000000000100010000000000010001000000000001000100000000
      0001000100000000000100010000000000010001000000000001000100000000
      8001800100000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  inherited ActionList: TActionList
    object DatasetFirst1: TDataSetFirst
      Category = 'DatasetDetalle'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 12
      DataSource = DtSrcOrdenSalItem
    end
    object DatasetPrior1: TDataSetPrior
      Category = 'DatasetDetalle'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 13
      DataSource = DtSrcOrdenSalItem
    end
    object DatasetNext1: TDataSetNext
      Category = 'DatasetDetalle'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 14
      DataSource = DtSrcOrdenSalItem
    end
    object DatasetLast1: TDataSetLast
      Category = 'DatasetDetalle'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 15
      DataSource = DtSrcOrdenSalItem
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'DatasetDetalle'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 16
      DataSource = DtSrcOrdenSalItem
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'DatasetDetalle'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 17
      DataSource = DtSrcOrdenSalItem
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'DatasetDetalle'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 18
      DataSource = DtSrcOrdenSalItem
    end
    object DatasetPost1: TDataSetPost
      Category = 'DatasetDetalle'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 19
      DataSource = DtSrcOrdenSalItem
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'DatasetDetalle'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 20
      DataSource = DtSrcOrdenSalItem
    end
    object DatasetRefresh1: TDataSetRefresh
      Category = 'DatasetDetalle'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 21
      DataSource = DtSrcOrdenSalItem
    end
    object actActualizaKardex: TAction
      Caption = 'actActualizaKardex'
    end
  end
  inherited ilAction: TImageList
    Bitmap = {
      494C01011800C002380210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007000000001002000000000000070
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005000000130000
      001A0000001B0000001C0000001D0000001E0000001F00000021000000220000
      0023000000240000001D00000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000011BC7B49FFBB7A
      48FFBA7845FFB87745FFB87543FFB77442FFB67340FFB5723FFFB4703DFFB36F
      3CFFB36E3BFFB16D3AFF0000001C000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000014BE834DFFF9ED
      E0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8DAFFF7E8D9FFF7E7
      D8FFF7E7D7FFB4703DFF000000230000000000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008080800080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000012C18752FFFCF1
      E6FFBEB2A5FF836C5BFF97816AFFD7C6B5FFFAEDE0FFFAEDE0FFF9ECDEFFF9EB
      DDFFF9EBDDFFB67340FF000000210000000000000000FFFFFF00FFFFFF00FFFF
      FF00808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000010C48A56FFFEF4
      EBFF62554AFFF8F8F8FFF8F8F8FF9A846EFFFCF1E6FF747372FF6F6E6DFF6A69
      69FFFBEEE1FFB87744FF0000001F0000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000FC78F5AFFFFF9
      F2FF584D45FFF8F8F8FFF8F8F8FF897361FFFEF5ECFFFEF5EAFFFEF3E9FFFDF3
      E8FFFCEFE3FFBB7A47FF0000001D0000000000000000FFFFFF00FFFFFF00FFFF
      FF00808080000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600000000008686860000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000DCA935EFFFFFA
      F4FFB3ACA6FF594F46FF67594EFFC4B9AFFFFFF8F0FFFFF7EFFFFFF6EEFFFDF3
      E9FFFBEFE3FFBE814BFF0000001B0000000000000000FFFFFF00808080000000
      000080808000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000BCD9663FFFFFA
      F6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9F1FFFEF5ECFFFCF1
      E6FFFAEDE0FFC18550FF0000001A00000000000000000000000080808000FFFF
      0000FFFF0000FFFF000000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000ACF9B68FFFFFB
      F6FFC6BCB3FF937A69FFA99179FFE2D4C8FFFFF9F3FFFEF7F0FFFCF2E8FFFAED
      E1FFF7E8D9FFC38954FF00000018000000000000000080808000808080008080
      8000808080008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000008D29F6CFFFFFC
      F8FF685B50FFF8F8F8FFF8F8F8FFAB937BFFFEF7F1FF878583FF82807AFF7776
      74FFF5E2D1FFC78D58FF0000001600000000000000000000000080808000FFFF
      0000FFFF0000FFFF000000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600000000000000000086868600000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000007D5A371FFFFFD
      FAFF584F48FFF8F8F8FFF8F8F8FF95806AFFFCF4ECFFFAEFE4FFF6E7DAFFF4E1
      D0FFF0DAC6FFC9915DFF00000014000000000000000000000000808080000000
      000080808000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000006D9A776FFFFFD
      FBFFB1AEABFF595048FF695B50FFC5B9AFFFFAF0E7FFF7EBDFFFD09A67FFCF98
      65FFCE9764FFCC9561FF0000000D000000000000000000000000000000000000
      0000808080000000000000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000005DBAB7BFFFFFE
      FDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6D8FFD29E6BFFFFFC
      F9FF757472DC0000002A00000004000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003DDAF83FFFFFE
      FCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0D0FFD5A270FF7470
      70DB000000260000000400000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002E0B387FFDFB1
      85FFDFB083FFDDAE82FFDCAD80FFDBAB7BFFDAAA79FFD8A877FFD8A675FF0000
      0024000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      0003000000030000000400000005000000050000000600000007000000060000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000868686000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000868686008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000868686000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F906F9F9
      F906F8F8F807F8F8F807F9F9F906F9F9F906F8F8F807F8F8F807F9F9F906F8F8
      F807F8F8F807F9F9F90600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC339B9B9B648B8B
      8B749D9D9D62A6A6A659989898678E8E8E71A5A5A55AA4A4A45B898989769F9F
      9F60A5A5A55A9C9C9C63CDCDCD32000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000008486840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000000000000000000000000000000000C6C7C6000000
      00000086840000000000000000000000000000000000B1B1B14EBABABA459292
      926DC4C4C43BDBDBDB24B7B7B7489B9B9B64DBDBDB24D7D7D7288D8D8D72CACA
      CA35DBDBDB24B9B9B946B1B1B14E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000000000000000000000000000000000C6C7C6000000
      00000086840000000000000000000000000000000000AEAEAE519C9C9C637C7C
      7C83A5A5A55AB8B8B8479A9A9A658383837CB7B7B748B4B4B44B77777788AAAA
      AA55B7B7B7489C9C9C63AEAEAE51000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000000000000000000000000000000000000000000000
      00000086840000000000000000000000000000000000B0B0B04FABABAB548888
      8877B4B4B44BC9C9C936A8A8A8578F8F8F70C9C9C936C5C5C53A8282827DBABA
      BA45C9C9C936ABABAB54B0B0B04F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008486
      8400000000008486840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000868400008684000086840000868400008684000086
      84000086840000000000000000000000000000000000B0B0B04FB1B1B14E8C8C
      8C73BBBBBB44D0D0D02FAEAEAE519494946BD0D0D02FCCCCCC3387878778C1C1
      C13ED0D0D02FB1B1B14EB0B0B04F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000000000000000000000000000000000000000000086
      84000086840000000000000000000000000000000000AEAEAE519D9D9D627C7C
      7C83A5A5A55AB9B9B9469A9A9A658383837CB8B8B847B5B5B54A78787887ABAB
      AB54B8B8B8479C9C9C63AEAEAE51000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000086840000000000C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6000000
      00000086840000000000000000000000000000000000B2B2B24DC2C2C23D9999
      9966CBCBCB34E3E3E31CBEBEBE41A2A2A25DE3E3E31CDFDFDF209393936CD2D2
      D22DE3E3E31CC1C1C13EB2B2B24D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008486840000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000086840000000000C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6000000
      00000086840000000000000000000000000000000000ADADAD52989898677878
      7887A0A0A05FB3B3B34C969696697E7E7E81B0B0B04FADADAD527373738CA5A5
      A55AB2B2B24D98989867ADADAD52000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008486
      8400000000000000000084868400000000008486840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000086840000000000C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6000000
      00000000000000000000000000000000000000000000B3B3B34CC8C8C8379D9D
      9D62CFCFCF30E7E7E718C4C4C43B6B6B6B944A4A4AB5515151AE79797986D7D7
      D728E6E6E619C4C4C43BB3B3B34C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      00000086840000000000C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6000000
      0000C6C7C60000000000000000000000000000000000A7A7A7586363639C5858
      58A79B9B9B64ADADAD529191916E6464649B6D6D6D926F6F6F906464649BA0A0
      A05FACACAC539292926DADADAD52000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008486840000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999966000000FF2222
      22DDD4D4D42BE9E9E916C2C2C23DA6A6A659ECECEC13E8E8E81796969669D7D7
      D728E8E8E817C5C5C53AB2B2B24D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C43B555555AA6161
      619E9F9F9F60A7A7A758999999668F8F8F70A7A7A758A5A5A55A8A8A8A75A1A1
      A15EA7A7A7589D9D9D62CDCDCD32000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD02FBFB
      FB04F8F8F807F8F8F807F9F9F906F9F9F906F8F8F807F8F8F807F9F9F906F8F8
      F807F8F8F807F9F9F90600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008486840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008486840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848684000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008486840000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684008486840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848684008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008486840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848684000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008486840000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008486840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000700000000100010000000000800300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF80018000FFFFFFFF80010000
      FFFFFFFF80010000FFFFFC7F80010000F3E7F0FF80010000F1C7F1FF80010000
      F88FE3FF80010000FC1FE7FF80010000FE3FE70780010000FC1FE38780018000
      F88FE1078001C000F1C7F0078001F000F3E7F8378001FC00FFFFFFFF8003FC01
      FFFFFFFF8007FC03FFFFFFFFC00FFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFBFFFC7FFFFFFFFFF1FF
      FC7FFFFFE007E0FFE00FE007F00FC47FE00FE007F81FCE3FE00FE007FC3FFF1F
      FC7FFFFFFE7FFF8FFC7FFFFFFFFFFFC7FC7FFFFFFFFFFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7FF9FF9FFE7E7
      E787FE1FF87FE1E7E607F81FF81FE067E007F01FF80FE007E607F81FF81FE067
      E787FE1FF87FE1E7E7E7FF9FF9FFE7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFFFFFFFFFFFFBFFFC003
      FFFFFFFFF0038001FFFFFC7FE0038001F3E7F0FFE0038001F1C7F1FFE0038001
      F88FE3FFE0038001FC1FE7FF20038001FE3FE707E0028001FC1FE387E0038001
      F88FE107E0038001F1C7F007E0038001F3E7F837E0038001FFFFFFFFFFFF8001
      FFFFFFFFBF7DC003FFFFFFFF7F7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFBFFFC7FFFFFFFFFF1FF
      FC7FFFFFE007E0FFE00FE007F00FC47FE00FE007F81FCE3FE00FE007FC3FFF1F
      FC7FFFFFFE7FFF8FFC7FFFFFFFFFFFC7FC7FFFFFFFFFFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7FF9FF9FFE7E7
      E787FE1FF87FE1E7E607F81FF81FE067E007F01FF80FE007E607F81FF81FE067
      E787FE1FF87FE1E7E7E7FF9FF9FFE7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  object DtSrcOrdenSalItem: TDataSource
    AutoEdit = False
    DataSet = DMOrdenesSalidas.ADODtStOrdenSalidaItem
    Left = 842
    Top = 32
  end
  object DSInformacionEntrega: TDataSource
    DataSet = DMOrdenesSalidas.ADODtStInformacionEnvio
    OnStateChange = DSInformacionEntregaStateChange
    Left = 988
    Top = 128
  end
  object DSSalidasUbicaciones: TDataSource
    DataSet = DMOrdenesSalidas.ADODtStSalidasUbicaciones
    OnUpdateData = DSSalidasUbicacionesUpdateData
    Left = 716
    Top = 192
  end
  object DSQryAuxiliar: TDataSource
    DataSet = DMOrdenesSalidas.ADOQryAuxiliar
    Left = 1100
    Top = 136
  end
  object DSProductosXEspacio: TDataSource
    DataSet = DMOrdenesSalidas.ADODtStProductosXEspacio
    Left = 788
    Top = 128
  end
  object DSInsertaKardex: TDataSource
    DataSet = DMOrdenesSalidas.ADOQryInsertaProductoKardex
    Left = 884
    Top = 128
  end
  object PppMnEnviar: TPopupMenu
    Left = 971
    Top = 346
    object EnviarCorreoGuia: TMenuItem
      Tag = 200
      Caption = 'Enviar Gu'#237'a'
    end
  end
  object DsCambiosREgreso: TDataSource
    DataSet = DMOrdenesSalidas.ADODtStCambioEstadoInv
    Left = 1108
    Top = 184
  end
  object dsInfoEntregaDetalle: TDataSource
    DataSet = DMOrdenesSalidas.AdoDtStInfoEntregaDetalle
    OnStateChange = DSInformacionEntregaStateChange
    Left = 996
    Top = 200
  end
  object DSDireccionenvios: TDataSource
    DataSet = DMOrdenesSalidas.ADODtStDireccionesEnvio
    Left = 860
    Top = 267
  end
end
