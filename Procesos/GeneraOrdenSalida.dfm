object FrmGeneraOrdenSalida: TFrmGeneraOrdenSalida
  Left = 0
  Top = 0
  Caption = 'Generar Orden Salida'
  ClientHeight = 535
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 957
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 767
    object DBText1: TDBText
      Left = 72
      Top = 24
      Width = 65
      Height = 17
      DataField = 'FechaRegistro'
      DataSource = DSOrdenSalida
    end
    object DBText2: TDBText
      Left = 184
      Top = 24
      Width = 65
      Height = 17
      DataField = 'Estatus'
      DataSource = DSOrdenSalida
    end
    object DBText3: TDBText
      Left = 560
      Top = 7
      Width = 65
      Height = 17
      DataField = 'Subtotal'
      DataSource = DSOrdenSalida
    end
    object DBText4: TDBText
      Left = 560
      Top = 30
      Width = 65
      Height = 17
      DataField = 'IVA'
      DataSource = DSOrdenSalida
    end
    object DBText5: TDBText
      Left = 560
      Top = 50
      Width = 65
      Height = 17
      DataField = 'Total'
      DataSource = DSOrdenSalida
    end
    object BtBtnGuardar: TBitBtn
      Left = 760
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Guardar'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BtBtnGuardarClick
    end
    object BitBtn2: TBitBtn
      Left = 648
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 957
    Height = 462
    Align = alClient
    DataSource = DSOrdenSalidaItems
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ClaveProducto'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Producto'
        Width = 295
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CantidadSolicitada'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CantidadDespachada'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Importe'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Observaciones'
        Visible = True
      end>
  end
  object DSOrdenSalida: TDataSource
    DataSet = dmCotizaciones.ADODtStOrdenSalida
    Left = 20
    Top = 8
  end
  object DSOrdenSalidaItems: TDataSource
    DataSet = dmCotizaciones.ADODtStOrdenSalidaItem
    Left = 740
    Top = 216
  end
  object DSQryActualizacion: TDataSource
    DataSet = dmCotizaciones.ADOQryAuxiliar
    Left = 738
    Top = 264
  end
end
