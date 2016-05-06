inherited frmBackorderEntradasDetalles: TfrmBackorderEntradasDetalles
  Caption = 'frmBackorderEntradasDetalles'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      ExplicitTop = -3
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdBackorderEntradaDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdBackorderEntradaDetalle'
          Visible = False
        end
        object tvMasterIdBackorderEntrada: TcxGridDBColumn
          DataBinding.FieldName = 'IdBackorderEntrada'
          Visible = False
        end
        object tvMasterIdDocumentoEntradaDetalle: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoEntradaDetalle'
          Visible = False
        end
        object tvMasterIdOrdenEntradaItem: TcxGridDBColumn
          DataBinding.FieldName = 'IdOrdenEntradaItem'
          Visible = False
        end
        object tvMasterIdBackorderEntradaTipo: TcxGridDBColumn
          DataBinding.FieldName = 'IdBackorderEntradaTipo'
          Visible = False
        end
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
        end
        object tvMasterFolio: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
        end
        object tvMasterCantidad: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
        end
        object tvMasterIdentificador1: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador1'
          Width = 100
        end
        object tvMasterProducto: TcxGridDBColumn
          DataBinding.FieldName = 'Producto'
          Width = 304
        end
      end
    end
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
      BuiltInReportLink = True
    end
  end
end
