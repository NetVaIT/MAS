object FrmCambioPrecios: TFrmCambioPrecios
  Left = 0
  Top = 0
  Caption = 'Cambio de Precios'
  ClientHeight = 188
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 394
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 454
    DesignSize = (
      394
      49)
    object BtBtnAcepta: TBitBtn
      Left = 191
      Top = 13
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Aceptar'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BtBtnAceptaClick
      ExplicitLeft = 251
    end
    object BtBtnCancela: TBitBtn
      Left = 279
      Top = 13
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BtBtnCancelaClick
      ExplicitLeft = 339
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 394
    Height = 139
    Align = alClient
    TabOrder = 1
    ExplicitTop = 71
    ExplicitWidth = 635
    ExplicitHeight = 291
    object LblPrecioCambio: TLabel
      Left = 240
      Top = 32
      Width = 52
      Height = 13
      Caption = 'Porcentaje'
    end
    object cxEdtPrecio: TcxCurrencyEdit
      Left = 241
      Top = 48
      EditValue = 0.000000000000000000
      Properties.DisplayFormat = ',0.00;-,0.00'
      TabOrder = 0
      Width = 113
    end
    object RdGrpCriterioCambio: TRadioGroup
      Left = 16
      Top = 14
      Width = 161
      Height = 91
      Caption = 'Criterio de Cambio'
      ItemIndex = 0
      Items.Strings = (
        'Incremento por Porcentaje'
        'Incrementar por Valor'
        'Colocar Valor')
      TabOrder = 1
      OnClick = RdGrpCriterioCambioClick
    end
  end
end
