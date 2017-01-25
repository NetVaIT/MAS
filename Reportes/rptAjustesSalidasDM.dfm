inherited dmrptAjusteSalida: TdmrptAjusteSalida
  inherited adodsReport: TADODataSet
    CommandText = 
      'Select Os.FechaRegistro, OSI.IdOrdenSalida,  OSI.ClaveProducto,'#13 +
      #10' P.Descripcion,  OSI. CantidadSolicitada,osi.cantidaddespachada' +
      ','#13#10'OSI.CostoUnitario, OSI.Precio,'#13#10' OSI.Importe, i.CostoPromedio' +
      ', (i.costopromedio *Osi.CAntidaddespachada) as ImporteTotal'#13#10' fr' +
      'om OrdenesSalidasItems OSI inner join Ordenessalidas OS '#13#10'      ' +
      '     on OS. IdOrdenSalida =osi.IDOrdensalida'#13#10#13#10'inner Join Produ' +
      'ctos P on P.idproducto= OSI.idproducto '#13#10'inner join inventario I' +
      ' on I.idproducto=P.idproducto'#13#10'Where os.idordenSalidatipo =4'#13#10' a' +
      'nd '#13#10'OS.FEchaRegistro >=:FIni and OS.FEchaRegistro<=:FFin'
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
      Precision = 18
      Size = 6
    end
    object adodsReportPrecio: TFMTBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 6
    end
    object adodsReportImporte: TFMTBCDField
      FieldName = 'Importe'
      Precision = 18
      Size = 6
    end
    object adodsReportCostoPromedio: TFloatField
      FieldName = 'CostoPromedio'
    end
    object adodsReportImporteTotal: TFloatField
      FieldName = 'ImporteTotal'
      ReadOnly = True
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
        Font.Name = 'arial'
        mmLeft = 52122
        mmWidth = 142000
        LayerName = Foreground
      end
      inherited ppImage4: TppImage
        LayerName = Foreground
      end
      inherited ppLabel6: TppLabel
        SaveOrder = -1
        Font.Name = 'Arial'
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
      object ppLabel3: TppLabel
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
      object ppLabel4: TppLabel
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
      object ppLabel5: TppLabel
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
      object ppLabel7: TppLabel
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
      object ppLabel8: TppLabel
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
        DataField = 'FechaRegistro'
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
        mmTop = 265
        mmWidth = 16933
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 52917
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
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 134673
        mmTop = 265
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CostoPromedio'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 154782
        mmTop = 265
        mmWidth = 16933
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
        mmLeft = 174361
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
        Font.Name = 'Arial'
        mmLeft = 5292
        mmWidth = 37835
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        Font.Name = 'Arial'
        mmLeft = 182563
        mmWidth = 10319
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
        Font.Name = 'Arial'
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
        Font.Name = 'Arial'
        Font.Size = 10
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
        Font.Size = 10
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
    end
  end
end
