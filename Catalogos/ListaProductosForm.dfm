object frmListaProductos: TfrmListaProductos
  Left = 0
  Top = 0
  Caption = 'Lista de productos'
  ClientHeight = 315
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 315
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 568
    object cxGrid: TcxGrid
      Left = 0
      Top = 50
      Width = 772
      Height = 265
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      ExplicitWidth = 568
      object tvMaster: TcxGridDBTableView
        OnDblClick = tvMasterDblClick
        Navigator.Buttons.CustomButtons = <>
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
          Width = 416
        end
        object tvMasterPrecioUnitario: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioUnitario'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = tvMaster
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 772
      Height = 50
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 568
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
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    Left = 524
    Top = 72
  end
end
