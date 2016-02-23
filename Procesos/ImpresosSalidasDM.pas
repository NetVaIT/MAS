unit ImpresosSalidasDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, ppDB, ppDBPipe,
  ppParameter, ppDesignLayer, ppBands, myChkBox, dxGDIPlusClasses, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport;

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
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppImage1: TppImage;
    ppLabel12: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
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
    ppShape1: TppShape;
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
    ppDBText10: TppDBText;
    ADODtStDatosEtiquetaRFC: TStringField;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ADODtStDatosEtiquetaDireccioncompleta: TStringField;
    ppDBText14: TppDBText;
    ADODtStDatosEtiquetaTelefono: TStringField;
    ADODtStDatosEtiquetaIdentificador: TIntegerField;
    ppDBText15: TppDBText;
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
    ppDBText17: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ADODtStDatosEtiquetaOcurreChk: TBooleanField;
    ADODtStDatosEtiquetaDomicilioChk: TBooleanField;
    ADODtStDatosEtiquetaCobrarChk: TBooleanField;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
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
    ppLabel39: TppLabel;
    ppDBText23: TppDBText;
    ADODtStDatosEtiquetaCantidadCajas: TIntegerField;
    ADODtStDatosEtiquetaIdDocumentoGuia: TIntegerField;
    ppLabel40: TppLabel;
    ppLblCajaAct: TppLabel;
    ppLabel42: TppLabel;
    ppDBText27: TppDBText;
    ADODtStDatosEtiquetaFechaProgramadaEnt: TDateTimeField;
    ADODtStDatosEtiquetaFechaRealEnt: TDateTimeField;
    procedure ADODtStDatosEtiquetaCalcFields(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemCalcFields(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaAfterOpen(DataSet: TDataSet);
  private

    function ConcatenaUbicaciones (idProd,IdAlm:Integer):String;

    { Private declarations }
  public
    procedure PrintPDFFile(IDReporte: Integer; Cant:Integer=1);
    { Public declarations }
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

procedure TDMImpresosSalidas.PrintPDFFile(IDReporte: Integer;Cant:Integer=1);
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
      ppRprtOrdenSalida.DeviceType:= 'Screen';
    //    ppReport.PrinterSetup.Copies:= 1;
    // DES ABAN eNE7/16      ppReport.PrinterSetup.DocumentName:= ExtractFileName(vPDFFileName);
      ppRprtOrdenSalida.Print;
    end;
  2:begin  //Feb 11/16

      ppRprtEtiquetaEnvio.ShowPrintDialog:= False;
      ppRprtEtiquetaEnvio.ShowCancelDialog:= False;
      ppRprtEtiquetaEnvio.AllowPrintToArchive:= False;
      ppRprtEtiquetaEnvio.DeviceType:= 'Screen';
      for Actual:=1 to Cant do
      begin
        ppLblCajaAct.Caption:=intToStr(Actual);
        ppRprtEtiquetaEnvio.Print;
      end;

    end;

  end;
end;
end.
