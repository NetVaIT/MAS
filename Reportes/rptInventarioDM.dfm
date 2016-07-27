inherited dmrptInventario: TdmrptInventario
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT Productos.IdProducto, Productos.Identificador1, Productos' +
      '.Identificador2, Productos.Identificador3, Productos.Descripcion' +
      ', v_ProductosInventario.PrecioVenta, v_ProductosInventario.Exist' +
      'enciaIncial, '#13#10'v_ProductosInventario.CantidadEntradaMensual, v_P' +
      'roductosInventario.CantidadSalidaMensual, v_ProductosInventario.' +
      'Existencia, v_ProductosInventario.CostoPromedio, v_ProductosInve' +
      'ntario.CostoTotal, '#13#10'v_ProductosInventario.ImporteEntradaMensual' +
      ', v_ProductosInventario.ImporteSalidaMensual'#13#10'FROM v_ProductosIn' +
      'ventario '#13#10'INNER JOIN Productos ON v_ProductosInventario.IdProdu' +
      'cto = Productos.IdProducto'#13#10'ORDER BY Productos.Identificador1'
  end
  inherited ppReport: TppReport
    Units = utScreenPixels
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppImage4: TppImage
        LayerName = Foreground
      end
      inherited ppLabel6: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 10583
      object ppLabel1: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 4770
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'DESCRIPCI'#211'N'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 31750
        mmTop = 4770
        mmWidth = 79375
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'INICIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 111080
        mmTop = 4770
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'ENTRADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 132290
        mmTop = 4770
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'SALIDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 153459
        mmTop = 4770
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'FINAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 4770
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'PROMEDIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 195791
        mmTop = 4770
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 222250
        mmTop = 4770
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'ENTRADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 254001
        mmTop = 4770
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'SALIDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 285751
        mmTop = 4770
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'EXISTENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 111122
        mmTop = 795
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'EXISTENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174628
        mmTop = 794
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'COSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 195789
        mmTop = 785
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4233
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Identificador1'
        DataPipeline = dbpReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 0
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Descripcion'
        DataPipeline = dbpReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 31750
        mmTop = 0
        mmWidth = 79375
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ExistenciaIncial'
        DataPipeline = dbpReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 111125
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CantidadEntradaMensual'
        DataPipeline = dbpReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 132292
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CantidadSalidaMensual'
        DataPipeline = dbpReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 153459
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'Existencia'
        DataPipeline = dbpReport
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CostoPromedio'
        DataPipeline = dbpReport
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 195785
        mmTop = 0
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CostoTotal'
        DataPipeline = dbpReport
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 222225
        mmTop = 0
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'ImporteEntradaMensual'
        DataPipeline = dbpReport
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 254009
        mmTop = 0
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'ImporteSalidaMensual'
        DataPipeline = dbpReport
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 285759
        mmTop = 0
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 222250
        mmTop = 0
        mmWidth = 95250
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CostoTotal'
        DataPipeline = dbpReport
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 222250
        mmTop = 1584
        mmWidth = 31750
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'ImporteEntradaMensual'
        DataPipeline = dbpReport
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 254001
        mmTop = 1588
        mmWidth = 31750
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'ImporteSalidaMensual'
        DataPipeline = dbpReport
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 285751
        mmTop = 1588
        mmWidth = 31750
        BandType = 7
        LayerName = Foreground
      end
    end
  end
end
