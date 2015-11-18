inherited FrmProductosFotos: TFrmProductosFotos
  Caption = 'FrmProductosFotos'
  ClientWidth = 699
  ExplicitWidth = 699
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 699
    ExplicitWidth = 699
  end
  inherited splDetail1: TSplitter
    Width = 699
    ExplicitWidth = 699
  end
  inherited splDetail2: TSplitter
    Width = 699
    ExplicitWidth = 699
  end
  inherited pnlMaster: TPanel
    Width = 699
    ExplicitWidth = 699
    inherited cxGrid: TcxGrid
      Width = 699
      ExplicitWidth = 699
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdProductoFoto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProductoFoto'
          Visible = False
        end
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Width = 73
        end
        object tvMasterIdDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'IdDocumento'
          Width = 76
        end
        object tvMasterNombreArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'NombreArchivo'
          Width = 320
        end
        object tvMasterNotas: TcxGridDBColumn
          DataBinding.FieldName = 'Notas'
          Width = 221
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 699
    ExplicitWidth = 699
  end
  inherited pnlDetail2: TPanel
    Width = 699
    ExplicitWidth = 699
  end
  inherited pnlDetail1: TPanel
    Width = 699
    ExplicitWidth = 699
  end
  inherited pnlClose: TPanel
    Width = 699
    ExplicitWidth = 699
    inherited btnClose: TButton
      Left = 614
      ExplicitLeft = 614
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmProductosFotos.adodsMaster
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
