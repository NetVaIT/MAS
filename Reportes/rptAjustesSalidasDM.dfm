inherited dmrptAjusteSalida: TdmrptAjusteSalida
  inherited adodsReport: TADODataSet
    CommandText = 
      'Select Os.FechaRegistro, OSI.IdOrdenSalida,  OSI.ClaveProducto,'#13 +
      #10' P.Descripcion,  OSI. CantidadSolicitada,osi.cantidaddespachada' +
      ','#13#10'OSI.CostoUnitario, OSI.Precio,'#13#10' OSI.Importe, i.CostoPromedio' +
      ', (OSI.CostoUnitario *Osi.CAntidaddespachada) as ImporteTotal'#13#10' ' +
      'from OrdenesSalidasItems OSI inner join Ordenessalidas OS '#13#10'    ' +
      '       on OS. IdOrdenSalida =osi.IDOrdensalida'#13#10#13#10'inner Join Pro' +
      'ductos P on P.idproducto= OSI.idproducto '#13#10'inner join inventario' +
      ' I on I.idproducto=P.idproducto'#13#10'Where os.idordenSalidatipo =4'#13#10 +
      ' and '#13#10'OS.FEchaRegistro >=:FIni and OS.FEchaRegistro<=:FFin'
    Parameters = <
      item
        Name = 'FIni'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    object adodsReportFechaRegistro: TDateTimeField
      FieldName = 'FechaRegistro'
    end
    object adodsReportIdOrdenSalida: TIntegerField
      FieldName = 'IdOrdenSalida'
    end
    object adodsReportClaveProducto: TStringField
      FieldName = 'ClaveProducto'
      Size = 50
    end
    object adodsReportDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object adodsReportCantidadSolicitada: TFloatField
      FieldName = 'CantidadSolicitada'
    end
    object adodsReportcantidaddespachada: TFloatField
      FieldName = 'cantidaddespachada'
    end
    object adodsReportCostoUnitario: TFMTBCDField
      FieldName = 'CostoUnitario'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportPrecio: TFMTBCDField
      FieldName = 'Precio'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportImporte: TFMTBCDField
      FieldName = 'Importe'
      currency = True
      Precision = 18
      Size = 6
    end
    object adodsReportCostoPromedio: TFloatField
      FieldName = 'CostoPromedio'
      currency = True
    end
    object adodsReportImporteTotal: TFloatField
      FieldName = 'ImporteTotal'
      ReadOnly = True
      currency = True
    end
  end
  inherited ppReport: TppReport
    PrinterSetup.Orientation = poPortrait
    PrinterSetup.mmPaperHeight = 355600
    PrinterSetup.mmPaperWidth = 215900
    Template.FileName = 'C:\Desarrollo\TractoPartes\MAS\Reportes\AjustesSAlida.rtm'
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        Font.Size = 12
        mmLeft = 52122
        mmWidth = 142000
        LayerName = Foreground
      end
      inherited ppImage4: TppImage
        LayerName = Foreground
      end
      inherited ppLabel6: TppLabel
        SaveOrder = -1
        mmLeft = 52122
        mmWidth = 142000
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
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
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Clave Producto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 23283
        mmTop = 0
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Descripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 54504
        mmTop = 0
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 137054
        mmTop = 0
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Costo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 156369
        mmTop = 0
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'Importe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 176742
        mmTop = 0
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'FechaRegistro'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 265
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ClaveProducto'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 23283
        mmTop = 265
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Descripcion'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 54504
        mmTop = 265
        mmWidth = 80169
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'cantidaddespachada'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 137054
        mmTop = 265
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CostoUnitario'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.0000;-$#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 156369
        mmTop = 265
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ImporteTotal'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.0000;-$#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 176742
        mmTop = 265
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        mmWidth = 193676
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        Font.Name = 'Courier New'
        mmLeft = 5292
        mmWidth = 46302
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        Font.Name = 'Courier New'
        mmLeft = 181769
        mmWidth = 11113
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
        mmLeft = 2381
        mmTop = 265
        mmWidth = 193675
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'Totales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 110861
        mmTop = 4233
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'cantidaddespachada'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 137054
        mmTop = 4498
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'ImporteTotal'
        DataPipeline = dbpReport
        DisplayFormat = '$#,0.0000;-$#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4498
        mmLeft = 176742
        mmTop = 4498
        mmWidth = 18255
        BandType = 7
        LayerName = Foreground
      end
    end
  end
end
