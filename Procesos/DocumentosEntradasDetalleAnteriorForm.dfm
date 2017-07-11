inherited frmDocumentosEntradasDetalleAnterior: TfrmDocumentosEntradasDetalleAnterior
  Caption = 'frmDocumentosEntradasDetalleAnterior'
  ClientWidth = 1153
  ExplicitWidth = 1153
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 1153
    ExplicitWidth = 1153
  end
  inherited splDetail1: TSplitter
    Width = 1153
    ExplicitWidth = 1153
  end
  inherited splDetail2: TSplitter
    Width = 1153
    ExplicitWidth = 1153
  end
  inherited pnlMaster: TPanel
    Width = 1153
    ExplicitWidth = 1153
    inherited cxGrid: TcxGrid
      Width = 1153
      ExplicitWidth = 1153
      inherited tvMaster: TcxGridDBTableView
        OptionsData.Editing = True
        object tvMasterRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
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
          Width = 292
        end
        object tvMasterSeleccionados: TcxGridDBColumn
          DataBinding.FieldName = 'Seleccionados'
          Options.Editing = False
          Width = 75
        end
        object tvMasterRestante: TcxGridDBColumn
          DataBinding.FieldName = 'Restantes'
          Options.Editing = False
        end
        object tvMasterCantidadPendiente: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadPendiente'
          Visible = False
          Options.Editing = False
        end
        object tvMasterPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
          Options.Editing = False
        end
        object tvMasterCantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
          Options.IncSearch = False
        end
        object tvMasterOrden: TcxGridDBColumn
          DataBinding.FieldName = 'Orden'
          Options.IncSearch = False
        end
        object tvMasterFacturaProveedor: TcxGridDBColumn
          DataBinding.FieldName = 'FacturaProveedor'
          Visible = False
          Options.Editing = False
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 1153
    ExplicitWidth = 1153
  end
  inherited pnlDetail2: TPanel
    Width = 1153
    ExplicitWidth = 1153
  end
  inherited pnlDetail1: TPanel
    Width = 1153
    ExplicitWidth = 1153
  end
  inherited pnlClose: TPanel
    Width = 1153
    ExplicitWidth = 1153
    inherited btnClose: TButton
      Left = 1068
      ExplicitLeft = 1068
    end
  end
  inherited DataSource: TDataSource
    AutoEdit = True
    DataSet = dmDocumentosEntradasDetalleAnterior.dxmdPendientes
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
      ReportDocument.CreationDate = 42621.584186284720000000
      BuiltInReportLink = True
    end
  end
end
