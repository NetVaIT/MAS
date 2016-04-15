inherited rptCostoInventario: TrptCostoInventario
  Caption = 'rptCostoInventario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
