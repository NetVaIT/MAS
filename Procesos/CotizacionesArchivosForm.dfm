inherited frmCotizacionesArchivos: TfrmCotizacionesArchivos
  Caption = 'Archivos asociados a Cotizaci'#243'n'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        object tvMasterNombreArchivo: TcxGridDBColumn
          Caption = 'Archivo'
          DataBinding.FieldName = 'NombreArchivo'
          Options.Editing = False
          Width = 277
        end
        object tvMasterNotas: TcxGridDBColumn
          DataBinding.FieldName = 'Notas'
          Width = 345
        end
      end
    end
  end
  inherited DataSource: TDataSource
    AutoEdit = True
    DataSet = dmCotizacionesArchivos.adodsMaster
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
    inherited dxBarButton7: TdxBarButton
      Action = DatasetPost
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
      ReportDocument.CreationDate = 42755.483110092590000000
      BuiltInReportLink = True
    end
  end
end
