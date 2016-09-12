inherited dmRPTRegistroDiarioFact: TdmRPTRegistroDiarioFact
  Height = 413
  Width = 441
  inherited adodsReport: TADODataSet
    CommandText = 
      'select  Ci.Fecha,P.razonSocial, M.Descripcion as Ciudad,ie.Condu' +
      'cto as Linea , Pd.Identificador,CI.serie, Ci.folio ,IE.CantidadC' +
      'ajas,ie.Valor,IE.Servicio, Ie.Contenido  '#13#10' from InformacionEntr' +
      'egas IE'#13#10'  inner join CFDI Ci on  IE.IDCFDI= Ci.IdCFDI'#13#10'  inner ' +
      'join Personas P on ie.idpersonacliente=P.IdPersona'#13#10'  inner join' +
      ' PersonasDomicilios Pd on Pd.IdPersonaDomicilio= IE.IDPersonaDom' +
      'icilio'#13#10'  inner join Domicilios D on D.IdDomicilio= Pd.IdDomicil' +
      'io  '#13#10'  inner join Municipios M on M.IdMunicipio=D.IdMunicipio'#13#10 +
      '  '#13#10'WHERE Ci.fecha>DATEADD(dd, DATEDIFF(dd,0,GETDATE()), 0) and ' +
      'ci.fecha<DATEADD(dd, DATEDIFF(dd,0,GETDATE()+1), 0)'
    object adodsReportFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object adodsReportrazonSocial: TStringField
      FieldName = 'razonSocial'
      Size = 300
    end
    object adodsReportCiudad: TStringField
      FieldName = 'Ciudad'
      Size = 50
    end
    object adodsReportLinea: TStringField
      FieldName = 'Linea'
      Size = 100
    end
    object adodsReportIdentificador: TIntegerField
      FieldName = 'Identificador'
    end
    object adodsReportserie: TStringField
      FieldName = 'serie'
    end
    object adodsReportfolio: TLargeintField
      FieldName = 'folio'
    end
    object adodsReportCantidadCajas: TIntegerField
      FieldName = 'CantidadCajas'
    end
    object adodsReportValor: TFloatField
      FieldName = 'Valor'
    end
    object adodsReportServicio: TStringField
      FieldName = 'Servicio'
      Size = 50
    end
    object adodsReportContenido: TStringField
      FieldName = 'Contenido'
      Size = 500
    end
  end
  inherited dbpReport: TppDBPipeline
    Left = 176
  end
  inherited ppReport: TppReport
    PrinterSetup.PaperName = 'Letter (8,5" x 11")'
    PrinterSetup.mmPaperWidth = 279400
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\Desarrollo\TractoPartes\MAS\Procesos\RegistroDiarioFacturas.r' +
      'tm'
    Left = 256
    DataPipelineName = 'dbpReport'
    inherited ppTitleBand1: TppTitleBand
      inherited pplblTitle: TppLabel
        SaveOrder = -1
        mmWidth = 217223
        LayerName = Foreground
      end
      inherited ppImage4: TppImage
        LayerName = Foreground
      end
      inherited ppLabel6: TppLabel
        SaveOrder = -1
        mmWidth = 217223
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      object ppLabel1: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'FECHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 3440
        mmTop = 1588
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 25619
        mmTop = 1588
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'CIUDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 100727
        mmTop = 1588
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'L'#205'NEA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 136708
        mmTop = 1588
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'NOCLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 160027
        mmTop = 1588
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'FACTURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 180876
        mmTop = 1588
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'CJS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 203092
        mmTop = 1588
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'OBSERVACIONES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 231765
        mmTop = 1588
        mmWidth = 31485
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'MONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 213141
        mmTop = 1588
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Fecha'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 3440
        mmTop = 265
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'razonSocial'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 25632
        mmTop = 265
        mmWidth = 74348
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Ciudad'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 100727
        mmTop = 265
        mmWidth = 34396
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Linea'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 136744
        mmTop = 265
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Identificador'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 162937
        mmTop = 265
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'serie'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 181139
        mmTop = 265
        mmWidth = 7934
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'folio'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 190131
        mmTop = 265
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CantidadCajas'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 204944
        mmTop = 265
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'Valor'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 213141
        mmTop = 265
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Servicio'
        DataPipeline = dbpReport
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpReport'
        mmHeight = 4763
        mmLeft = 232719
        mmTop = 265
        mmWidth = 26360
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLineFooter: TppLine
        mmWidth = 256646
        LayerName = Foreground
      end
      inherited pplblPrintDate: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited pplblPageNo: TppSystemVariable
        SaveOrder = -1
        mmLeft = 247386
        mmTop = 2646
        mmWidth = 10583
        LayerName = Foreground
      end
    end
  end
end
