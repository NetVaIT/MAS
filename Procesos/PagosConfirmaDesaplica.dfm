object FrmConfirmaDesaplicacion: TFrmConfirmaDesaplicacion
  Left = 0
  Top = 0
  Caption = 'Confirmar Desaplicaci'#243'n de Pagos'
  ClientHeight = 300
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label10: TLabel
      Left = 35
      Top = 12
      Width = 119
      Height = 13
      Caption = 'Clave para Desaplicaci'#243'n'
    end
    object BtBtnDesaplicar: TBitBtn
      Left = 448
      Top = 21
      Width = 89
      Height = 25
      Caption = 'Desaplicar'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      WordWrap = True
      OnClick = BtBtnDesaplicarClick
    end
    object BitBtn2: TBitBtn
      Left = 560
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object EdtClaveDesaplicacion: TEdit
      Left = 35
      Top = 31
      Width = 166
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 700
    Height = 235
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 35
      Top = 12
      Width = 57
      Height = 13
      Caption = 'RazonSocial'
    end
    object Label2: TLabel
      Left = 352
      Top = 12
      Width = 61
      Height = 13
      Caption = 'Identificador'
    end
    object Label3: TLabel
      Left = 293
      Top = 58
      Width = 49
      Height = 13
      Caption = 'Folio Pago'
    end
    object Label4: TLabel
      Left = 150
      Top = 58
      Width = 51
      Height = 13
      Caption = 'Serie Pago'
    end
    object Label5: TLabel
      Left = 293
      Top = 122
      Width = 62
      Height = 13
      Caption = 'Folio Factura'
    end
    object Label6: TLabel
      Left = 150
      Top = 118
      Width = 64
      Height = 13
      Caption = 'Serie Factura'
    end
    object Label7: TLabel
      Left = 35
      Top = 58
      Width = 56
      Height = 13
      Caption = 'Fecha Pago'
    end
    object Label8: TLabel
      Left = 451
      Top = 122
      Width = 38
      Height = 13
      Caption = 'Importe'
    end
    object Label9: TLabel
      Left = 35
      Top = 122
      Width = 69
      Height = 13
      Caption = 'Fecha Factura'
    end
    object cxDBLabel1: TcxDBLabel
      Left = 32
      Top = 28
      DataBinding.DataField = 'RazonSocial'
      DataBinding.DataSource = DtSrcMostrarDatos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 314
    end
    object cxDBLabel2: TcxDBLabel
      Left = 352
      Top = 31
      DataBinding.DataField = 'Identificador'
      DataBinding.DataSource = DtSrcMostrarDatos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 16
      Width = 61
    end
    object cxDBLabel3: TcxDBLabel
      Left = 290
      Top = 73
      DataBinding.DataField = 'FolioPago'
      DataBinding.DataSource = DtSrcMostrarDatos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 100
    end
    object cxDBLabel4: TcxDBLabel
      Left = 147
      Top = 73
      DataBinding.DataField = 'SeriePago'
      DataBinding.DataSource = DtSrcMostrarDatos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 97
    end
    object cxDBLabel5: TcxDBLabel
      Left = 290
      Top = 137
      DataBinding.DataField = 'FolioFactura'
      DataBinding.DataSource = DtSrcMostrarDatos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 100
    end
    object cxDBLabel6: TcxDBLabel
      Left = 147
      Top = 137
      DataBinding.DataField = 'SerieFactura'
      DataBinding.DataSource = DtSrcMostrarDatos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 97
    end
    object cxDBLabel7: TcxDBLabel
      Left = 32
      Top = 73
      DataBinding.DataField = 'FechaPago'
      DataBinding.DataSource = DtSrcMostrarDatos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 109
    end
    object cxDBLabel8: TcxDBLabel
      Left = 448
      Top = 137
      DataBinding.DataField = 'importe'
      DataBinding.DataSource = DtSrcMostrarDatos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 97
    end
    object cxDBLabel9: TcxDBLabel
      Left = 32
      Top = 137
      DataBinding.DataField = 'FechaFactura'
      DataBinding.DataSource = DtSrcMostrarDatos
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 21
      Width = 97
    end
  end
  object DtSrcDesaplica: TDataSource
    DataSet = dmAplicacionesConsulta.ADOQryAuxiliar
    Left = 576
    Top = 73
  end
  object DtSrcMostrarDatos: TDataSource
    DataSet = dmAplicacionesConsulta.adodsMaster
    Left = 16
    Top = 241
  end
end
