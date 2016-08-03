inherited rptCostoInventario: TrptCostoInventario
  Caption = 'rptCostoInventario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    Top = 53
    Height = 231
    inherited cxGrid: TcxGrid
      Height = 231
      inherited tvMaster: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = tvMasterImporte
          end>
        OptionsView.Footer = True
        object tvMasterIdentificador1: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador1'
          Width = 86
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 303
        end
        object tvMasterExistencia: TcxGridDBColumn
          DataBinding.FieldName = 'Existencia'
          Width = 84
        end
        object tvMastercosto: TcxGridDBColumn
          DataBinding.FieldName = 'costo'
          Width = 70
        end
        object tvMasterImporte: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
          Width = 90
        end
      end
    end
  end
  object PnlTitulo: TPanel [8]
    Left = 0
    Top = 0
    Width = 651
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    Caption = '     Costo Inventario'
    Color = 5553385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 9
  end
  inherited DataSource: TDataSource
    DataSet = DMrptCostoInventario.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      ReportDocument.CreationDate = 42585.482013171300000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
