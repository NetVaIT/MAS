inherited frmMain: TfrmMain
  Caption = 'MAS -Principal'
  Font.Height = -32
  ExplicitWidth = 656
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 39
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Caption = 'Catalogos'
      Groups = <
        item
          Caption = ''
          ToolbarName = 'dxBarManagerBar1'
        end>
      Index = 1
    end
    object dxRibbon1Tab3: TdxRibbonTab
      Caption = 'Almac'#233'n'
      Groups = <>
      Index = 2
    end
    object dxRibbon1Tab4: TdxRibbonTab
      Caption = 'Ventas'
      Groups = <
        item
          Caption = ''
          ToolbarName = 'dxBarManagerBar3'
        end>
      Index = 3
    end
    object dxRibbon1Tab5: TdxRibbonTab
      Caption = 'Compras'
      Groups = <>
      Index = 4
    end
    object dxRibbon1Tab6: TdxRibbonTab
      Caption = 'Cuentas X Cobrar'
      Groups = <>
      Index = 5
    end
  end
  inherited dxRibbonBackstageView1: TdxRibbonBackstageView
    inherited dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet
      inherited cxLabel1: TcxLabel
        Style.IsFontAssigned = True
      end
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbArchivo: TdxBar
      FloatClientWidth = 51
      FloatClientHeight = 76
    end
    object dxBarManagerBar1: TdxBar [2]
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 140
      FloatClientHeight = 432
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerBar3: TdxBar [3]
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 83
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton16'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actBancos
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actMonedas
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actUbicaciones
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actCotizacionMonedas
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actUnidadMedida
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actMetodosPagos
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actClientes
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actProveedores
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actEmpleados
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actProductos
      Category = 0
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = actPedidos
      Category = 0
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = actFacturacion
      Category = 0
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = actCotizaciones
      Category = 0
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = actPedidos
      Category = 0
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Action = actFacturacion
      Category = 0
    end
  end
  inherited cxSmallImages: TcxImageList
    FormatVersion = 1
  end
  inherited cxLargeImages: TcxImageList
    FormatVersion = 1
  end
  inherited ActionList: TActionList
    Left = 424
    Top = 72
    object actCatalogo: TAction [0]
      Category = 'Catalogo'
      Caption = 'Catalogo'
      OnExecute = actCatalogoExecute
    end
    object actBancos: TAction
      Tag = 1
      Category = 'Catalogo'
      Caption = 'Bancos'
      ImageIndex = 18
      OnExecute = actCatalogoExecute
    end
    object actMonedas: TAction
      Tag = 2
      Category = 'Catalogo'
      Caption = 'Monedas'
      ImageIndex = 14
      OnExecute = actCatalogoExecute
    end
    object actUbicaciones: TAction
      Tag = 3
      Category = 'Catalogo'
      Caption = 'Ubicaciones'
      ImageIndex = 15
      OnExecute = actCatalogoExecute
    end
    object actCotizacionMonedas: TAction
      Tag = 4
      Category = 'Catalogo'
      Caption = 'Cotizacion de Monedas'
      ImageIndex = 19
      OnExecute = actCatalogoExecute
    end
    object actUnidadMedida: TAction
      Tag = 5
      Category = 'Catalogo'
      Caption = 'Unidad de Medida'
      ImageIndex = 37
      OnExecute = actCatalogoExecute
    end
    object actMetodosPagos: TAction
      Tag = 6
      Category = 'Catalogo'
      Caption = 'Metodos de Pago'
      ImageIndex = 41
      OnExecute = actCatalogoExecute
    end
    object actClientes: TAction
      Tag = 7
      Category = 'Catalogo'
      Caption = 'Clientes'
      ImageIndex = 38
      OnExecute = actCatalogoExecute
    end
    object actProveedores: TAction
      Tag = 8
      Category = 'Catalogo'
      Caption = 'Proveedores'
      ImageIndex = 39
      OnExecute = actCatalogoExecute
    end
    object actEmpleados: TAction
      Tag = 9
      Category = 'Catalogo'
      Caption = 'Empleados'
      ImageIndex = 42
      OnExecute = actCatalogoExecute
    end
    object actProductos: TAction
      Tag = 10
      Category = 'Catalogo'
      Caption = 'Productos'
      ImageIndex = 12
      OnExecute = actCatalogoExecute
    end
    object actCotizaciones: TAction
      Tag = 20
      Category = 'Ventas'
      Caption = 'Cotizaciones'
      ImageIndex = 22
      OnExecute = actCatalogoExecute
    end
    object actPedidos: TAction
      Tag = 21
      Category = 'Ventas'
      Caption = 'Pedidos'
      ImageIndex = 21
    end
    object actFacturacion: TAction
      Category = 'Ventas'
      Caption = 'Facturacion'
      ImageIndex = 33
    end
  end
end
