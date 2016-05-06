inherited frmConfiguraciones: TfrmConfiguraciones
  Caption = 'frmConfiguraciones'
  ClientWidth = 1112
  ExplicitWidth = 1112
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 1112
  end
  inherited splDetail1: TSplitter
    Width = 1112
  end
  inherited splDetail2: TSplitter
    Width = 1112
  end
  inherited pnlMaster: TPanel
    Width = 1112
    inherited cxGrid: TcxGrid
      Width = 1112
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdPais: TcxGridDBColumn
          DataBinding.FieldName = 'IdPais'
          Visible = False
        end
        object tvMasterIdMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'IdMoneda'
          Visible = False
        end
        object tvMasterPais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 121
        end
        object tvMasterMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Width = 114
        end
        object tvMasterRutaBaseFacturas: TcxGridDBColumn
          DataBinding.FieldName = 'RutaBaseFacturas'
          Width = 351
        end
        object tvMasterCorreoEnvio: TcxGridDBColumn
          DataBinding.FieldName = 'CorreoEnvio'
          Width = 285
        end
        object tvMasterUltimaSeriePago: TcxGridDBColumn
          Caption = 'Serie Pago Actual'
          DataBinding.FieldName = 'UltimaSeriePago'
          Width = 92
        end
        object tvMasterUltimoFolioPago: TcxGridDBColumn
          DataBinding.FieldName = 'Folio Pago Actual'
          Width = 89
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 1112
  end
  inherited pnlDetail2: TPanel
    Width = 1112
  end
  inherited pnlDetail1: TPanel
    Width = 1112
  end
  inherited pnlClose: TPanel
    Width = 1112
    inherited btnClose: TButton
      Left = 1027
    end
  end
  inherited ActionList: TActionList
    inherited DatasetInsert: TDataSetInsert
      Visible = False
    end
    inherited DatasetDelete: TDataSetDelete
      Visible = False
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmConfiguracion.adodsMaster
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
