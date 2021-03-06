object frmListaProductos: TfrmListaProductos
  Left = 0
  Top = 0
  Caption = 'Lista de productos'
  ClientHeight = 443
  ClientWidth = 1174
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 1174
    Height = 443
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxGrid: TcxGrid
      Left = 0
      Top = 50
      Width = 1174
      Height = 393
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      object tvMaster: TcxGridDBTableView
        OnDblClick = tvMasterDblClick
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = tvMasterCellDblClick
        DataController.DataSource = DataSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = ' '
        OptionsView.GroupByBox = False
        object tvMasterIdentificador1: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador1'
          Width = 96
        end
        object tvMasterIdentificador2: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador2'
          Width = 121
        end
        object tvMasterIdentificador3: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador3'
          Width = 143
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 403
        end
        object tvMasterPrecioUnitario: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioUnitario'
          Width = 77
        end
        object tvMasterAplicacion: TcxGridDBColumn
          Caption = 'Aplicaci'#243'n'
          DataBinding.FieldName = 'Aplicacion'
          Width = 166
        end
        object tvMasterIdentificador: TcxGridDBColumn
          Caption = 'Identificador Aplicaci'#243'n'
          DataBinding.FieldName = 'Identificador'
          Width = 132
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = tvMaster
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1174
      Height = 50
      Align = alTop
      TabOrder = 1
      object RdGrpUsoIdentificador: TRadioGroup
        Left = 263
        Top = -1
        Width = 282
        Height = 38
        Caption = 'Extraer'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Identificador1'
          'Identificador2'
          'Identificador3')
        TabOrder = 0
      end
      object EdtBuscar: TEdit
        Left = 15
        Top = 10
        Width = 202
        Height = 21
        TabOrder = 1
      end
      object SpdBtnBuscar: TBitBtn
        Left = 223
        Top = 8
        Width = 26
        Height = 25
        Default = True
        Glyph.Data = {
          AA030000424DAA03000000000000360000002800000011000000110000000100
          18000000000074030000C40E0000C40E00000000000000000000241CED241CED
          241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
          ED241CED241CED241CED241CED00241CED241CED241CED241CED241CED241CED
          241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
          ED00241CED241CEDFFFBFFB5AAA5F7FBF7241CED241CED241CED241CED241CED
          241CED241CED241CED241CED241CED241CED241CED00241CED241CEDBD9E8C73
          38219C7973F7FBF7241CED241CED241CED241CED241CED241CED241CED241CED
          241CED241CED241CED00241CED241CEDE7DBCE945131844931AD8A73F7FBF724
          1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED00241C
          ED241CED241CEDE7DBCEA56142A55931BD8E73F7FBF7F7E7E7DECBBDE7CBBDF7
          EFF7241CED241CED241CED241CED241CED00241CED241CED241CED241CEDE7E3
          DEB57142B56942B57D5AB56942B56942B56942B56942DEBAA5FFFBFF241CED24
          1CED241CED00241CED241CED241CED241CED241CEDE7E3DEB57142B57142B571
          42D6A684D6A684B57142B57142DEBEA5241CED241CED241CED00241CED241CED
          241CED241CED241CEDE7DBCEC67942C6865AF7EFE7FFFBFFFFFBFFF7E7DEC679
          42C67942F7EFE7241CED241CED00241CED241CED241CED241CED241CEDD6BA8C
          C68242E7C7A5FFFFFFFFFFFFFFFFFFFFFFFFD6B28CC68242E7CBB5241CED241C
          ED00241CED241CED241CED241CED241CEDE7BA8CC68A42E7CBB5FFFFFFFFFFFF
          FFFFFFFFFFFFE7BA8CC68A42E7CBB5241CED241CED00241CED241CED241CED24
          1CED241CEDE7D3B5D69242D6A66BF7FBF7FFFFFFFFFFFFF7F3F7D69E5AD69242
          F7E7DE241CED241CED00241CED241CED241CED241CED241CEDF7FBF7D6AE6BD6
          9A42D6AE6BE7D3B5E7D3B5D6A65AD69A42D6B66BFFFBFF241CED241CED00241C
          ED241CED241CED241CED241CED241CEDF7EFDEE7BE5AD6AA31D6AA31D6AA31D6
          AA31E7BE6BF7F3E7241CED241CED241CED00241CED241CED241CED241CED241C
          ED241CED241CEDFFFBF7F7DFB5E7D78CE7D78CF7E7BDFFFBFF241CED241CED24
          1CED241CED00241CED241CED241CED241CED241CED241CED241CED241CED241C
          ED241CED241CED241CED241CED241CED241CED241CED241CED00241CED241CED
          241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
          ED241CED241CED241CED241CED00}
        TabOrder = 2
        OnClick = SpdBtnBuscarClick
      end
      object ChckBxBuscaXAp: TCheckBox
        Left = 704
        Top = 12
        Width = 129
        Height = 17
        Caption = 'Buscar por Aplicaci'#243'n'
        TabOrder = 3
      end
      object ChckBxMostrarAplicacion: TCheckBox
        Left = 567
        Top = 12
        Width = 114
        Height = 17
        Caption = 'Mostrar Aplicaci'#243'n'
        TabOrder = 4
      end
      object BtBtnFotosNotasyEspecificacion: TBitBtn
        Left = 879
        Top = 8
        Width = 154
        Height = 25
        Caption = 'Notas y Especificaciones'
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFCAC9C8CAC9C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC9C8CAC9C8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF4E31314E3131766D6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3C3C3C3C3C3C3FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC9C8CAC9C8FFFFFF4E31
          3199C64E99C64E4E3131FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFCAC9C8CAC9C8FFFFFFC3C3C3FFFFFFFFFFFFC3C3C3FFFFFFCAC9C8
          CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8776C6C4E3131A2A0A04E313199C6
          4ECCF6A899C64E4E3131FFFFFFCAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CAC9C8CA
          C9C8C3C3C3C3C3C3A2A0A0C3C3C3FFFFFFFFFFFFFFFFFFC3C3C3735C5C473030
          4730304730304730304730304730304730304E313199C64E4E313199C64ECCF6
          A899C64E4E3131FFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
          C3C3C3C3C3FFFFFFC3C3C3FFFFFFFFFFFFFFFFFFC3C3C3FFFFFF473030EED4BA
          EED4BAEED4BAEED4BAEED4BAEED4BAECD2B95C4141CFF6AC9CC854CCF6A899C6
          4E4E3131FFFFFFFFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFC3C3C3FFFFFFFFFFFF473030FFFFFF
          FFEFE0FFEFE0FFEFE0FFEFE0FFEFE0FDEDDE755E5ED8F8BCD7F8BBA8CE684E31
          31CAC9C8CAC9C8FFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC3C3C3FFFFFFFFFFFFFFFFFFC3C3C3CAC9C8CAC9C8FFFFFF513B3BFFFFFF
          FFEFE0F9E1C9F9E1C9F9E1C9F9E1C995662F897676DEF9C7DDF9C5D8F8BCA1CA
          5C4E3131CAC9C8FFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3
          C3C3C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFC3C3C3CAC9C8FFFFFF5F4B4BFFFFFF
          9D723E986B3595662E95662EFFEFE095662F948383978686917F7F836E6E6D55
          557E7373FFFFFFFFFFFFC3C3C3FFFFFFC3C3C3C3C3C3C3C3C3C3C3C3FFFFFFC3
          C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3FFFFFFFFFFFF655151FFFFFF
          FFF1E4FFF1E3FFF0E1FFEFE0FFEFE095662F95662E95662EEED4BA473030CAC9
          C8FFFFFFFFFFFFFFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3
          C3C3C3C3C3C3C3C3FFFFFFC3C3C3CAC9C8FFFFFFFFFFFFFFFFFF655151FFFFFF
          FFF1E4FFF1E3FFF0E1FFEFE0FFEFE0FFEFE0F9E1C9F9E1C9EED4BA473030CAC9
          C8FFFFFFFFFFFFFFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC3C3C3CAC9C8FFFFFFFFFFFFFFFFFF6A5858FFFFFF
          FFF2E6FAE6D2FAE4CFF9E3CDF9E3CD986A3495662E95662ED9C2AA473030CAC9
          C8FFFFFFFFFFFFFFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3
          C3C3C3C3C3C3C3C3FFFFFFC3C3C3CAC9C8FFFFFFFFFFFFFFFFFF766565FFFFFF
          B4936BB39168AE895EAA8457FFF2E6A57D4EFFFFFF95662ED9C2AA473030CAC9
          C8FFFFFFFFFFFFFFFFFFC3C3C3FFFFFFC3C3C3C3C3C3C3C3C3C3C3C3FFF2E6C3
          C3C3FFFFFFC3C3C3FFFFFFC3C3C3CAC9C8FFFFFFFFFFFFFFFFFF817171FFFFFF
          FFF5EBFFF5EBFFF4EAFFF4E9FFF4E9AF8C62A57D4E9A6D37EED4BA473030CAC9
          C8FFFFFFFFFFFFFFFFFFC3C3C3FFFFFFFFF5EBFFF5EBFFF4EAFFFFFFFFFFFFC3
          C3C3C3C3C3C3C3C3FFFFFFC3C3C3CAC9C8FFFFFFFFFFFFFFFFFF8A7B7BFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD6BC473030CAC9
          C8FFFFFFFFFFFFFFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC3C3C3CAC9C8FFFFFFFFFFFFFFFFFFAC9E9E968989
          9689899487878F81818C7E7E8C7E7E8879797F6F6F726161624F4F786262FFFF
          FFFFFFFFFFFFFFFFFFFFC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
          C3C3C3C3C3C3C3C3C3C3C3C3C3C3FFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        TabOrder = 5
        OnClick = BtBtnFotosNotasyEspecificacionClick
      end
    end
  end
  object cxPgCntrlEspecifica: TcxPageControl
    Left = 449
    Top = 80
    Width = 664
    Height = 280
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    Visible = False
    Properties.ActivePage = cxTbShtFotosYDocs
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfFlat
    LookAndFeel.SkinName = 'Caramel'
    ClientRectBottom = 276
    ClientRectLeft = 4
    ClientRectRight = 660
    ClientRectTop = 24
    object cxTbShtFotosYDocs: TcxTabSheet
      Caption = 'Fotos y Documentos'
      Color = 16776176
      ImageIndex = 0
      ParentColor = False
      object PnlFotos: TPanel
        Left = 0
        Top = 0
        Width = 656
        Height = 252
        Align = alClient
        ParentColor = True
        TabOrder = 0
        object ImgFoto: TImage
          Left = 23
          Top = 18
          Width = 289
          Height = 196
          Stretch = True
        end
        object Label9: TLabel
          Left = 377
          Top = 24
          Width = 87
          Height = 13
          Caption = 'NombreArchivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ImgVacio: TImage
          Left = 318
          Top = 130
          Width = 275
          Height = 49
          Picture.Data = {
            0A544A504547496D61676517050000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800C600C803012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFC
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2803FFD9}
          Stretch = True
        end
        object Label11: TLabel
          Left = 377
          Top = 68
          Width = 32
          Height = 13
          Caption = 'Notas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 377
          Top = 43
          Width = 41
          Height = 13
          AutoSize = True
          DataField = 'NombreArchivo'
          DataSource = datasourceFotos
        end
        object SpdBtnVerArchivo: TSpeedButton
          Left = 120
          Top = 104
          Width = 103
          Height = 22
          Caption = 'Ver Documento'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          Visible = False
          OnClick = SpdBtnVerArchivoClick
        end
        object DBText2: TDBText
          Left = 377
          Top = 87
          Width = 296
          Height = 66
          DataField = 'Notas'
          DataSource = datasourceFotos
          WordWrap = True
        end
        object LblSinfotosDoctos: TLabel
          Left = 23
          Top = 16
          Width = 320
          Height = 30
          AutoSize = False
          Caption = 'SIN FOTOS -  SIN DOCUMENTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object DBNavigatorFotos: TDBNavigator
          Left = 103
          Top = 220
          Width = 120
          Height = 22
          DataSource = datasourceFotos
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 0
          OnClick = DBNavigatorFotosClick
        end
        object BtBtnCerrar: TBitBtn
          Left = 394
          Top = 216
          Width = 154
          Height = 25
          Caption = '&Cerrar'
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
            F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
            000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
            338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
            45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
            3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
            F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
            000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
            338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
            4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
            8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
            333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
            0000}
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtBtnCerrarClick
        end
      end
    end
    object cxTbShtEspecifica: TcxTabSheet
      Caption = 'Especificaciones'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 21
        Top = 24
        Width = 644
        Height = 177
        Color = clBtnFace
        DataSource = dsEspecificaciones
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descripcion'
            Title.Caption = 'Descripci'#243'n'
            Title.Color = clYellow
            Width = 449
            Visible = True
          end>
      end
      object BitBtn1: TBitBtn
        Left = 394
        Top = 216
        Width = 154
        Height = 25
        Caption = '&Cerrar'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
          F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
          000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
          338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
          45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
          3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
          F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
          000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
          338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
          4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
          8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
          333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
          0000}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = BtBtnCerrarClick
      end
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = dmCotizaciones.ADODSAuxiliar
    Left = 276
    Top = 56
  end
  object DSDocumento: TDataSource
    DataSet = dmProductos.ADOConDocumentoPF
    Left = 918
    Top = 40
  end
  object datasourceFotos: TDataSource
    DataSet = dmProductos.ADOConProdFotos
    Left = 822
    Top = 40
  end
  object dsEspecificaciones: TDataSource
    DataSet = dmProductos.ADOConProdEspecificacion
    Left = 1014
    Top = 40
  end
end
