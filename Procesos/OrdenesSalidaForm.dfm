inherited FrmOrdenesSalida: TFrmOrdenesSalida
  Caption = 'Ordenes Salidas'
  ClientWidth = 899
  ExplicitWidth = 899
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 899
  end
  inherited splDetail2: TSplitter
    Top = 511
    Width = 899
    Height = 0
    ExplicitTop = 516
    ExplicitWidth = 899
    ExplicitHeight = 0
  end
  inherited splDetail1: TSplitter
    Top = 511
    Width = 899
    Height = 0
    ExplicitTop = 517
    ExplicitWidth = 899
    ExplicitHeight = 0
  end
  inherited pnlClose: TPanel
    Width = 899
  end
  inherited pnlDetail3: TPanel
    Width = 899
  end
  inherited pnlDetail2: TPanel
    Top = 543
    Width = 899
    Height = 22
    ExplicitTop = 543
    ExplicitWidth = 899
    ExplicitHeight = 22
  end
  inherited pnlDetail1: TPanel
    Top = 511
    Width = 899
    Height = 32
    ExplicitTop = 505
    ExplicitWidth = 899
    ExplicitHeight = 32
  end
  inherited pcMain: TcxPageControl
    Width = 899
    Height = 511
    ExplicitLeft = 128
    ExplicitWidth = 899
    ExplicitHeight = 491
    ClientRectBottom = 510
    ClientRectRight = 898
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 748
      ExplicitHeight = 475
      inherited cxScrollBox1: TcxScrollBox
        Width = 897
        Height = 509
        inherited tbarData: TToolBar
          Width = 895
        end
        inherited pnlMaster: TPanel
          Width = 895
          Height = 482
          object pnlDetail: TPanel
            Left = 0
            Top = 213
            Width = 895
            Height = 153
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitTop = 184
            ExplicitWidth = 746
            ExplicitHeight = 264
            object tbarGrid: TToolBar
              Left = 0
              Top = 0
              Width = 895
              Height = 29
              Images = ilAction
              TabOrder = 0
              ExplicitWidth = 746
              object TlBtnInserta: TToolButton
                Left = 0
                Top = 0
              end
              object ToolButton4: TToolButton
                Left = 23
                Top = 0
                Width = 8
                Caption = 'ToolButton2'
                ImageIndex = 1
                Style = tbsSeparator
              end
              object TlBtnEdita: TToolButton
                Left = 31
                Top = 0
              end
              object ToolButton3: TToolButton
                Left = 54
                Top = 0
                Width = 8
                Caption = 'ToolButton3'
                ImageIndex = 10
                Style = tbsSeparator
              end
              object TlBtnBorra: TToolButton
                Left = 62
                Top = 0
              end
              object ToolButton6: TToolButton
                Left = 85
                Top = 0
                Width = 8
                Caption = 'ToolButton4'
                ImageIndex = 2
                Style = tbsSeparator
              end
              object TlBtnFirst: TToolButton
                Left = 93
                Top = 0
              end
              object TlBtnPrior: TToolButton
                Left = 116
                Top = 0
              end
              object TlBtnNext: TToolButton
                Left = 139
                Top = 0
              end
              object TlBtnLasT: TToolButton
                Left = 162
                Top = 0
              end
              object ToolButton22: TToolButton
                Left = 185
                Top = 0
                Hint = 'Actualizar'
                Caption = '&Actualizar'
                ImageIndex = 9
                Visible = False
              end
              object TlBtnGuarda: TToolButton
                Left = 208
                Top = 0
              end
              object TlBtnCancela: TToolButton
                Left = 231
                Top = 0
              end
            end
            object DBGrid1: TDBGrid
              Left = 0
              Top = 29
              Width = 895
              Height = 124
              Align = alClient
              Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'IdDocumentoSalidaDetalle'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'IdDocumentoSalida'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'IdProducto'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'ClaveProducto'
                  Width = 176
                  Visible = True
                end
                item
                  ButtonStyle = cbsEllipsis
                  Expanded = False
                  FieldName = 'Producto'
                  Width = 289
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cantidad'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CantidadPendiente'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'PrecioUnitario'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Importe'
                  Visible = True
                end>
            end
          end
          object PnlEncabezado: TPanel
            Left = 0
            Top = 0
            Width = 895
            Height = 213
            Align = alTop
            TabOrder = 1
            ExplicitWidth = 746
            object Label1: TLabel
              Left = 32
              Top = 16
              Width = 69
              Height = 13
              Caption = 'FechaRegistro'
              FocusControl = cxDBDateEdit1
            end
            object Label5: TLabel
              Left = 520
              Top = 64
              Width = 24
              Height = 13
              Caption = 'Total'
              FocusControl = cxDBTextEdit1
            end
            object Label6: TLabel
              Left = 184
              Top = 16
              Width = 36
              Height = 13
              Caption = 'Estatus'
              FocusControl = DBLookupComboBox1
            end
            object Label7: TLabel
              Left = 32
              Top = 64
              Width = 86
              Height = 13
              Caption = 'PersonaRecolecta'
              FocusControl = DBLookupComboBox2
            end
            object Label8: TLabel
              Left = 32
              Top = 112
              Width = 71
              Height = 13
              Caption = 'PersonaRevisa'
              FocusControl = DBLookupComboBox3
            end
            object Label9: TLabel
              Left = 32
              Top = 160
              Width = 76
              Height = 13
              Caption = 'PersonaEmpaca'
              FocusControl = DBLookupComboBox4
            end
            object cxDBDateEdit1: TcxDBDateEdit
              Left = 32
              Top = 32
              DataBinding.DataField = 'FechaRegistro'
              DataBinding.DataSource = DataSource
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 523
              Top = 83
              DataBinding.DataField = 'Total'
              DataBinding.DataSource = DataSource
              TabOrder = 1
              Width = 121
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 184
              Top = 32
              Width = 274
              Height = 21
              DataField = 'Estatus'
              DataSource = DataSource
              TabOrder = 2
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 32
              Top = 80
              Width = 426
              Height = 21
              DataField = 'PersonaRecolecta'
              DataSource = DataSource
              TabOrder = 3
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 32
              Top = 128
              Width = 426
              Height = 21
              DataField = 'PersonaRevisa'
              DataSource = DataSource
              TabOrder = 4
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 32
              Top = 176
              Width = 426
              Height = 21
              DataField = 'PersonaEmpaca'
              DataSource = DataSource
              TabOrder = 5
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 371
            Width = 895
            Height = 111
            Align = alBottom
            TabOrder = 2
            ExplicitLeft = -2
            ExplicitTop = 336
            ExplicitWidth = 746
            object Label2: TLabel
              Left = 530
              Top = 49
              Width = 17
              Height = 13
              Caption = 'IVA'
              FocusControl = cxDBTextEdit2
            end
            object Label3: TLabel
              Left = 505
              Top = 21
              Width = 42
              Height = 13
              Caption = 'SubTotal'
              FocusControl = cxDBTextEdit3
            end
            object Label4: TLabel
              Left = 523
              Top = 73
              Width = 24
              Height = 13
              Caption = 'Total'
              FocusControl = cxDBTextEdit4
            end
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 553
              Top = 48
              DataBinding.DataField = 'IVA'
              DataBinding.DataSource = DataSource
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 553
              Top = 21
              DataBinding.DataField = 'SubTotal'
              DataBinding.DataSource = DataSource
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 553
              Top = 74
              DataBinding.DataField = 'Total'
              DataBinding.DataSource = DataSource
              TabOrder = 2
              Width = 121
            end
          end
        end
      end
    end
  end
  object cxPageControl1: TcxPageControl [8]
    Left = 0
    Top = 0
    Width = 899
    Height = 511
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ExplicitLeft = 128
    ExplicitHeight = 491
    ClientRectBottom = 510
    ClientRectLeft = 1
    ClientRectRight = 898
    ClientRectTop = 1
    object cxTabSheet1: TcxTabSheet
      Caption = 'General'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxScrollBox2: TcxScrollBox
        Left = 0
        Top = 0
        Width = 897
        Height = 509
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 748
        ExplicitHeight = 475
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 895
          Height = 25
          Images = ilAction
          List = True
          TabOrder = 0
          ExplicitLeft = -16
          ExplicitTop = -6
          object ToolButton5: TToolButton
            Left = 0
            Top = 0
            Action = DataSetInsert
          end
          object ToolButton7: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object ToolButton8: TToolButton
            Left = 31
            Top = 0
            Action = DataSetDelete
          end
          object ToolButton9: TToolButton
            Left = 54
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object ToolButton21: TToolButton
            Left = 62
            Top = 0
            Action = DataSetFirst
          end
          object ToolButton23: TToolButton
            Left = 85
            Top = 0
            Action = DataSetPrior
          end
          object ToolButton24: TToolButton
            Left = 108
            Top = 0
            Action = DataSetNext
          end
          object ToolButton25: TToolButton
            Left = 131
            Top = 0
            Action = DataSetLast
          end
          object ToolButton26: TToolButton
            Left = 154
            Top = 0
            Action = DataSetRefresh
          end
          object ToolButton27: TToolButton
            Left = 177
            Top = 0
            Action = DataSetPost
          end
          object ToolButton28: TToolButton
            Left = 200
            Top = 0
            Action = DataSetCancel
          end
          object ToolButton29: TToolButton
            Left = 223
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object ToolButton30: TToolButton
            Left = 231
            Top = 0
            Action = actShowGrid
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 25
          Width = 895
          Height = 482
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 24
          ExplicitHeight = 485
          object Panel3: TPanel
            Left = 0
            Top = 225
            Width = 895
            Height = 153
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitTop = 213
            ExplicitWidth = 746
            object ToolBar2: TToolBar
              Left = 0
              Top = 0
              Width = 895
              Height = 29
              Images = ilAction
              TabOrder = 0
              ExplicitWidth = 746
              object ToolButton31: TToolButton
                Left = 0
                Top = 0
                Action = DatasetInsert1
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
                Action = DatasetRefresh1
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
              Width = 895
              Height = 124
              Align = alClient
              DataSource = DtSrcOrdenSalItem
              Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                  FieldName = 'Cantidad Despachada'
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
                  Visible = True
                end>
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 895
            Height = 225
            Align = alTop
            TabOrder = 1
            ExplicitTop = 6
            object Label10: TLabel
              Left = 31
              Top = 16
              Width = 72
              Height = 13
              Caption = 'Fecha Registro'
              FocusControl = cxDBDateEdit2
            end
            object Label12: TLabel
              Left = 462
              Top = 13
              Width = 36
              Height = 13
              Caption = 'Estatus'
              FocusControl = DBLookupComboBox5
            end
            object Label16: TLabel
              Left = 719
              Top = 161
              Width = 17
              Height = 13
              Caption = 'IVA'
              FocusControl = cxDBTextEdit6
            end
            object Label17: TLabel
              Left = 694
              Top = 133
              Width = 42
              Height = 13
              Caption = 'SubTotal'
              FocusControl = cxDBTextEdit7
            end
            object Label18: TLabel
              Left = 712
              Top = 185
              Width = 24
              Height = 13
              Caption = 'Total'
              FocusControl = cxDBTextEdit8
            end
            object cxDBDateEdit2: TcxDBDateEdit
              Left = 31
              Top = 32
              DataBinding.DataField = 'FechaRegistro'
              DataBinding.DataSource = DtSrcOrdenSalItem
              TabOrder = 0
              Width = 121
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = 464
              Top = 32
              Width = 287
              Height = 21
              DataField = 'Estatus'
              DataSource = DtSrcOrdenSalItem
              TabOrder = 1
            end
            object PnlRecolecta: TPanel
              Left = 16
              Top = 60
              Width = 617
              Height = 50
              BevelOuter = bvNone
              TabOrder = 2
              object Label11: TLabel
                Left = 320
                Top = 1
                Width = 56
                Height = 13
                Caption = 'Contrase'#241'a'
                FocusControl = DBLkupCmbBxRecolecta
              end
              object Label13: TLabel
                Left = 16
                Top = 2
                Width = 47
                Height = 13
                Caption = 'Recolecta'
                FocusControl = DBLkupCmbBxRecolecta
              end
              object DBLkupCmbBxRecolecta: TDBLookupComboBox
                Left = 16
                Top = 16
                Width = 281
                Height = 21
                DataField = 'PersonaRecolecta'
                DataSource = DtSrcOrdenSalItem
                TabOrder = 0
              end
              object EdtContrasenia: TEdit
                Left = 320
                Top = 16
                Width = 153
                Height = 21
                TabOrder = 1
              end
              object BtBtnAceptaRecoleccion: TBitBtn
                Left = 512
                Top = 15
                Width = 97
                Height = 25
                Caption = 'Aceptar'
                TabOrder = 2
              end
            end
            object BtBtnRecolecta: TBitBtn
              Left = 32
              Top = 74
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
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BCC483FCC483FAAAAAADDDDDDCA
                CACA8A8A8ACC483FCC483FC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC
                CC483FBBBBBB8A8A8ACC483F6C6C6C747474CC483FFFFFFF8C8C8CCC483FFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDB1B1B1CC483FCC483FD3D3D3F6F6F6F3
                F3F3B8B8B8CC483FCC483FD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFC8C8C8CC483FEDEDEDE8A200E8A200E6E6E6CC483F7F7F7FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9CC483FCC483FCC483FCC483FCC
                483FCC483FCC483FCC483FEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                CC483FB2B2B2B7B7B7CC483FF0F0F0C8C8C86B6B6BD9D9D9CC483FC3C3C3FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFACC483FCC483FCC483FCC483FCC483FCC
                483FCC483FCC483FCC483F7D7D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2
                CC483F767676626262CC483F7E7E7E6D6D6ECC483F767676696969CC483FF6F6
                F6FFFFFFFFFFFFFFFFFFFFFFFFB3B3B3CC483FFFFFFFC3C3C36C6C69FFFFFFDF
                DFDBCC483FFDFEFFFFFFFFCC483FC6C6C6FFFFFFFFFFFFFFFFFFFFFFFFE8A200
                CC483FCC483FCC483FCC483FCC483F565847CC483FCC483FCC483FCC483FE8A2
                00FFFFFFFEFEFFFEFDFFFFFFFFF5F5F5DADADAD0D1D0D1D1D1D7D5D8D6D5D5D7
                D9D2E0E2E1CFCFD7D3D0DEE8A200E8A200FEFEFDFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFCC48
                3FCC483F9CA295FBFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEBEAB6AFB1E8A200FAFCFEFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFF}
              TabOrder = 3
            end
            object PnlRevisa: TPanel
              Left = 16
              Top = 107
              Width = 617
              Height = 50
              BevelOuter = bvNone
              TabOrder = 4
              object Label19: TLabel
                Left = 320
                Top = 2
                Width = 56
                Height = 13
                Caption = 'Contrase'#241'a'
              end
              object Label20: TLabel
                Left = 16
                Top = 1
                Width = 32
                Height = 13
                Caption = 'Revisa'
              end
              object Edit1: TEdit
                Left = 320
                Top = 16
                Width = 153
                Height = 21
                TabOrder = 0
              end
              object BitBtn1: TBitBtn
                Left = 512
                Top = 16
                Width = 97
                Height = 25
                Caption = 'Aceptar'
                TabOrder = 1
              end
              object DBLkupCmbBxRevisa: TDBLookupComboBox
                Left = 16
                Top = 16
                Width = 281
                Height = 21
                DataField = 'PersonaRevisa'
                DataSource = DtSrcOrdenSalItem
                TabOrder = 2
              end
            end
            object BitBtn2: TBitBtn
              Left = 31
              Top = 121
              Width = 103
              Height = 25
              Caption = 'Revisar'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                E7DBCE945131844931AD8A73F7FBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3E7DBCEA56142A55931BD8E73F7
                FBF7F7E7E7DECBBDE7CBBDF7EFF79C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                828282F2F2F2E7E3DEB57142B56942B57D5AB56942B56942B56942B56942DEBA
                A5FFFBFFFFFFFFFFFFFFFFFFFFFFFFFF868686F2F2F2FDFDFDE7E3DEB57142B5
                7142B57142D6A684D6A684B57142B57142DEBEA5FFFFFFFFFFFFFFFFFFFFFFFF
                8D8D8DF2F2F2FAFAFAE7DBCEC67942C6865AF7EFE7FFFBFFFFFBFFF7E7DEC679
                42C67942F7EFE7FFFFFFFFFFFFFFFFFF919191F2F2F2F8F8F8D6BA8CC68242E7
                C7A5F8F8F8F8F8F8F8F8F8F8F8F8D6B28CC68242E7CBB5FFFFFFFFFFFFFFFFFF
                949494F2F2F2F7F7F7E7BA8CC68A42E7CBB5F8F8F8F8F8F8F8F8F8F8F8F8E7BA
                8CC68A42E7CBB5FFFFFFFFFFFFFFFFFF989898F2F2F2F5F5F5E7D3B5D69242D6
                A66BF7FBF7F8F8F8F8F8F8F7F3F7D69E5AD69242F7E7DEFFFFFFFFFFFFFFFFFF
                9C9C9CF2F2F2F3F3F3F7FBF7D6AE6BD69A42D6AE6BE7D3B5E7D3B5D6A65AD69A
                42D6B66BFFFBFFFFFFFFFFFFFFFFFFFF9F9F9FF2F2F2F2F2F2F2F2F2F7EFDEE7
                BE5AD6AA31D6AA31D6AA31D6AA31E7BE6BF7F3E7FFFFFFFFFFFFFFFFFFFFFFFF
                A7A7A7F2F2F2EEEEEEEEEEEEEEEEEEFFFBF7F7DFB5E7D78CE7D78CF7E7BDFFFB
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABABF2F2F2EDEDEDEDEDEDEDEDEDED
                EDEDA4A4A4FFFFFFEBEBEBA1A1A1ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                AEAEAEF2F2F2EBEBEBEBEBEBEBEBEBEBEBEBA4A4A4EBEBEBA1A1A1ECECECFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2F2F2F2F2F2F2F2F2F2F2F2F2F2
                F2F2A4A4A4A1A1A1ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                C8C8C8B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3929292ECECECFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              TabOrder = 5
            end
            object PnlEmpaca: TPanel
              Left = 16
              Top = 155
              Width = 617
              Height = 50
              BevelOuter = bvNone
              TabOrder = 6
              object Label14: TLabel
                Left = 320
                Top = 0
                Width = 56
                Height = 13
                Caption = 'Contrase'#241'a'
              end
              object Label15: TLabel
                Left = 16
                Top = 1
                Width = 37
                Height = 13
                Caption = 'Empaca'
              end
              object Edit2: TEdit
                Left = 320
                Top = 15
                Width = 153
                Height = 21
                TabOrder = 0
              end
              object BitBtn3: TBitBtn
                Left = 512
                Top = 15
                Width = 97
                Height = 25
                Caption = 'Aceptar'
                TabOrder = 1
              end
              object DBLkupCmbBxEmpaca: TDBLookupComboBox
                Left = 16
                Top = 15
                Width = 281
                Height = 21
                DataField = 'PersonaEmpaca'
                DataSource = DataSource
                TabOrder = 2
              end
            end
            object BitBtn4: TBitBtn
              Left = 31
              Top = 169
              Width = 103
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
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 742
              Top = 160
              DataBinding.DataField = 'IVA'
              DataBinding.DataSource = DataSource
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 742
              Top = 134
              DataBinding.DataField = 'SubTotal'
              DataBinding.DataSource = DataSource
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 742
              Top = 186
              DataBinding.DataField = 'Importe'
              DataBinding.DataSource = DtSrcOrdenSalItem
              TabOrder = 10
              Width = 121
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 378
            Width = 895
            Height = 38
            Align = alTop
            TabOrder = 2
            ExplicitLeft = -2
            ExplicitTop = 466
          end
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = DMOrdenesSalidas.adodsMaster
    Left = 758
  end
  inherited ilPageControl: TImageList
    Left = 790
    Bitmap = {
      494C010104009002500110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C96A5008C8E8400000000000000000000000000F9F9F900BCBC
      BC00C3C3C300000000000000000000000000F8F8F800B6B6B600CBCBCB000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F9F9F900BCBC
      BC00C3C3C300FFFFFF00FFFFFF00FFFFFF00F8F8F800B6B6B600CBCBCB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9E0000FFF7F700FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFE7E700FFE7
      E700FFDFDE00FFDFDE00FFD7AD0000000000FF9E0000FFF7F700FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFE7E700FFEF
      EF002979FF006BD7FF00ADAEAD000000000000000000000000009B9B9B00CC48
      3F00CC483F00AAAAAA00DDDDDD00CACACA008A8A8A00CC483F00CC483F00C5C5
      C50000000000000000000000000000000000FFFFFF00FFFFFF009B9B9B005454
      540046464600AAAAAA00DDDDDD00CACACA008A8A8A005E5E5E0046464600C5C5
      C500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9E0000FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFDFDE00FFDF
      DE00FFD7D600FFD7D600FFDFDE0000000000FF9E0000FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700EFDFDE003179
      FF006BD7FF00398EFF00EFDFEF000000000000000000FCFCFC00CC483F00BBBB
      BB008A8A8A00CC483F006C6C6C0074747400CC483F00000000008C8C8C00CC48
      3F0000000000000000000000000000000000FFFFFF00FCFCFC006F6F6F00BBBB
      BB008A8A8A002C2C2C006C6C6C007474740036363600CACACA008C8C8C008686
      8600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9E0000FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFDF
      DE00FFDFDE00FFD7D600FFDFDE0000000000FF9E0000FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700F7EFEF008C8E8C0084868C00ADA6AD008C8E8C007BA6
      B500398EFF00F7DFE700FFDFDE000000000000000000FDFDFD00B1B1B100CC48
      3F00CC483F00D3D3D300F6F6F600F3F3F300B8B8B800CC483F00CC483F00D9D9
      D90000000000000000000000000000000000FFFFFF00FDFDFD00B1B1B1005858
      58006B6B6B00D3D3D300F6F6F600F3F3F300B8B8B8005B5B5B0060606000D9D9
      D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9E0000FFF7F700FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFE7E700FFE7
      E700FFDFDE00FFDFDE00FFDFDE0000000000FF9E0000FFF7F700FFFFFF00FFFF
      FF00FFFFFF00DEDFDE00E7C79400F7CF9400F7CF9C00F7CF8C0063616B009496
      9400EFDFE700FFDFDE00FFDFDE0000000000000000000000000000000000C8C8
      C800CC483F00EDEDED00E8A20000E8A20000E6E6E600CC483F007F7F7F000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C8C8
      C800D0D0D000EDEDED00C8C8C800C7C7C700E6E6E600666666007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7E700FFE7
      E700FFDFDE00FFDFDE00FFDFDE0000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5A69400F7D7A500F7D7A500F7D79C00EFCF8C00F7CF9400C6B6
      BD00FFDFDE00FFDFDE00FFDFDE00000000000000000000000000B9B9B900CC48
      3F00CC483F00CC483F00CC483F00CC483F00CC483F00CC483F00CC483F00EAEA
      EA0000000000000000000000000000000000FFFFFF00FFFFFF00B9B9B9004848
      48004D4D4D002F2F2F0062626200555555002A2A2A00515151004E4E4E00EAEA
      EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFEFEF00FFE7
      E700FFDFDE00FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7DFAD00F7E7BD00F7E7C600F7DFAD00F7D79C00F7D7A5008C8E
      9400FFDFDE00FFDFDE00FFE7E700000000000000000000000000CC483F00B2B2
      B200B7B7B700CC483F00F0F0F000C8C8C8006B6B6B00D9D9D900CC483F00C3C3
      C30000000000000000000000000000000000FFFFFF00FFFFFF008B8B8B00B2B2
      B200B7B7B7006E6E6E00F0F0F000C8C8C8006B6B6B00D9D9D9005D5D5D00C3C3
      C300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DECFAD00FFF7DE00FFF7E700F7EFC600F7DFAD00F7D7A5009C96
      9C00FFE7E700FFDFDE00FFE7E7000000000000000000FAFAFA00CC483F00CC48
      3F00CC483F00CC483F00CC483F00CC483F00CC483F00CC483F00CC483F007D7D
      7D0000000000000000000000000000000000FFFFFF00FAFAFA00585858007171
      71006E6E6E00434343008D8D8D00757575003C3C3C0090909000464646007D7D
      7D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5A6AD00FFFFEF00FFFFEF00FFEFCE00F7DFAD00E7CF9C00FFEF
      EF00FFE7E700FFDFDE00FFE7E7000000000000000000E2E2E200CC483F007676
      760062626200CC483F007E7E7E006D6D6E00CC483F007676760069696900CC48
      3F00F6F6F600000000000000000000000000FFFFFF00E2E2E200494949007676
      760062626200404040007E7E7E006D6D6E003333330076767600696969005757
      5700F6F6F600FFFFFF00FFFFFF00FFFFFF00FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A5A6A500E7DFBD00FFEFBD00B5A69400E7D7DE00FFE7
      E700FFE7E700FFDFDE00FFE7E7000000000000000000B3B3B300CC483F000000
      0000C3C3C3006C6C690000000000DFDFDB00CC483F00FDFEFF0000000000CC48
      3F00C6C6C600000000000000000000000000FFFFFF00B3B3B30079797900FFFF
      FF00C3C3C3006C6C6900FFFFFF00DFDFDB0058585600FDFEFF00FFFFFF006061
      6200C6C6C600FFFFFF00FFFFFF00FFFFFF00FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E7000000000000000000E8A20000CC483F00CC48
      3F00CC483F00CC483F00CC483F0056584700CC483F00CC483F00CC483F00CC48
      3F00E8A2000000000000FEFEFF00FEFDFF00FFFFFF00949494003E3E3E005E5F
      5E004949490046433E0065615400565847003638320052555A00595C67002F33
      3400A0A5A500FFFFFF00FEFEFF00FEFDFF00FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E000000000000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E00000000000000000000F5F5F500DADADA00D0D1
      D000D1D1D100D7D5D800D6D5D500D7D9D200E0E2E100CFCFD700D3D0DE00E8A2
      0000E8A20000FEFEFD000000000000000000FFFFFF00F5F5F500DADADA00D0D1
      D000D1D1D100D7D5D800D6D5D500D7D9D200E0E2E100CFCFD700D3D0DE00B6B4
      BC0081838300FEFEFD00FFFFFF00FFFFFF00FF9E0000EF860000EF860000EF86
      0000EF860000EF860000EF860000EF860000EF860000EF860000EF860000EF86
      0000EF860000EF860000F796000000000000FF9E0000EF860000EF860000EF86
      0000EF860000EF860000EF860000EF860000EF860000EF860000EF860000EF86
      0000EF860000EF860000F7960000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFA
      FF00CC483F00CC483F009CA29500FBFFFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFA
      FF00716A680077776B009CA29500FBFFFA0000000000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E00000000000000000000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEBEA00B6AFB100E8A20000FAFCFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EEEBEA00B6AFB1009C9EA100FAFCFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFF9C71F0000
      00010001C00F000000010001804F000000010001800F000000010001E01F0000
      00010001C00F000000010001C00F000000010001800F00000001000180070000
      00010001922700000001000180040000000100018003000000010001FFE00000
      80018001FFF00000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  inherited ActionList: TActionList
    Left = 830
    object DatasetFirst1: TDataSetFirst
      Category = 'DatasetDetalle'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 12
    end
    object DatasetPrior1: TDataSetPrior
      Category = 'DatasetDetalle'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 13
    end
    object DatasetNext1: TDataSetNext
      Category = 'DatasetDetalle'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 14
    end
    object DatasetLast1: TDataSetLast
      Category = 'DatasetDetalle'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 15
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'DatasetDetalle'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 16
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'DatasetDetalle'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 17
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'DatasetDetalle'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 18
    end
    object DatasetPost1: TDataSetPost
      Category = 'DatasetDetalle'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 19
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'DatasetDetalle'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 20
    end
    object DatasetRefresh1: TDataSetRefresh
      Category = 'DatasetDetalle'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 21
    end
  end
  inherited ilAction: TImageList
    Left = 856
    Bitmap = {
      494C01011600D002680110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868686000000000000000000868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000086868600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600000000008686860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600000000000000000086868600000000008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860000000000000000000000000086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFC7F00000000F3E7F0FF00000000F1C7F1FF00000000
      F88FE3FF00000000FC1FE7FF00000000FE3FE70700000000FC1FE38700000000
      F88FE10700000000F1C7F00700000000F3E7F83700000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
    Left = 726
    PixelsPerInch = 96
  end
  object DtSrcOrdenSalItem: TDataSource
    DataSet = DMOrdenesSalidas.ADODtStOrdenSalidaItem
    Left = 814
    Top = 264
  end
end
