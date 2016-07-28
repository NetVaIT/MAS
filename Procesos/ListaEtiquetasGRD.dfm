object FrmListaEtiquetas: TFrmListaEtiquetas
  Left = 0
  Top = 0
  Caption = 'Lista Etiquetas'
  ClientHeight = 348
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 57
    Align = alTop
    TabOrder = 0
    object BtBtnAcepta: TBitBtn
      Tag = 3
      Left = 673
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
      TabOrder = 0
      OnClick = DBGrdEtiquetasDblClick
    end
    object BtBtnCancela: TBitBtn
      Tag = 3
      Left = 772
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
      TabOrder = 1
      OnClick = BtBtnCancelaClick
    end
  end
  object DBGrdEtiquetas: TDBGrid
    Left = 0
    Top = 57
    Width = 1101
    Height = 291
    Align = alClient
    DataSource = DSListaEtiquetas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrdEtiquetasDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idOrdenSalida'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FechaRegistro'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Conducto'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Servicio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Contenido'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CondicionEntrega'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Observaciones'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EstatusEntrega'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PagoFlete'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Asegurado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CantidadCajas'
        Visible = True
      end>
  end
  object DSListaEtiquetas: TDataSource
    DataSet = DMOrdenesSalidas.ADOQryAuxiliar
    Left = 644
    Top = 8
  end
end
