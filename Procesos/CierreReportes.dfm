object FrmReportesCierre: TFrmReportesCierre
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Reportes Cierre'
  ClientHeight = 505
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    Caption = '     Reportes de Cierre'
    Color = 5553385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -299
    ExplicitWidth = 990
  end
  object Panel1: TPanel
    Left = 0
    Top = 22
    Width = 707
    Height = 483
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 280
    ExplicitTop = 248
    ExplicitWidth = 185
    ExplicitHeight = 41
    object SpdBtnConsultaFecha: TSpeedButton
      Left = 32
      Top = 303
      Width = 131
      Height = 25
      Caption = 'Generar Reportes '
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      OnClick = SpdBtnConsultaFechaClick
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 79
      Width = 297
      Height = 209
      Caption = 'Seleccione reportes a generar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ChckLstBxREportesCierre: TCheckListBox
        Left = 16
        Top = 32
        Width = 249
        Height = 161
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Listado de Pedidos de Clientes'
          'Facturas Expedidas'
          'Listado de Costo del Inventario')
        ParentFont = False
        TabOrder = 0
      end
    end
    object PnlFechas: TPanel
      Left = 16
      Top = 6
      Width = 321
      Height = 67
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 23
        Width = 34
        Height = 14
        Caption = 'Desde'
      end
      object Label2: TLabel
        Left = 165
        Top = 23
        Width = 30
        Height = 14
        Caption = 'Hasta'
      end
      object Label3: TLabel
        Left = 8
        Top = 0
        Width = 127
        Height = 14
        Caption = 'Periodo a Considerar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDtEdtDesde: TcxDateEdit
        Left = 8
        Top = 39
        TabOrder = 0
        Width = 145
      end
      object cxDtEdtHasta: TcxDateEdit
        Left = 160
        Top = 39
        TabOrder = 1
        Width = 137
      end
    end
  end
end
