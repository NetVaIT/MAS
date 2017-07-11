inherited RptVentasXCliente: TRptVentasXCliente
  Caption = 'RptVentasXCliente'
  ClientWidth = 875
  ExplicitWidth = 875
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 875
    ExplicitWidth = 875
  end
  inherited splDetail1: TSplitter
    Width = 875
    ExplicitWidth = 875
  end
  inherited splDetail2: TSplitter
    Width = 875
    ExplicitWidth = 875
  end
  inherited pnlMaster: TPanel
    Top = 100
    Width = 875
    Height = 184
    ExplicitTop = 78
    ExplicitWidth = 875
    ExplicitHeight = 206
    inherited cxGrid: TcxGrid
      Width = 875
      Height = 184
      ExplicitWidth = 875
      ExplicitHeight = 206
      inherited tvMaster: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = tvMasterSumaTotal
          end>
        OptionsView.Footer = True
        object tvMasterIdPersonaReceptor: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersonaReceptor'
          Visible = False
        end
        object tvMasterDescripcion: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'Descripcion'
          Width = 121
        end
        object tvMasterRazonSocial: TcxGridDBColumn
          Caption = 'Raz'#243'n Social'
          DataBinding.FieldName = 'RazonSocial'
          Width = 450
        end
        object tvMasteridcfditipodocumento: TcxGridDBColumn
          DataBinding.FieldName = 'idcfditipodocumento'
          Visible = False
        end
        object tvMasterSumaTotal: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'SumaTotal'
          Width = 170
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 875
    ExplicitWidth = 875
  end
  inherited pnlDetail2: TPanel
    Width = 875
    ExplicitWidth = 875
  end
  inherited pnlDetail1: TPanel
    Width = 875
    ExplicitWidth = 875
  end
  inherited pnlClose: TPanel
    Width = 875
    ExplicitWidth = 875
    inherited btnClose: TButton
      Left = 790
      ExplicitLeft = 790
    end
  end
  object PnlFiltros: TPanel [8]
    Left = 0
    Top = 53
    Width = 875
    Height = 47
    Align = alTop
    ParentBackground = False
    TabOrder = 9
    ExplicitTop = 31
    object PnlBusqueda: TPanel
      Left = 202
      Top = 1
      Width = 201
      Height = 45
      Align = alLeft
      BevelInner = bvLowered
      ParentBackground = False
      ParentColor = True
      TabOrder = 0
      object Label3: TLabel
        Left = 16
        Top = 2
        Width = 90
        Height = 13
        Caption = 'Cliente parecido a:'
      end
      object EdtNombre: TEdit
        Left = 15
        Top = 17
        Width = 163
        Height = 21
        TabOrder = 0
      end
    end
    object PnlFechas: TPanel
      Left = 403
      Top = 1
      Width = 463
      Height = 45
      Align = alLeft
      BevelInner = bvLowered
      ParentBackground = False
      TabOrder = 1
      object Label4: TLabel
        Left = 21
        Top = 4
        Width = 30
        Height = 13
        Caption = 'Desde'
        Transparent = True
      end
      object Label5: TLabel
        Left = 181
        Top = 4
        Width = 28
        Height = 13
        Caption = 'Hasta'
        Transparent = True
      end
      object SpdBtnConsulta: TSpeedButton
        Left = 331
        Top = 15
        Width = 25
        Height = 25
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F3333337F3333377F8F8F8F773
          333337333333373F3333078F8F8F870333337F333333337F333307F8F8F8F703
          33337F333333337F3333078F8F8F8703333373F333333373333377F8F8F8F773
          333337F3333337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        OnClick = SpdBtnConsultaClick
      end
      object cxDtEdtInicio: TcxDateEdit
        Left = 16
        Top = 17
        TabOrder = 0
        Width = 145
      end
      object cxDtEdtFin: TcxDateEdit
        Left = 176
        Top = 17
        TabOrder = 1
        Width = 137
      end
      object ChckBxXFecha: TCheckBox
        Left = 375
        Top = 17
        Width = 82
        Height = 20
        Caption = 'Usar Fecha'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
    object PnlTipoDoc: TPanel
      Left = 1
      Top = 1
      Width = 201
      Height = 45
      Align = alLeft
      BevelInner = bvLowered
      ParentBackground = False
      ParentColor = True
      TabOrder = 2
      object ChckLstBxTipoDoc: TCheckListBox
        Left = 2
        Top = 2
        Width = 197
        Height = 41
        Align = alClient
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          'Facturas'
          'Notas Cargo'
          'Notas Venta'
          'Fletes')
        TabOrder = 0
      end
    end
  end
  object PnlTitulo: TPanel [9]
    Left = 0
    Top = 0
    Width = 875
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    Caption = '     Ventas por Cliente'
    Color = 5553385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 10
    ExplicitTop = -9
  end
  inherited DataSource: TDataSource
    DataSet = dmConVentasXCliente.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 107
    end
    inherited dxbTools: TdxBar
      DockedLeft = 238
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    Left = 40
    Top = 104
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42760.381338460650000000
      BuiltInReportLink = True
    end
  end
end
