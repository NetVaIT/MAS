inherited frmRptAntiguedadSaldos: TfrmRptAntiguedadSaldos
  Caption = 'frmRptAntiguedadSaldos'
  ClientWidth = 1166
  ExplicitWidth = 1166
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 1166
  end
  inherited splDetail1: TSplitter
    Width = 1166
  end
  inherited splDetail2: TSplitter
    Width = 1166
  end
  inherited pnlMaster: TPanel
    Width = 1166
    inherited cxGrid: TcxGrid
      Width = 1166
      ExplicitTop = -3
      ExplicitWidth = 1166
      inherited tvMaster: TcxGridDBTableView
        object tvMasterCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          Width = 308
        end
        object tvMasterDias: TcxGridDBColumn
          DataBinding.FieldName = 'Dias'
          Width = 48
        end
        object tvMasterFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvMasterSerie: TcxGridDBColumn
          DataBinding.FieldName = 'Serie'
          Width = 70
        end
        object tvMasterFolio: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
          Width = 77
        end
        object tvMasterSaldoDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoDocumento'
          Width = 92
        end
        object tvMasterVigentes: TcxGridDBColumn
          DataBinding.FieldName = 'Vigentes'
          Width = 75
        end
        object tvMasterVencidosa30das: TcxGridDBColumn
          DataBinding.FieldName = 'Vencidos a 30 d'#237'as'
          Width = 93
        end
        object tvMasterVencidosa60das: TcxGridDBColumn
          DataBinding.FieldName = 'Vencidos a 60 d'#237'as'
          Width = 95
        end
        object tvMasterVencidosa90das: TcxGridDBColumn
          DataBinding.FieldName = 'Vencidos a 90 d'#237'as'
          Width = 93
        end
        object tvMasterVencidosmsde90das: TcxGridDBColumn
          DataBinding.FieldName = 'Vencidos m'#225's de 90 d'#237'as'
          Width = 124
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 1166
  end
  inherited pnlDetail2: TPanel
    Width = 1166
  end
  inherited pnlDetail1: TPanel
    Width = 1166
  end
  inherited pnlClose: TPanel
    Width = 1166
    inherited btnClose: TButton
      Left = 1081
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmRptAntiguedadSaldos.adodsMaster
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
