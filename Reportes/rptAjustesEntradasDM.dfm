inherited dmRptAjustesEntrada: TdmRptAjustesEntrada
  inherited adodsReport: TADODataSet
    CommandText = 
      'Select OE.FEcha, OEI.IdOrdenEntrada,  OEI.ClaveProducto,'#13#10' P.Des' +
      'cripcion,  OEI. Cantidad,'#13#10'OEI.CostoAproximado, OEI.Costo,OEI.Pr' +
      'ecioVenta, OEI.ImporteTotal'#13#10' from OrdenesEntradasItems OEI inne' +
      'r join OrdenesEntradas OE '#13#10'           on OE. IdOrdenEntrada =oe' +
      'i.IDOrdenEntrada'#13#10#13#10'inner Join Productos P on P.idproducto= OEI.' +
      'idproducto'#13#10'Where oe.idordenentradatipo =4 and OE.FEcha >=:FIni ' +
      'and OE.FEcha<=:FFin'
    Parameters = <
      item
        Name = 'FIni'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FFin'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    object adodsReportFEcha: TDateTimeField
      FieldName = 'FEcha'
    end
    object adodsReportIdOrdenEntrada: TIntegerField
      FieldName = 'IdOrdenEntrada'
    end
    object adodsReportClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object adodsReportDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsReportCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object adodsReportCostoAproximado: TFMTBCDField
      FieldName = 'CostoAproximado'
      Precision = 18
      Size = 6
    end
    object adodsReportCosto: TFMTBCDField
      FieldName = 'Costo'
      Precision = 18
      Size = 6
    end
    object adodsReportPrecioVenta: TFMTBCDField
      FieldName = 'PrecioVenta'
      Precision = 18
      Size = 6
    end
    object adodsReportImporteTotal: TFMTBCDField
      FieldName = 'ImporteTotal'
      Precision = 18
      Size = 6
    end
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poPortrait
    PrinterSetup.mmPaperHeight = 355600
    PrinterSetup.mmPaperWidth = 215900
    Template.FileName = 'C:\Desarrollo\TractoPartes\MAS\Reportes\AjustesEntrada.rtm'
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        mmWidth = 140000
        LayerName = Foreground
      end
      inherited ppImage4: TppImage
        LayerName = Foreground
      end
      inherited ppLabel6: TppLabel
        SaveOrder = -1
        mmWidth = 140000
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      object ppLabel1: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 0
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Clave Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 20108
        mmTop = 0
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Descripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 52917
        mmTop = 0
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 134673
        mmTop = 0
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 153194
        mmTop = 0
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 174361
        mmTop = 0
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'FEcha'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 529
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ClaveProducto'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 20108
        mmTop = 529
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Descripcion'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 52917
        mmTop = 529
        mmWidth = 80433
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Cantidad'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 134673
        mmTop = 529
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CostoAproximado'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 153194
        mmTop = 529
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ImporteTotal'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 173302
        mmTop = 529
        mmWidth = 19302
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 13494
      inherited ppLineFooter: TppLine
        mmHeight = 7673
        mmWidth = 193675
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        mmLeft = 182404
        mmTop = 8202
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'LineFooter1'
        Anchors = [atLeft, atTop, atRight, atBottom]
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2910
        mmLeft = 2910
        mmTop = 265
        mmWidth = 193675
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'Cantidad'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 134673
        mmTop = 4498
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'ImporteTotal'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 174361
        mmTop = 4498
        mmWidth = 19315
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Totales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 108215
        mmTop = 4498
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
    end
  end
end
