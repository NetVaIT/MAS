unit ImpresosSalidasDM;

interface

uses
  winapi.windows,System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, ppDB, ppDBPipe,
  ppParameter, ppDesignLayer, ppBands, myChkBox, dxGDIPlusClasses, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppVar,Forms,
  ppModule, raCodMod,shellapi, dialogs;

type
  TDMImpresosSalidas = class(TDataModule)
    ppRprtOrdenSalida: TppReport;
    ppParameterList1: TppParameterList;
    ppDBPplnGenerales: TppDBPipeline;
    ppDBPplnItemsOrdenSalida: TppDBPipeline;
    ADODtStOrdenSalida: TADODataSet;
    ADODtStOrdenSalidaidOrdenSalida: TAutoIncField;
    ADODtStOrdenSalidaIdDocumentoSalida: TIntegerField;
    ADODtStOrdenSalidaIdOrdenEstatus: TIntegerField;
    ADODtStOrdenSalidaIdPersonaRecolecta: TIntegerField;
    ADODtStOrdenSalidaIdPersonaRevisa: TIntegerField;
    ADODtStOrdenSalidaIdPersonaEmpaca: TIntegerField;
    ADODtStOrdenSalidaFechaRegistro: TDateTimeField;
    ADODtStOrdenSalidaTotal: TFMTBCDField;
    ADODtStOrdenSalidaFechaIniRecolecta: TDateTimeField;
    ADODtStOrdenSalidaEstatus: TStringField;
    ADODtStOrdenSalidaFechaFinRecolecta: TDateTimeField;
    ADODtStOrdenSalidaFechaIniRevisa: TDateTimeField;
    ADODtStOrdenSalidaFechaFinRevisa: TDateTimeField;
    ADODtStOrdenSalidaFechaIniEmpaca: TDateTimeField;
    ADODtStOrdenSalidaFechaFinEmpaca: TDateTimeField;
    ADODtStOrdenSalidaSubtotal: TFMTBCDField;
    ADODtStOrdenSalidaIVA: TFMTBCDField;
    ADODtStOrdenSalidaCliente: TStringField;
    ADODtStOrdenSalidaItem: TADODataSet;
    ADODtStOrdenSalidaItemIdOrdenSalidaItem: TAutoIncField;
    ADODtStOrdenSalidaItemIdOrdenSalida: TIntegerField;
    ADODtStOrdenSalidaItemIdDocumentoSalidaDetalle: TIntegerField;
    ADODtStOrdenSalidaItemIdProducto: TIntegerField;
    ADODtStOrdenSalidaItemCantidadDespachada: TFloatField;
    ADODtStOrdenSalidaItemCantidadSolicitada: TFloatField;
    ADODtStOrdenSalidaItemPrecio: TFMTBCDField;
    ADODtStOrdenSalidaItemImporte: TFMTBCDField;
    ADODtStOrdenSalidaItemObservaciones: TStringField;
    ADODtStOrdenSalidaItemProducto: TStringField;
    ADODtStOrdenSalidaItemClaveProducto: TStringField;
    ADODtStOrdenSalidaItemIdUnidadMedida: TIntegerField;
    DSOrdenSalida: TDataSource;
    ADODtStOrdenSalEstatus: TADODataSet;
    ADODtStOrdenSalEstatusIdOrdenEstatus: TIntegerField;
    ADODtStOrdenSalEstatusIdentificador: TStringField;
    ADODtStOrdenSalEstatusDescripcion: TStringField;
    DSOrdenSalidaItems: TDataSource;
    adodSDocumentoSalida: TADODataSet;
    adodSDocumentoSalidaIdDocumentoSalida: TAutoIncField;
    adodSDocumentoSalidaIdPersona: TIntegerField;
    adodSDocumentoSalidaIdMoneda: TIntegerField;
    adodSDocumentoSalidaIdUsuario: TIntegerField;
    adodSDocumentoSalidaFechaRegistro: TDateTimeField;
    adodSDocumentoSalidaIVA: TFMTBCDField;
    adodSDocumentoSalidaSubTotal: TFMTBCDField;
    adodSDocumentoSalidaTotal: TFMTBCDField;
    adodSDocumentoSalidaVigenciaDias: TIntegerField;
    adodSDocumentoSalidaObservaciones: TStringField;
    adodSDocumentoSalidaCliente: TStringField;
    adodSDocumentoSalidaIdDomicilioCliente: TIntegerField;
    adodSDocumentoSalidaDireccioncliente: TStringField;
    adodsProductos: TADODataSet;
    adodsClientes: TADODataSet;
    adodsClientesIdPersona: TAutoIncField;
    adodsClientesRFC: TStringField;
    adodsClientesRazonSocial: TStringField;
    adodsClientesIDRol: TIntegerField;
    ADODtStDireccionesCliente: TADODataSet;
    ADODtStDireccionesClienteIdPersonaDomicilio: TAutoIncField;
    ADODtStDireccionesClienteIdPersona: TIntegerField;
    ADODtStDireccionesClienteIdDomicilio: TIntegerField;
    ADODtStDireccionesClienteIdDomicilioTipo: TIntegerField;
    ADODtStDireccionesClienteIdentificador: TIntegerField;
    ADODtStDireccionesClientePredeterminado: TBooleanField;
    ADODtStDireccionesClienteCalle: TStringField;
    ADODtStDireccionesClienteNoExterior: TStringField;
    ADODtStDireccionesClienteNoInterior: TStringField;
    ADODtStDireccionesClienteColonia: TStringField;
    ADODtStDireccionesClienteCodigoPostal: TStringField;
    ADODtStDireccionesClienteMunicipio: TStringField;
    ADODtStDireccionesClientePoblacion: TStringField;
    ADODtStDireccionesClienteEstado: TStringField;
    ADODtStDireccionesClientePais: TStringField;
    ADODtStDireccionesClienteDirCompleta: TStringField;
    adodSDocumentoSalidaEstatus: TStringField;
    ppRprtEtiquetaEnvio: TppReport;
    ppParameterList2: TppParameterList;
    ppDBPplnEtiquetas: TppDBPipeline;
    ADODtStDatosEtiqueta: TADODataSet;
    DSDatosEtiqueta: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppLabel24: TppLabel;
    ppDBText1: TppDBText;
    ppLabel26: TppLabel;
    ppDBText2: TppDBText;
    ppLabel27: TppLabel;
    ppDBText3: TppDBText;
    ppLabel28: TppLabel;
    ppDBText4: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText9: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine1: TppLine;
    ppImage2: TppImage;
    ppLabel36: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ADODtStDatosEtiquetaIdInfoEntrega: TAutoIncField;
    ADODtStDatosEtiquetaIdCFDI: TLargeintField;
    ADODtStDatosEtiquetaIDPersonaCliente: TIntegerField;
    ADODtStDatosEtiquetaIDPersonaDomicilio: TIntegerField;
    ADODtStDatosEtiquetaIDResponsableEntrega: TIntegerField;
    ADODtStDatosEtiquetaCondicionEntrega: TStringField;
    ADODtStDatosEtiquetaObservaciones: TStringField;
    ADODtStDatosEtiquetaEstatusEntrega: TStringField;
    ADODtStDatosEtiquetaIdTelefono: TIntegerField;
    ADODtStDatosEtiquetaContenido: TStringField;
    ADODtStDatosEtiquetaConducto: TStringField;
    ADODtStDatosEtiquetaServicio: TStringField;
    ADODtStDatosEtiquetaPagoFlete: TBooleanField;
    ADODtStDatosEtiquetaValor: TFloatField;
    ADODtStDatosEtiquetaAsegurado: TBooleanField;
    ADODtStDatosEtiquetaRazonSocial: TStringField;
    ADODtStDatosEtiquetaCalle: TStringField;
    ADODtStDatosEtiquetaNoExterior: TStringField;
    ADODtStDatosEtiquetaNoInterior: TStringField;
    ADODtStDatosEtiquetaColonia: TStringField;
    ADODtStDatosEtiquetaCodigoPostal: TStringField;
    ADODtStDatosEtiquetaEstado: TStringField;
    ADODtStDatosEtiquetaMunicipio: TStringField;
    ADODtStDatosEtiquetaRFC: TStringField;
    ADODtStDatosEtiquetaDireccioncompleta: TStringField;
    ADODtStDatosEtiquetaTelefono: TStringField;
    ADODtStDatosEtiquetaIdentificador: TIntegerField;
    adodSDocumentoSalidaIdentificador: TIntegerField;
    ADODtStOrdenSalidaIdentificador: TStringField;
    ppLabel37: TppLabel;
    ppDBText16: TppDBText;
    ADODtStOrdenSalidaItemUbicacion: TStringField;
    ADODtStBuscaUbicacion: TADODataSet;
    ppLabel38: TppLabel;
    ADODtStDocumentoDetalleItem: TADODataSet;
    ADODtStDocumentoDetalleItemIdAlmacen: TIntegerField;
    ADODtStDocumentoDetalleItemIDProducto: TIntegerField;
    ADODtStDocumentoDetalleItemIdDocumentoSalidaDetalle: TAutoIncField;
    ADODtStOrdenSalidaItemIDAlmacen: TIntegerField;
    ADODtStBuscaUbicacionCantidad: TFloatField;
    ADODtStBuscaUbicacionIDCategoria: TIntegerField;
    ADODtStBuscaUbicacionDescripcion: TStringField;
    ADODtStDatosEtiquetaOcurreChk: TBooleanField;
    ADODtStDatosEtiquetaDomicilioChk: TBooleanField;
    ADODtStDatosEtiquetaCobrarChk: TBooleanField;
    ppRprtEtiquetaSobre: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDBText21: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppDBPplnEtiquetaSobre: TppDBPipeline;
    ppDBText28: TppDBText;
    ppShape2: TppShape;
    ADODtStDatosEtiquetaCantidadCajas: TIntegerField;
    ADODtStDatosEtiquetaIdDocumentoGuia: TIntegerField;
    ADODtStDatosEtiquetaFechaProgramadaEnt: TDateTimeField;
    ADODtStDatosEtiquetaFechaRealEnt: TDateTimeField;
    ppRptOrdenEmbarque: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppImage3: TppImage;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText29: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel60: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    myDBCheckBox10: TmyDBCheckBox;
    ppLabel66: TppLabel;
    ppDBText39: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    ppDBPplnOrdenEmb: TppDBPipeline;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel55: TppLabel;
    ppDBText42: TppDBText;
    ppLabel61: TppLabel;
    ppShape3: TppShape;
    myDBCheckBox7: TmyDBCheckBox;
    ppSystemVariable1: TppSystemVariable;
    ppLabel57: TppLabel;
    ppDBText40: TppDBText;
    ADODtStDatosEtiquetaTelefonoCompleto: TStringField;
    ADODtStDatosEtiquetaLada: TStringField;
    ppEtiquetaPreimpresa: TppReport;
    ppParameterList5: TppParameterList;
    ppDBPpLnPreimresa: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppShape1: TppShape;
    ppImage1: TppImage;
    ppLabel12: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText15: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
    ppLabel42: TppLabel;
    ppDBText23: TppDBText;
    ppLabel49: TppLabel;
    ppLblCajaAct: TppLabel;
    ppLabel50: TppLabel;
    ppDBText11: TppDBText;
    ppDBText52: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppRprtFactUtilidades: TppReport;
    ppParameterList6: TppParameterList;
    ppDBPPRepFacturasUtil: TppDBPipeline;
    ADODtStRepFactUtilidad: TADODataSet;
    DSRepFactUtilidad: TDataSource;
    ADODtStRepFactUtilidadIDCFDI: TLargeintField;
    ADODtStRepFactUtilidadSerie: TStringField;
    ADODtStRepFactUtilidadFolio: TLargeintField;
    ADODtStRepFactUtilidadFecha: TDateTimeField;
    ADODtStRepFactUtilidadSubTotal: TFloatField;
    ADODtStRepFactUtilidadTotal: TFloatField;
    ADODtStRepFactUtilidadRazonSocial: TStringField;
    ADODtStRepFactUtilidadIdCFDIEstatus: TIntegerField;
    ADODtStRepFactUtilidadIdOrdenSalida: TIntegerField;
    ADODtStRepFactUtilidadIdCFDITipoDocumento: TIntegerField;
    ADODtStCostoFactura: TADODataSet;
    ADODtStCostoFacturaIdCFDI: TLargeintField;
    ADODtStCostoFacturaCostoTotal: TFloatField;
    ADODtStRepFactUtilidadCostoFactura: TFloatField;
    ppTitleBand1: TppTitleBand;
    ppImage4: TppImage;
    ppLabel6: TppLabel;
    ppTituloRep: TppLabel;
    ppHeaderBand6: TppHeaderBand;
    ppLine2: TppLine;
    ppLabel59: TppLabel;
    ppLabel62: TppLabel;
    ppLabel64: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel73: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ADODtStRepFactUtilidadUtilidad: TFloatField;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine4: TppLine;
    ppLabel74: TppLabel;
    adodtstCostoInventario: TADODataSet;
    adodtstCostoInventarioIdentificador1: TStringField;
    adodtstCostoInventarioDescripcion: TStringField;
    adodtstCostoInventarioExistencia: TFloatField;
    adodtstCostoInventariocosto: TFloatField;
    adodtstCostoInventarioImporte: TFloatField;
    ppRprtCostoInventario: TppReport;
    ppParameterList7: TppParameterList;
    ppDBPplnCostoInventario: TppDBPipeline;
    DSREporteCostoInventario: TDataSource;
    ppTitleBand2: TppTitleBand;
    ppImage5: TppImage;
    ppLabel75: TppLabel;
    ppLblTituloRep: TppLabel;
    ppHeaderBand7: TppHeaderBand;
    ppLabel83: TppLabel;
    ppLine5: TppLine;
    ppLabel80: TppLabel;
    ppLabel78: TppLabel;
    ppLabel82: TppLabel;
    ppLabel77: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText60: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLine7: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc6: TppDBCalc;
    ppLabel84: TppLabel;
    ppLine6: TppLine;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppLine3: TppLine;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText41: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    myDBCheckBox6: TmyDBCheckBox;
    myDBCheckBox8: TmyDBCheckBox;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    myDBCheckBox9: TmyDBCheckBox;
    myDBCheckBox11: TmyDBCheckBox;
    myDBCheckBox12: TmyDBCheckBox;
    ppLabel4: TppLabel;
    pplblCajaActPre: TppLabel;
    ppLabel58: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    procedure ADODtStDatosEtiquetaCalcFields(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemCalcFields(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ADODtStRepFactUtilidadCalcFields(DataSet: TDataSet);
  private
    FTextoAuxiliar: String;

    function ConcatenaUbicaciones (idProd,IdAlm:Integer):String;


    { Private declarations }
  public
    procedure PrintPDFFile(IDReporte: Integer; Cant:Integer=1;mostrar: boolean=true; nombrePDF:TFileName=''); //Ajuste may 30/16
    { Public declarations }
    Property TextoAuxiliar:String read FTextoAuxiliar write FTextoAuxiliar;
  end;

var
  DMImpresosSalidas: TDMImpresosSalidas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TDMImpresosSalidas.ADODtStDatosEtiquetaCalcFields(DataSet: TDataSet);
begin
  Dataset.FieldByName('DireccionCompleta').AsString:=Dataset.FieldByName('Calle').AsString+' '
  + Dataset.FieldByName('NoExterior').AsString+' '+ Dataset.FieldByName('NoInterior').AsString
  +' '+ Dataset.FieldByName('Colonia').AsString+' CP:'+ Dataset.FieldByName('CodigoPostal').AsString;

  Dataset.FieldByName('ocurrechk').AsBoolean:=dataset.FieldByName('Servicio').AsString='Ocurre';
  Dataset.FieldByName('Domiciliochk').AsBoolean:=dataset.FieldByName('Servicio').AsString='Domicilio';
  Dataset.FieldByName('Cobrarchk').AsBoolean:=not dataset.FieldByName('PagoFlete').AsBoolean;

  Dataset.FieldByName('TelefonoCompleto').AsString:=Dataset.FieldByName('Lada').AsString+' '
  + Dataset.FieldByName('Telefono').AsString;

end;

procedure TDMImpresosSalidas.ADODtStOrdenSalidaAfterOpen(DataSet: TDataSet);
begin

  ADODtStDocumentoDetalleItem.Open;
end;

procedure TDMImpresosSalidas.ADODtStOrdenSalidaItemCalcFields(
  DataSet: TDataSet);                                                                                                    //     Dataset.FieldByName('IdAlmacen').AsInteger
begin                                                                                                         //Almacen por defalult
  DataSet.FieldByName('Ubicacion').AsString:=ConcatenaUbicaciones(Dataset.FieldByName('IDProducto').AsInteger,1);
end;

procedure TDMImpresosSalidas.ADODtStRepFactUtilidadCalcFields(
  DataSet: TDataSet);
begin
  dataset.FieldByName('Utilidad').AsFloat:=dataset.FieldByName('Subtotal').AsFloat - dataset.FieldByName('costoFactura').AsFloat;
end;

function TDMImpresosSalidas.ConcatenaUbicaciones(idProd,
  IdAlm: Integer): String;
var Texto:String;
begin
  Texto:='';
  ADODtStBuscaUbicacion.Close;
  ADODtStBuscaUbicacion.Parameters.ParamByName('IDProducto').Value:=IdProd;
  ADODtStBuscaUbicacion.Parameters.ParamByName('IDAlmacen').VAlue:=IdAlm;
  ADODtStBuscaUbicacion.open;
  while (not ADODtStBuscaUbicacion.Eof) do
  begin
    Texto:=Texto+ ADODtStBuscaUbicacion.FieldByName('Descripcion').AsString+ ',';
    ADODtStBuscaUbicacion.Next;
  end;
  ADODtStBuscaUbicacion.Close;
  Result:=Texto;
end;
procedure TDMImpresosSalidas.DataModuleCreate(Sender: TObject);
begin

end;

//Ajustado May 30/16
procedure TDMImpresosSalidas.PrintPDFFile(IDReporte: Integer;Cant:Integer=1;mostrar: boolean=True; nombrePDF:TFileName='');
var                       // Modificado
  vPDFFileName: TFileName;
  Actual:Integer;
begin
   // Configura el reporte
  case IDReporte of
  1:begin
      ppRprtOrdenSalida.ShowPrintDialog:= False;
      ppRprtOrdenSalida.ShowCancelDialog:= False;
      ppRprtOrdenSalida.AllowPrintToArchive:= False;
      if Mostrar then //May 30/16
        ppRprtOrdenSalida.DeviceType:= 'Screen'
      else
      begin
        if nombrePDF<>'' then //May 30/16
        begin
          ppRprtOrdenSalida.DeviceType:= 'PDF';
          ppRprtOrdenSalida.PDFSettings.OpenPDFFile := False;
          ppRprtOrdenSalida.TextFileName:= nombrePDF;
        end; //Siempre muesta el PDF
      end;
    //    ppReport.PrinterSetup.Copies:= 1;
    // DES ABAN eNE7/16      ppReport.PrinterSetup.DocumentName:= ExtractFileName(vPDFFileName);
      ppRprtOrdenSalida.Print;
    end;
  2:begin  //Feb 11/16
    (*  Deshabilitado par usar el formato preimpreso
      ppRprtEtiquetaEnvio.ShowPrintDialog:= False;
      ppRprtEtiquetaEnvio.ShowCancelDialog:= False;
      ppRprtEtiquetaEnvio.AllowPrintToArchive:= False;
      if (cant>1) then   //Mientras se arregla lo del pdf de varias hojas
      begin
        ppRprtEtiquetaEnvio.DeviceType:= 'Screen';
        for Actual:=1 to Cant do
          begin
            ppLblCajaAct.Caption:=intToStr(Actual); //Poner nueva pagina
            ppRprtEtiquetaEnvio.Print;
          end;
      end
      else
      begin
        if Mostrar  then //May 30/16
          ppRprtEtiquetaEnvio.DeviceType:= 'Screen'
        else
        begin
          if nombrePDF<>'' then //May 30/16
          begin
            ppRprtEtiquetaEnvio.DeviceType:= 'PDF';
            ppRprtEtiquetaEnvio.PDFSettings.OpenPDFFile := False;
            ppRprtEtiquetaEnvio.TextFileName:= nombrePDF;
          end; //Siempre muesta el PDF
          for Actual:=1 to Cant do
          begin
            ppLblCajaAct.Caption:=intToStr(Actual); //Poner nueva pagina
            ppRprtEtiquetaEnvio.Print;
          end;
        end;
      end;//DEl else temporarl may 30/16
      *)
   (*    if (cant>1) then   //Mientras se arregla lo del pdf de varias hojas
      begin
        ppEtiquetaPreimpresa.Template.FileName:=ExtractFilePath(application.exeName)+'EtiquetapreimpresaDir.rtm'; //Jul 8/16
        ppEtiquetaPreimpresa.Template.LoadFromFile;  //Jul 8/16
        ppEtiquetaPreimpresa.ShowPrintDialog:= False;
        ppEtiquetaPreimpresa.ShowCancelDialog:= False;
        ppEtiquetaPreimpresa.AllowPrintToArchive:= False;   //Jul 8/16 para ver si no mueestra el dialogo

        ppEtiquetaPreimpresa.DeviceType:= 'Printer'; //Ver si se manda directo
        for Actual:=1 to Cant do
          begin
            ppLblCajaActPre.Caption:=intToStr(Actual); //Poner nueva pagina
            ppEtiquetaPreimpresa.Print;
          end;
      end
      else  //29 jul/16 deshabilitado *)
      begin
        ppEtiquetaPreimpresa.Template.FileName:=ExtractFilePath(application.exeName)+'EtiquetapreimpresaPDF.rtm'; //Jul 8/16
        ppEtiquetaPreimpresa.Template.LoadFromFile; //Jul 8/16
        ppEtiquetaPreimpresa.ShowPrintDialog:= False;
        ppEtiquetaPreimpresa.ShowCancelDialog:= False;
        ppEtiquetaPreimpresa.AllowPrintToArchive:= False;   //Mov  hasta aca jul 8

        if Mostrar  then //May 30/16
          ppEtiquetaPreimpresa.DeviceType:= 'Screen'
        else
        begin
          if nombrePDF<>'' then //May 30/16
          begin
            ppEtiquetaPreimpresa.DeviceType:= 'PDF';
            ppEtiquetaPreimpresa.PDFSettings.OpenPDFFile := False;
            ppEtiquetaPreimpresa.TextFileName:= nombrePDF;
          end; //Siempre muesta el PDF
          for Actual:=1 to Cant do    //Aca no entraria nunca mientras
          begin           // ppLblCajaAct
            ppLblCajaActPre.Caption:=intToStr(Actual); //Poner nueva pagina
            ppEtiquetaPreimpresa.Print;
            //mOSTRAR para imprimir
            if cant >1 then
            begin
               if FileExists(nombrePDF) then
                 ShellExecute(application.Handle, 'open', PChar(nombrePDF), nil, nil, SW_SHOWNORMAL);
               showMessage('Imprima la etiqueta par contiuar');
            end;
          end;
        end;
      end;//DEl else temporarl may 30/16


    end;
  3:begin  //may 10/16
      ppRptOrdenEmbarque.ShowPrintDialog:= False;
      ppRptOrdenEmbarque.ShowCancelDialog:= False;
      ppRptOrdenEmbarque.AllowPrintToArchive:= False;
      if Mostrar then //May 30/16
        ppRptOrdenEmbarque.DeviceType:= 'Screen'
      else
      begin
        if nombrePDF<>'' then //May 30/16
        begin
          ppRptOrdenEmbarque.DeviceType:= 'PDF';
          ppRptOrdenEmbarque.PDFSettings.OpenPDFFile := False;
          ppRptOrdenEmbarque.TextFileName:= nombrePDF;
        end; //Siempre muesta el PDF
      end;
      ppRptOrdenEmbarque.Print;
    end;
  4:begin //ListaFActuras-Presupuestos   //Jul 25/16
      ppRprtFactUtilidades.ShowPrintDialog:= False;
      ppRprtFactUtilidades.ShowCancelDialog:= False;
      ppRprtFactUtilidades.AllowPrintToArchive:= False;
      ppTituloRep.Caption:=TextoAuxiliar; // debe venir completo
      if Mostrar then //May 30/16
        ppRprtFactUtilidades.DeviceType:= 'Screen'
      else
      begin
        if nombrePDF<>'' then //May 30/16
        begin
          ppRprtFactUtilidades.DeviceType:= 'PDF';
          ppRprtFactUtilidades.PDFSettings.OpenPDFFile := False;
          ppRprtFactUtilidades.TextFileName:= nombrePDF;
        end; //Siempre muesta el PDF
      end;
      ppRprtFactUtilidades.Print;
  end;
  5:begin //CostoInventario //Jul 26/16
      ppRprtCostoInventario.ShowPrintDialog:= False;
      ppRprtCostoInventario.ShowCancelDialog:= False;
      ppRprtCostoInventario.AllowPrintToArchive:= False;
      ppLblTituloRep.Caption:=TextoAuxiliar; // debe venir completo
      if Mostrar then //May 30/16
        ppRprtCostoInventario.DeviceType:= 'Screen'
      else
      begin
        if nombrePDF<>'' then //May 30/16
        begin
          ppRprtCostoInventario.DeviceType:= 'PDF';
          ppRprtCostoInventario.PDFSettings.OpenPDFFile := False;
          ppRprtCostoInventario.TextFileName:= nombrePDF;
        end; //Siempre muesta el PDF
      end;
      ppRprtCostoInventario.Print;
  end;
  end;
end;


end.
