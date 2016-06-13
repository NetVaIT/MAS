inherited frmOrdenesEntregasEdit: TfrmOrdenesEntregasEdit
  Caption = 'frmOrdenesEntregasEdit'
  ClientHeight = 763
  ClientWidth = 1041
  OnActivate = FormActivate
  ExplicitWidth = 1041
  ExplicitHeight = 763
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 413
    Width = 1041
    Visible = True
    ExplicitLeft = 8
    ExplicitTop = 347
    ExplicitWidth = 949
  end
  inherited splDetail2: TSplitter
    Top = 514
    Width = 1041
    Visible = True
    ExplicitLeft = 8
    ExplicitTop = 479
    ExplicitWidth = 949
  end
  inherited splDetail1: TSplitter
    Top = 709
    Width = 1041
    ExplicitLeft = -32
    ExplicitTop = 482
    ExplicitWidth = 949
  end
  inherited pnlClose: TPanel
    Top = 712
    Width = 1041
    Height = 51
    ExplicitTop = 712
    ExplicitWidth = 1041
    ExplicitHeight = 51
  end
  inherited pnlDetail3: TPanel
    Top = 712
    Width = 1041
    Height = 0
    ExplicitTop = 712
    ExplicitWidth = 1041
    ExplicitHeight = 0
  end
  inherited pnlDetail2: TPanel
    Top = 517
    Width = 1041
    Height = 192
    Anchors = [akLeft, akTop]
    Visible = True
    ExplicitTop = 517
    ExplicitWidth = 1041
    ExplicitHeight = 192
    object cxGrid1: TcxGrid
      Left = 0
      Top = 30
      Width = 1041
      Height = 162
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsOrdenSalidaItems
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.GroupByBox = False
        object cxGridDBTableView1ClaveProducto: TcxGridDBColumn
          DataBinding.FieldName = 'ClaveProducto'
          Width = 133
        end
        object cxGridDBTableView1Producto: TcxGridDBColumn
          DataBinding.FieldName = 'Producto'
          Width = 274
        end
        object cxGridDBTableView1CantidadDespachada: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'CantidadDespachada'
          Width = 125
        end
        object cxGridDBTableView1Observaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones'
          Width = 300
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1041
      Height = 30
      Align = alTop
      TabOrder = 1
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 3
        Width = 175
        Height = 26
        DataSource = dsOrdenSalidaItems
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        TabOrder = 0
      end
    end
  end
  inherited pnlDetail1: TPanel
    Top = 416
    Width = 1041
    Height = 98
    Anchors = [akLeft, akTop]
    Visible = True
    ExplicitLeft = 0
    ExplicitTop = 416
    ExplicitWidth = 1041
    ExplicitHeight = 98
    object cxGrid: TcxGrid
      Left = 0
      Top = 30
      Width = 1041
      Height = 68
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      ExplicitHeight = 140
      object tvgrid1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsOrdenesSalida
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.GroupByBox = False
        object tvgrid1idOrdenSalida: TcxGridDBColumn
          Caption = 'No.Orden Salida'
          DataBinding.FieldName = 'idOrdenSalida'
          Width = 93
        end
        object tvgrid1FechaRegistro: TcxGridDBColumn
          DataBinding.FieldName = 'FechaRegistro'
          Width = 157
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = tvgrid1
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1041
      Height = 30
      Align = alTop
      TabOrder = 1
      object DBNvgtr: TDBNavigator
        Left = 2
        Top = 3
        Width = 175
        Height = 26
        DataSource = dsOrdenesSalida
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        TabOrder = 0
      end
    end
  end
  inherited pcMain: TcxPageControl
    Width = 1041
    Height = 413
    ExplicitWidth = 1041
    ExplicitHeight = 341
    ClientRectBottom = 412
    ClientRectRight = 1040
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1039
      ExplicitHeight = 339
      inherited cxScrollBox1: TcxScrollBox
        Width = 1039
        Height = 411
        ExplicitWidth = 1039
        ExplicitHeight = 339
        inherited tbarData: TToolBar
          Width = 1037
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 1037
          inherited ToolButton10: TToolButton
            Visible = False
          end
          inherited ToolButton12: TToolButton
            Visible = False
          end
        end
        inherited pnlMaster: TPanel
          Width = 1037
          Height = 384
          ExplicitTop = 27
          ExplicitWidth = 1037
          ExplicitHeight = 384
          object Label1: TLabel
            Left = 32
            Top = 21
            Width = 88
            Height = 13
            Caption = 'No.Orden Entrega'
          end
          object Label2: TLabel
            Left = 185
            Top = 20
            Width = 113
            Height = 13
            Caption = 'Programaci'#243'n entrega: '
          end
          object Label5: TLabel
            Left = 185
            Top = 79
            Width = 87
            Height = 13
            Caption = 'Condicion Entrega'
            FocusControl = cxDBTextEdit2
          end
          object Label6: TLabel
            Left = 471
            Top = 215
            Width = 71
            Height = 13
            Caption = 'Observaciones'
            FocusControl = cxDBTextEdit3
          end
          object Label7: TLabel
            Left = 31
            Top = 78
            Width = 42
            Height = 13
            Caption = 'Tel'#233'fono'
          end
          object Label9: TLabel
            Left = 31
            Top = 214
            Width = 24
            Height = 13
            Caption = 'Valor'
          end
          object Label8: TLabel
            Left = 320
            Top = 125
            Width = 46
            Height = 13
            Caption = 'Conducto'
            FocusControl = cxDBTextEdit1
          end
          object Label21: TLabel
            Left = 31
            Top = 124
            Width = 49
            Height = 13
            Caption = 'Contenido'
            FocusControl = cxDBTextEdit4
          end
          object Label25: TLabel
            Left = 166
            Top = 215
            Width = 54
            Height = 13
            Caption = 'Total Cajas'
            FocusControl = cxDBTextEdit6
          end
          object Label26: TLabel
            Left = 627
            Top = 126
            Width = 42
            Height = 13
            Caption = 'Doc Guia'
          end
          object Label4: TLabel
            Left = 337
            Top = 19
            Width = 33
            Height = 13
            Caption = 'Cliente'
          end
          object Label3: TLabel
            Left = 32
            Top = 173
            Width = 69
            Height = 13
            Caption = 'Domicilio Envio'
            FocusControl = DBLookupComboBox1
          end
          object DBTxtQuienEmpaca: TDBText
            Left = 93
            Top = 298
            Width = 94
            Height = 19
            AutoSize = True
            DataField = 'PersonaEmpaca'
            DataSource = DataSource
          end
          object LblEmpaco: TLabel
            Left = 33
            Top = 298
            Width = 47
            Height = 17
            Caption = 'Empac'#243':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 160
            Top = 347
            Width = 129
            Height = 13
            AutoSize = True
            DataField = 'PersonaEnvia'
            DataSource = DataSource
          end
          object lblRespEntrega: TLabel
            Left = 32
            Top = 347
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
          object PnlEnviar: TPanel
            Left = 1
            Top = 330
            Width = 744
            Height = 47
            BevelOuter = bvNone
            TabOrder = 25
            Visible = False
            object Label10: TLabel
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
              Visible = False
            end
            object Label11: TLabel
              Left = 32
              Top = 0
              Width = 105
              Height = 13
              Caption = 'Responsable Envio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Edit1: TEdit
              Left = 320
              Top = 19
              Width = 153
              Height = 21
              PasswordChar = '*'
              TabOrder = 0
              Visible = False
            end
            object BitBtn1: TBitBtn
              Tag = 5
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
              OnClick = BtBtnAceptarClick
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 31
              Top = 16
              Width = 283
              Height = 21
              DataField = 'PersonaEnvia'
              DataSource = DataSource
              TabOrder = 2
            end
            object BitBtn2: TBitBtn
              Tag = 5
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
          object PnlEmpaca: TPanel
            Left = 0
            Top = 277
            Width = 713
            Height = 47
            BevelOuter = bvNone
            TabOrder = 23
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
              Top = 19
              Width = 153
              Height = 21
              PasswordChar = '*'
              TabOrder = 0
            end
            object BtBtnAceptar: TBitBtn
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
              OnClick = BtBtnAceptarClick
            end
            object DBLkupCmbBxEmpaca: TDBLookupComboBox
              Left = 31
              Top = 16
              Width = 283
              Height = 21
              DataField = 'PersonaEmpaca'
              DataSource = DataSource
              TabOrder = 2
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
          object cxDBLabel2: TcxDBLabel
            Left = 32
            Top = 40
            DataBinding.DataField = 'IdInfoEntrega'
            DataBinding.DataSource = DataSource
            Height = 21
            Width = 121
            AnchorX = 153
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 182
            Top = 98
            DataBinding.DataField = 'CondicionEntrega'
            DataBinding.DataSource = DataSource
            TabOrder = 1
            Width = 287
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 471
            Top = 234
            DataBinding.DataField = 'Observaciones'
            DataBinding.DataSource = DataSource
            TabOrder = 2
            Width = 421
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 320
            Top = 218
            Caption = 'Flete Pagado'
            DataBinding.DataField = 'PagoFlete'
            DataBinding.DataSource = DataSource
            TabOrder = 3
            Width = 88
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 320
            Top = 243
            Caption = 'Asegurado'
            DataBinding.DataField = 'Asegurado'
            DataBinding.DataSource = DataSource
            TabOrder = 4
            Width = 87
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 31
            Top = 233
            DataBinding.DataField = 'Valor'
            DataBinding.DataSource = DataSource
            TabOrder = 5
            Width = 129
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 185
            Top = 39
            DataBinding.DataField = 'FechaProgramadaEnt'
            DataBinding.DataSource = DataSource
            TabOrder = 6
            Width = 127
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 320
            Top = 142
            DataBinding.DataField = 'Conducto'
            TabOrder = 7
            Width = 197
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 31
            Top = 143
            DataBinding.DataField = 'Contenido'
            DataBinding.DataSource = DataSource
            TabOrder = 8
            Width = 278
          end
          object cxDBRadioGroup1: TcxDBRadioGroup
            Left = 523
            Top = 118
            TabStop = False
            Caption = 'Servicio'
            DataBinding.DataField = 'Servicio'
            DataBinding.DataSource = DataSource
            Properties.Items = <
              item
                Caption = 'Ocurre'
                Value = 'Ocurre'
              end
              item
                Caption = 'Domicilio'
                Value = 'Domicilio'
              end>
            TabOrder = 9
            Height = 57
            Width = 78
          end
          object BtBtnAceptaInfoEnt: TBitBtn
            Tag = 20
            Left = 809
            Top = 246
            Width = 83
            Height = 25
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
            TabOrder = 10
            Visible = False
          end
          object BtBtnCancelaInfoEnt: TBitBtn
            Tag = 22
            Left = 809
            Top = 277
            Width = 83
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
            TabOrder = 11
            Visible = False
          end
          object BtBtnImprimeEtiqueta: TBitBtn
            Tag = 22
            Left = 776
            Top = 95
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
            TabOrder = 12
            OnClick = BtBtnImprimeEtiquetaClick
          end
          object BtBtnAdjGuia: TBitBtn
            Tag = 20
            Left = 768
            Top = 140
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
            TabOrder = 13
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 166
            Top = 233
            DataBinding.DataField = 'CantidadCajas'
            DataBinding.DataSource = DataSource
            TabOrder = 14
            Width = 96
          end
          object cxDBLabel1: TcxDBLabel
            Left = 625
            Top = 143
            DataBinding.DataField = 'DocGuia'
            DataBinding.DataSource = DataSource
            Height = 22
            Width = 137
          end
          object cmbTelefono: TcxDBLookupComboBox
            Left = 31
            Top = 97
            DataBinding.DataField = 'TelefonoCompleto'
            DataBinding.DataSource = DataSource
            Properties.KeyFieldNames = 'IdTelefono'
            Properties.ListColumns = <
              item
                FieldName = 'TeleconLada'
              end
              item
                FieldName = 'Descripcion'
              end>
            TabOrder = 16
            Width = 141
          end
          object BtBtnOrdenEmbarque: TBitBtn
            Tag = 22
            Left = 607
            Top = 95
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
            TabOrder = 17
            OnClick = BtBtnOrdenEmbarqueClick
          end
          object DBLkupCmbBxPaqueteria: TDBLookupComboBox
            Left = 320
            Top = 142
            Width = 197
            Height = 21
            DataField = 'Paqueteria'
            DataSource = DataSource
            TabOrder = 18
          end
          object cxDBLabel3: TcxDBLabel
            Left = 337
            Top = 38
            DataBinding.DataField = 'Cliente'
            DataBinding.DataSource = DataSource
            Height = 21
            Width = 555
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 32
            Top = 188
            Width = 860
            Height = 21
            DataField = 'IDPersonaDomicilio'
            DataSource = DataSource
            KeyField = 'IdPersonaDomicilio'
            ListField = 'DirEnviocompleta'
            ListSource = DSDireccionenvios
            TabOrder = 20
          end
          object BtBtnEmpaca: TBitBtn
            Tag = 4
            Left = 30
            Top = 292
            Width = 102
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
            TabOrder = 21
            OnClick = BtBtnEmpacaClick
          end
          object BtBtnEnviar: TBitBtn
            Tag = 5
            Left = 30
            Top = 345
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
            TabOrder = 22
            OnClick = BtBtnEmpacaClick
          end
          object BtBtnFinEmpaque: TBitBtn
            Tag = 4
            Left = 364
            Top = 296
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
            TabOrder = 24
            Visible = False
            OnClick = BtBtnFinEmpaqueClick
          end
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmOrdenesEntregas.adodsMaster
    OnDataChange = DataSourceDataChange
  end
  inherited ilPageControl: TImageList
    Bitmap = {
      494C010102000400700110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  inherited ilAction: TImageList
    Bitmap = {
      494C01010C000E00940110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFF7EFFFFFFFFFFFFBFFFC003
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
  object dsOrdenesSalida: TDataSource
    DataSet = dmOrdenesEntregas.ADODtStOrdensalida
    Left = 902
    Top = 264
  end
  object dsOrdenSalidaItems: TDataSource
    DataSet = dmOrdenesEntregas.ADODtStOrdenSalidaItem
    Left = 718
    Top = 480
  end
  object DSDireccionenvios: TDataSource
    DataSet = dmOrdenesEntregas.ADODtStDireccionesEnvio
    Left = 948
    Top = 219
  end
  object DSQryAuxiliar: TDataSource
    DataSet = dmOrdenesEntregas.ADOQryAuxiliar
    Left = 925
    Top = 80
  end
  object DSQryAux2: TDataSource
    DataSet = dmOrdenesEntregas.ADOQryAux2
    Left = 925
    Top = 152
  end
end
