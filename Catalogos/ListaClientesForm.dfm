object FrmBuscaCliente: TFrmBuscaCliente
  Left = 0
  Top = 0
  Caption = 'Buscar Cliente'
  ClientHeight = 300
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1128
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 635
    object SpdBtnBuscaParte: TSpeedButton
      Left = 271
      Top = 19
      Width = 23
      Height = 22
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
      OnClick = SpdBtnBuscaParteClick
    end
    object EdtBusca: TEdit
      Left = 56
      Top = 19
      Width = 209
      Height = 21
      TabOrder = 0
      OnKeyDown = EdtBuscaKeyDown
    end
    object RdGrpBuscaX: TRadioGroup
      Left = 312
      Top = 8
      Width = 169
      Height = 44
      Caption = 'Busca por:'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nombre'
        'Num.Cliente')
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 1128
    Height = 243
    Align = alClient
    TabOrder = 1
    ExplicitTop = 49
    ExplicitWidth = 635
    object DBGrdClientes: TDBGrid
      Left = 1
      Top = 1
      Width = 1126
      Height = 241
      Align = alClient
      DataSource = DSBuscarCliente
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrdClientesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'idPersona'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'RFC'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'RazonSocial'
          Width = 297
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'identificador'
          Title.Caption = 'Identificador'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IdPersonaDomicilio'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Calle'
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NoExterior'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NoInterior'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodigoPostal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Poblacion'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Municipio'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estado'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pais'
          Width = 120
          Visible = True
        end>
    end
  end
  object DSBuscarCliente: TDataSource
    DataSet = dmCotizaciones.ADODSAuxiliar
    Left = 544
    Top = 16
  end
end
