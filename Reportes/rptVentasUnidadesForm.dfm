inherited frmrptVentasUnidades: TfrmrptVentasUnidades
  Caption = 'frmrptVentasUnidades'
  ClientWidth = 702
  ExplicitWidth = 702
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 702
    ExplicitWidth = 702
  end
  inherited splDetail1: TSplitter
    Width = 702
    ExplicitWidth = 702
  end
  inherited splDetail2: TSplitter
    Width = 702
    ExplicitWidth = 702
  end
  inherited pnlMaster: TPanel
    Width = 702
    ExplicitWidth = 702
    inherited cxGrid: TcxGrid
      Width = 702
      ExplicitWidth = 702
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdentificador1: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador1'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 304
        end
        object tvMasterCantidadA: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadA'
        end
        object tvMasterCantidadM: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadM'
        end
        object tvMasterExistencia: TcxGridDBColumn
          DataBinding.FieldName = 'Existencia'
        end
        object tvMasterCantidadP: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadP'
        end
        object tvMasterCantidadF: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadF'
        end
        object tvMasterBacKorder: TcxGridDBColumn
          DataBinding.FieldName = 'BacKorder'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 702
    ExplicitWidth = 702
  end
  inherited pnlDetail2: TPanel
    Width = 702
    ExplicitWidth = 702
  end
  inherited pnlDetail1: TPanel
    Width = 702
    ExplicitWidth = 702
  end
  inherited pnlClose: TPanel
    Width = 702
    ExplicitWidth = 702
    inherited btnClose: TButton
      Left = 617
      ExplicitLeft = 617
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbFilter: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxedtPeriodo'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end>
      Visible = True
    end
    object cxedtPeriodo: TcxBarEditItem
      Caption = 'Periodo'
      Category = 0
      Hint = 'Periodo'
      Visible = ivAlways
      ShowCaption = True
      Width = 303
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.GridMode = True
      Properties.KeyFieldNames = 'IdPeriodo'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsPeriodos
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
      BuiltInReportLink = True
    end
  end
  object dsPeriodos: TDataSource
    AutoEdit = False
    Left = 296
    Top = 95
  end
end
