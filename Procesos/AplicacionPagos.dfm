object FrmAplicacionPago: TFrmAplicacionPago
  Left = 0
  Top = 0
  Caption = 'Aplicaci'#243'n Pago'
  ClientHeight = 380
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PnlDatosPago: TPanel
    Left = 0
    Top = 57
    Width = 786
    Height = 146
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 174
      Top = 52
      Width = 63
      Height = 14
      Caption = 'Folio Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 52
      Width = 65
      Height = 14
      Caption = 'Serie Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 376
      Top = 54
      Width = 104
      Height = 14
      Caption = 'Importe a aplicar'
      FocusControl = cxDBTxtEdtImporteAplicar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 174
      Top = 5
      Width = 93
      Height = 14
      Caption = 'Nombre Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 98
      Width = 79
      Height = 14
      Caption = 'Serie Factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 174
      Top = 97
      Width = 77
      Height = 14
      Caption = 'Folio Factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 24
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Fecha'
      FocusControl = cxDBDateEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBTxtEdtImporteAplicar: TcxDBTextEdit
      Left = 376
      Top = 70
      DataBinding.DataField = 'Importe'
      DataBinding.DataSource = DSAplicacion
      TabOrder = 0
      Width = 121
    end
    object cxDBLabel1: TcxDBLabel
      Left = 174
      Top = 24
      DataBinding.DataField = 'NombreCliente'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 550
    end
    object cxDBLabel2: TcxDBLabel
      Left = 174
      Top = 71
      DataBinding.DataField = 'FolioPago'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 129
    end
    object cxDBLabel3: TcxDBLabel
      Left = 24
      Top = 72
      DataBinding.DataField = 'SeriePago'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 129
    end
    object cxDBLabel5: TcxDBLabel
      Left = 24
      Top = 117
      DataBinding.DataField = 'serieFactura'
      DataBinding.DataSource = DSAplicacion
      Height = 21
      Width = 129
    end
    object cxDBLabel6: TcxDBLabel
      Left = 174
      Top = 117
      DataBinding.DataField = 'FolioFactura'
      DataBinding.DataSource = DSAplicacion
      Height = 21
      Width = 129
    end
    object cxDBLabel7: TcxDBLabel
      Left = 376
      Top = 117
      DataBinding.DataField = 'IdCFDI'
      DataBinding.DataSource = DSAplicacion
      Visible = False
      Height = 21
      Width = 129
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 21
      Top = 25
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = DSAplicacion
      TabOrder = 7
      Width = 121
    end
  end
  object cxGrid: TcxGrid
    Left = 0
    Top = 242
    Width = 786
    Height = 138
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    object tvMaster: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsConFacturasPendientes
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
      object tvMasterFecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
      end
      object tvMasterSerie: TcxGridDBColumn
        DataBinding.FieldName = 'Serie'
        Width = 112
      end
      object tvMasterFolio: TcxGridDBColumn
        DataBinding.FieldName = 'Folio'
        Width = 108
      end
      object tvMasterTotal: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Width = 106
      end
      object tvMasterSaldoDocumento: TcxGridDBColumn
        Caption = 'Saldo Documento'
        DataBinding.FieldName = 'SaldoDocumento'
        Width = 136
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = tvMaster
    end
  end
  object PnlDisponible: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 50
      Top = 20
      Width = 92
      Height = 13
      Caption = 'Saldo Disponible'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBLblDisponible: TcxDBLabel
      Left = 160
      Top = 18
      DataBinding.DataField = 'Saldo'
      DataBinding.DataSource = DSPago
      Height = 21
      Width = 129
    end
    object BtBtnAgregar: TBitBtn
      Left = 465
      Top = 15
      Width = 89
      Height = 25
      Caption = 'Agregar '
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 1
    end
    object BtBtnAplicar: TBitBtn
      Left = 576
      Top = 15
      Width = 89
      Height = 25
      Caption = 'Aplicar'
      Enabled = False
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
      TabOrder = 2
      OnClick = BtBtnAplicarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 203
    Width = 786
    Height = 39
    Align = alTop
    Caption = 'Documentos pendientes del cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DSPago: TDataSource
    DataSet = dmPagos.adodsMaster
    Left = 20
    Top = 2
  end
  object dsConFacturasPendientes: TDataSource
    DataSet = dmPagos.ADODtStConFactPendientes
    Left = 708
    Top = 144
  end
  object DSAplicacion: TDataSource
    DataSet = dmPagos.ADODtStAplicacionesPagos
    OnStateChange = DSAplicacionStateChange
    Left = 708
    Top = 64
  end
end
