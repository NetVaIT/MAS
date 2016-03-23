inherited frmOrdenesEntradasSeleccionGrid: TfrmOrdenesEntradasSeleccionGrid
  Caption = 'Seleccionar documento base'
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    inherited cxGrid: TcxGrid
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
        object tvMasterNumero: TcxGridDBColumn
          DataBinding.FieldName = 'Numero'
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
          Width = 66
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
    DataSet = dmOrdenesEntradas.adodsFacturasSeleccion
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
