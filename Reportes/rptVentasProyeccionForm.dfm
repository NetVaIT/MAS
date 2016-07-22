inherited frmrptVentasProyeccion: TfrmrptVentasProyeccion
  Caption = 'frmrptVentasProyeccion'
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
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Editing = True
        object tvMasterRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object tvMasterIdProducto: TcxGridDBColumn
          DataBinding.FieldName = 'IdProducto'
          Visible = False
          Options.Editing = False
        end
        object tvMasterIdPersona1: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona1'
          Visible = False
        end
        object tvMasterIdPersona2: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona2'
          Visible = False
        end
        object tvMasterIdPersona3: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona3'
          Visible = False
        end
        object tvMasterIdentificador1: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador1'
          Options.Editing = False
          Width = 200
        end
        object tvMasterIdentificador2: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador2'
          Visible = False
          Options.Editing = False
          Width = 200
        end
        object tvMasterIdentificador3: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador3'
          Visible = False
          Options.Editing = False
          Width = 200
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 304
        end
        object tvMasterCantidadAnual: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadAnual'
          Options.Editing = False
        end
        object tvMasterCantidadMensual: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadMensual'
          Options.Editing = False
        end
        object tvMasterCantidadFuturo: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadFuturo'
          Options.Editing = False
        end
        object tvMasterBackorder: TcxGridDBColumn
          DataBinding.FieldName = 'Backorder'
        end
        object tvMasterMeses: TcxGridDBColumn
          DataBinding.FieldName = 'Meses'
        end
        object tvMasterCantidadPromedio: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadPromedio'
          Options.Editing = False
        end
        object tvMasterCantidadRequerida: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadRequerida'
          Options.Editing = False
        end
        object tvMasterExistencia: TcxGridDBColumn
          DataBinding.FieldName = 'Existencia'
          Options.Editing = False
        end
        object tvMasterCantidadBackorder: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadBackorder'
        end
        object tvMasterCantidadComprar: TcxGridDBColumn
          DataBinding.FieldName = 'CantidadComprar'
          Options.Editing = False
        end
        object tvMasterProveedor1: TcxGridDBColumn
          DataBinding.FieldName = 'Proveedor1'
          Visible = False
        end
        object tvMasterComprar1: TcxGridDBColumn
          DataBinding.FieldName = 'Comprar1'
          Visible = False
        end
        object tvMasterProveedor2: TcxGridDBColumn
          DataBinding.FieldName = 'Proveedor2'
          Visible = False
        end
        object tvMasterComprar2: TcxGridDBColumn
          DataBinding.FieldName = 'Comprar2'
          Visible = False
        end
        object tvMasterProveedor3: TcxGridDBColumn
          DataBinding.FieldName = 'Proveedor3'
          Visible = False
        end
        object tvMasterComprar3: TcxGridDBColumn
          DataBinding.FieldName = 'Comprar3'
          Visible = False
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
  inherited DataSource: TDataSource
    AutoEdit = True
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbNavigator: TdxBar
      DockedLeft = 105
    end
    inherited dxbTools: TdxBar
      DockedLeft = 233
    end
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
    end
    object dxbProcess: TdxBar [4]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 292
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 720
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edtMeses'
        end
        item
          Visible = True
          ItemName = 'btnExecute'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
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
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxCalcEditProperties'
    end
    object edtMeses: TcxBarEditItem
      Caption = 'Meses para la proyecci'#243'n'
      Category = 0
      Hint = 'Meses para la proyecci'#243'n'
      Visible = ivAlways
      ShowCaption = True
      InternalEditValue = 0
    end
    object btnExecute: TdxBarButton
      Caption = 'Poryectar'
      Category = 0
      Visible = ivAlways
      ImageIndex = 13
      PaintStyle = psCaptionGlyph
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
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
end
