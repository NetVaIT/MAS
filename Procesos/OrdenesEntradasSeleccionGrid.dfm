inherited frmOrdenesEntradasSeleccionGrid: TfrmOrdenesEntradasSeleccionGrid
  Caption = 'Seleccionar documento base'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
      ExplicitTop = -3
      inherited tvMaster: TcxGridDBTableView
        OnDblClick = tvMasterDblClick
        object tvMasterIdDocumentoEntrada: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumentoEntrada'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
        end
        object tvMasterFacturaProveedor: TcxGridDBColumn
          Caption = 'Factura Proveedor'
          DataBinding.FieldName = 'FacturaProveedor'
          Width = 100
        end
        object tvMasterNumero: TcxGridDBColumn
          DataBinding.FieldName = 'Numero'
          Visible = False
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 71
        end
        object tvMasterProvedor: TcxGridDBColumn
          DataBinding.FieldName = 'Provedor'
          Width = 300
        end
        object tvMasterTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
        end
        object tvMasterObservaciones: TcxGridDBColumn
          DataBinding.FieldName = 'Observaciones'
          Width = 300
        end
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmOrdenesEntradas.adodsFacturas
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
      ReportDocument.CreationDate = 42655.413701307870000000
      BuiltInReportLink = True
    end
  end
end
