inherited frmDocumentosEntradasDetalleAnterior: TfrmDocumentosEntradasDetalleAnterior
  Caption = 'frmDocumentosEntradasDetalleAnterior'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      inherited tvMaster: TcxGridDBTableView
        OptionsData.Editing = True
        object tvMasterIdDocumentoEntradaDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoEntradaDetalle'
          Visible = False
          Options.Editing = False
        end
        object tvMasterIdDocumentoEntrada: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoEntrada'
          Visible = False
          Options.Editing = False
        end
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
          Options.Editing = False
        end
        object tvMasterNumero: TcxGridDBColumn
          DataBinding.FieldName = 'Numero'
          Visible = False
          GroupIndex = 0
          Options.Editing = False
        end
        object tvMasterClaveProducto: TcxGridDBColumn
          DataBinding.FieldName = 'ClaveProducto'
          Options.Editing = False
          Width = 200
        end
        object tvMasterIdentificadorProveedor: TcxGridDBColumn
          DataBinding.FieldName = 'IdentificadorProveedor'
          Options.Editing = False
          Width = 200
        end
        object tvMasterProducto: TcxGridDBColumn
          DataBinding.FieldName = 'Producto'
          Options.Editing = False
          Width = 304
        end
        object tvMasterCantidadPendiente: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadPendiente'
          Options.Editing = False
        end
        object tvMasterPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
          Options.Editing = False
        end
        object tvMasterCantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
        end
      end
    end
  end
  inherited DataSource: TDataSource
    AutoEdit = True
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
      ReportDocument.CreationDate = 42621.584186284720000000
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
