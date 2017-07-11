inherited dmrptInventarioExistencia: TdmrptInventarioExistencia
  inherited adodsReport: TADODataSet
    CommandText = 
      'SELECT P.Identificador1, I.Existencia'#13#10'FROM  Inventario AS I '#13#10'I' +
      'NNER JOIN Productos AS P ON P.IdProducto = I.IdProducto'#13#10'ORDER B' +
      'Y P.orden --P.Identificador1'
  end
  inherited ppReport: TppReport
    Columns = 7
    ColumnPositions.Strings = (
      '10054'
      '57944'
      '105834'
      '153723'
      '201613'
      '249503'
      '297392')
    Units = utScreenPixels
    mmColumnWidth = 47942
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
      mmHeight = 0
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand [2]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 5300
        mmTop = 0
        mmWidth = 21167
        BandType = 2
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'EXIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 26202
        mmTop = 0
        mmWidth = 15875
        BandType = 2
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4498
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'Identificador1'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 0
        mmWidth = 14816
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Existencia'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4233
        mmLeft = 26202
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        mmWidth = 334434
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        mmLeft = 322004
        mmWidth = 10583
        LayerName = Foreground
      end
    end
  end
end
