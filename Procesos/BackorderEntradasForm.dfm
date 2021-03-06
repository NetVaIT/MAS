inherited frmBackorderEntradas: TfrmBackorderEntradas
  Caption = 'frmBackorderEntradas'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail1: TSplitter
    Top = 287
    Align = alTop
  end
  inherited pnlMaster: TPanel
    Height = 256
    Align = alTop
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        OptionsView.GroupByBox = True
        object tvMasterIdBackorderEntrada: TcxGridDBColumn
          DataBinding.FieldName = 'IdBackorderEntrada'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
        end
        object tvMasterProvedor: TcxGridDBColumn
          DataBinding.FieldName = 'Provedor'
          Visible = False
          GroupIndex = 0
          Width = 304
        end
        object tvMasterIdentificador1: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador1'
          Width = 100
        end
        object tvMasterProducto: TcxGridDBColumn
          DataBinding.FieldName = 'Producto'
          Width = 304
        end
        object tvMasterOrdenada: TcxGridDBColumn
          DataBinding.FieldName = 'Ordenada'
        end
        object tvMasterFacturada: TcxGridDBColumn
          DataBinding.FieldName = 'Facturada'
        end
        object tvMasterEntrada: TcxGridDBColumn
          DataBinding.FieldName = 'Entrada'
        end
        object tvMasterTransito: TcxGridDBColumn
          DataBinding.FieldName = 'Transito'
        end
        object tvMasterPendiente: TcxGridDBColumn
          DataBinding.FieldName = 'Pendiente'
        end
      end
    end
  end
  inherited pnlDetail1: TPanel
    Top = 290
    Height = 38
    Align = alClient
  end
  inherited DataSource: TDataSource
    DataSet = dmBackorderEntradas.adodsMaster
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 107
    end
    inherited dxbTools: TdxBar
      DockedLeft = 238
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
      ReportDocument.CreationDate = 42788.515237881950000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
