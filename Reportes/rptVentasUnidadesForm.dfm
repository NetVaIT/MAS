inherited frmrptVentasUnidades: TfrmrptVentasUnidades
  Caption = 'frmrptVentasUnidades'
  ClientWidth = 702
  ExplicitWidth = 702
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 702
    ExplicitWidth = 702
  end
  inherited splDetail1: TSplitter
    Width = 702
    ExplicitWidth = 702
  end
  inherited splDetail2: TSplitter
    Width = 702
    ExplicitWidth = 702
  end
  inherited pnlMaster: TPanel
    Top = 53
    Width = 702
    Height = 231
    ExplicitWidth = 702
    inherited cxGrid: TcxGrid
      Width = 702
      Height = 231
      ExplicitWidth = 702
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
        end
        object tvMasterIdentificador1: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador1'
          Width = 100
        end
        object tvMasterIdentificador2: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador2'
          Visible = False
          Width = 100
        end
        object tvMasterIdentificador3: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador3'
          Visible = False
          Width = 100
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 304
        end
        object tvMasterExistencia: TcxGridDBColumn
          DataBinding.FieldName = 'Existencia'
        end
        object tvMasterCantidadAnual: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadAnual'
        end
        object tvMasterCantidadMensual: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadMensual'
        end
        object tvMasterCantidadPromedio: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadPromedio'
        end
        object tvMasterCantidadFuturo: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadFuturo'
        end
        object tvMasterBackorder: TcxGridDBColumn
          DataBinding.FieldName = 'Backorder'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 702
    ExplicitWidth = 702
  end
  inherited pnlDetail2: TPanel
    Width = 702
    ExplicitWidth = 702
  end
  inherited pnlDetail1: TPanel
    Width = 702
    ExplicitWidth = 702
  end
  inherited pnlClose: TPanel
    Width = 702
    ExplicitWidth = 702
    inherited btnClose: TButton
      Left = 617
      ExplicitLeft = 617
    end
  end
  object PnlTitulo: TPanel [8]
    Left = 0
    Top = 0
    Width = 702
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    Caption = '     Ventas de Unidades'
    Color = 5553385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 9
    ExplicitLeft = 8
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbFilter: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxedtPeriodo'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end>
    end
    object cxedtPeriodo: TcxBarEditItem
      Caption = 'Periodo'
      Category = 0
      Hint = 'Periodo'
      Visible = ivAlways
      ShowCaption = True
      Width = 303
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.GridMode = True
      Properties.KeyFieldNames = 'IdPeriodo'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsPeriodos
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42811.662646365740000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  object dsPeriodos: TDataSource
    AutoEdit = False
    Left = 296
    Top = 95
  end
end
