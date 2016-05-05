unit CotizacionesDM;

interface

uses
  winapi.windows, System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, dxGDIPlusClasses, ppCtrls, ppPrnabl, ppClass, ppDB,
  ppBands, ppCache, ppDBPipe, ppParameter, ppDesignLayer, ppComm, ppRelatv,
  ppProd, ppReport, ppStrtch, ppMemo, dialogs, ShellApi, Forms;

type
  TdmCotizaciones = class(T_dmStandar)
    adodsCotizacionesDetalle: TADODataSet;
    adodsUsuario: TADODataSet;
    adodsProductos: TADODataSet;
    adodsClientes: TADODataSet;
    adodsCotizacionEstatus: TADODataSet;
    adodsMoneda: TADODataSet;
    adodsMasterIdDocumentoSalida: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterIVA: TFMTBCDField;
    adodsMasterSubTotal: TFMTBCDField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterVigenciaDias: TIntegerField;
    adodsMasterObservaciones: TStringField;
    adodsCotizacionesDetalleIdDocumentoSalidaDetalle: TAutoIncField;
    adodsCotizacionesDetalleIdDocumentoSalida: TIntegerField;
    adodsCotizacionesDetalleIdProducto: TIntegerField;
    adodsCotizacionesDetalleClaveProducto: TStringField;
    adodsCotizacionesDetalleCantidad: TFloatField;
    adodsCotizacionesDetalleCantidadPendiente: TFloatField;
    adodsCotizacionesDetallePrecioUnitario: TFMTBCDField;
    adodsCotizacionesDetalleImporte: TFMTBCDField;
    adodsClientesIdPersona: TAutoIncField;
    adodsClientesRazonSocial: TStringField;
    adodsMonedaIdMoneda: TAutoIncField;
    adodsMonedaDescripcion: TStringField;
    adodsMasterCliente: TStringField;
    adodsMasterMoneda: TStringField;
    adodsClientesRFC: TStringField;
    adodsCotizacionesDetalleProducto: TStringField;
    adodsClientesIDRol: TIntegerField;
    adodsCotizacionEstatusIdentificador: TStringField;
    adodsCotizacionEstatusIdDocumentoSalidaEstatus: TAutoIncField;
    adodsCotizacionEstatusDescripcion: TStringField;
    adodsMasterIdDocumentoSalidaEstatus: TIntegerField;
    adodsMasterEstatus: TStringField;
    ADOdsTipoDocumento: TADODataSet;
    ADOdsTipoDocumentoIdDocumentoSalidaTipo: TAutoIncField;
    ADOdsTipoDocumentoIdentificador: TStringField;
    ADOdsTipoDocumentoDescripcion: TStringField;
    adodsMasterFechaRegistro: TDateTimeField;
    ADODSAuxiliar: TADODataSet;
    DSMaster: TDataSource;
    adodsCotizacionesDetalleExistenciaActual: TFloatField;
    ADODtStOrdenSalida: TADODataSet;
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
    DSOrdenSalida: TDataSource;
    ADODtStOrdenSalidaidOrdenSalida: TAutoIncField;
    ADODtStOrdenSalidaIdDocumentoSalida: TIntegerField;
    ADODtStOrdenSalidaIdOrdenEstatus: TIntegerField;
    ADODtStOrdenSalidaIdPersonaRecolecta: TIntegerField;
    ADODtStOrdenSalidaIdPersonaRevisa: TIntegerField;
    ADODtStOrdenSalidaIdPersonaEmpaca: TIntegerField;
    ADODtStOrdenSalidaFechaRegistro: TDateTimeField;
    ADODtStOrdenSalidaTotal: TFMTBCDField;
    ADODtStOrdenSalidaFechaIniRecolecta: TDateTimeField;
    ADODtStOrdenSalidaFechaFinRecolecta: TDateTimeField;
    ADODtStOrdenSalidaFechaIniRevisa: TDateTimeField;
    ADODtStOrdenSalidaFechaFinRevisa: TDateTimeField;
    ADODtStOrdenSalidaFechaIniEmpaca: TDateTimeField;
    ADODtStOrdenSalidaFechaFinEmpaca: TDateTimeField;
    ADODtStOrdenSalidaSubtotal: TFMTBCDField;
    ADODtStOrdenSalidaIVA: TFMTBCDField;
    ADODtStOrdenSalEstatus: TADODataSet;
    ADODtStOrdenSalEstatusIdOrdenEstatus: TIntegerField;
    ADODtStOrdenSalEstatusIdentificador: TStringField;
    ADODtStOrdenSalEstatusDescripcion: TStringField;
    ADODtStOrdenSalidaEstatus: TStringField;
    ADODtStOrdenSalidaItemClaveProducto: TStringField;
    ADOQryAuxiliar: TADOQuery;
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
    adodsMasterIdDomicilioCliente: TIntegerField;
    ADODtStDireccionesClienteDirCompleta: TStringField;
    adodsMasterDireccioncliente: TStringField;
    ADODtStOrdenSalidaItemIdUnidadMedida: TIntegerField;
    ADODtStProductosKardex: TADODataSet;
    ADODtStProductosKardexIdProducto: TIntegerField;
    ADODtStProductosKardexIdOrdenEntradaItem: TIntegerField;
    ADODtStProductosKardexIdOrdenSalidaItem: TIntegerField;
    ADODtStProductosKardexIdMoneda: TIntegerField;
    ADODtStProductosKardexIdSeccion: TIntegerField;
    ADODtStProductosKardexReferenciaEspacio: TIntegerField;
    ADODtStProductosKardexContenedor: TStringField;
    ADODtStProductosKardexMovimiento: TStringField;
    ADODtStProductosKardexCantidad: TFloatField;
    ADODtStProductosKardexImporte: TFMTBCDField;
    ADODtStDireccAuxiliar: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    BooleanField1: TBooleanField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    adodsMasterIdDocumentoSalidaTipo: TIntegerField;
    adodsMasterTipoDocumento: TStringField;
    ppRprtCotizacion: TppReport;
    ppParameterList1: TppParameterList;
    ppDBPplnItemsCotizacion: TppDBPipeline;
    ppDBPplnGenerales: TppDBPipeline;
    DSCotizacionDetalle: TDataSource;
    ppShape1: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel18: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel35: TppLabel;
    ppDBText11: TppDBText;
    ppDBText19: TppDBText;
    ppLine9: TppLine;
    ppDBMemo1: TppDBMemo;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel21: TppLabel;
    ppLine1: TppLine;
    ppDBText15: TppDBText;
    ActGenPDFCotizacion: TAction;
    adodsMasterRFCCte: TStringField;
    ppLabel22: TppLabel;
    adodsMasterTotalenLetra: TStringField;
    ppLabel23: TppLabel;
    ppDBText16: TppDBText;
    ADODtStIdentificadores: TADODataSet;
    adodsMasterIdentificadorCte: TStringField;
    adodsCotizacionesDetalleIdAlmacen: TIntegerField;
    ActEnviarXCorreo: TAction;
    adodsProductoFotos: TADODataSet;
    adodsProductoFotosIdProductoFoto: TIntegerField;
    adodsProductoFotosIdProducto: TIntegerField;
    adodsProductoFotosIdDocumento: TIntegerField;
    adodsProductoFotosNotas: TStringField;
    adodsProductoFotosNombreArchivo: TStringField;
    dsProductosFotos: TDataSource;
    adodsProductoDoctos: TADODataSet;
    ADODsDocumento: TADODataSet;
    ADODsDocumentoIdDocumento: TAutoIncField;
    ADODsDocumentoIdDocumentoTipo: TIntegerField;
    ADODsDocumentoIdDocumentoClase: TIntegerField;
    ADODsDocumentoDescripcion: TStringField;
    ADODsDocumentoNombreArchivo: TStringField;
    ADODsDocumentoIdArchivo: TGuidField;
    ADODsDocumentoArchivo: TBlobField;
    ADODtStProductosKardexIdProductoKardex: TAutoIncField;
    ADODtStProductosKardexIdAlmacen: TIntegerField;
    ADODtStProductosKardexIdProductoKardexEstatus: TIntegerField;
    ADODtStProductosKardexFecha: TDateTimeField;
    adodsClientesDiasCreditoCliente: TIntegerField;
    adodsMasterDiasCredito: TIntegerField;
    adodsClientesSaldoCliente: TFMTBCDField;
    adodsMasterSaldoxRFC: TFloatField;
    ADODtStDireccionesClienteSaldo: TFMTBCDField;
    ADODtStDireccAuxiliarSaldo: TFMTBCDField;
    adodsMasterSaldoDir: TFloatField;
    adodsCotizacionesDetalleDisponible: TFloatField;
    adodsCotizacionesDetalleApartadoPorSurtir: TFloatField;
    adodsCotizacionesDetalleApartadoPorFacturar: TFloatField;
    ADODtStAntSaldos: TADODataSet;
    ADODtStAntSaldosCliente: TStringField;
    ADODtStAntSaldosTotalVigente: TFloatField;
    ADODtStAntSaldosSuma_a_30Dias: TFloatField;
    ADODtStAntSaldosSuma_a_60Dias: TFloatField;
    ADODtStAntSaldosSuma_a_90Dias: TFloatField;
    ADODtStAntSaldosSuma_a_mas_de_90Dias: TFloatField;
    ADODtStAntSaldosIdPersonaREceptor: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsCotizacionesDetalleClaveProductoChange(Sender: TField);
    procedure adodsCotizacionesDetalleNewRecord(DataSet: TDataSet);
    procedure adodsCotizacionesDetalleCantidadChange(Sender: TField);
    procedure adodsCotizacionesDetalleAfterPost(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemAfterPost(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemCantidadDespachadaChange(Sender: TField);
    procedure ADODtStDireccionesClienteCalcFields(DataSet: TDataSet);
    procedure adodsCotizacionesDetalleBeforeInsert(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemNewRecord(DataSet: TDataSet);
    procedure ActGenPDFCotizacionExecute(Sender: TObject);
    procedure adodsMasterCalcFields(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure ActEnviarXCorreoExecute(Sender: TObject);
    procedure dsProductosFotosDataChange(Sender: TObject; Field: TField);
    procedure adodsCotizacionesDetalleBeforeOpen(DataSet: TDataSet);
    procedure adodsCotizacionesDetalleBeforeDelete(DataSet: TDataSet);
  private
    FTipoDoc: Integer;
    FIdDocAct: Integer;
    function EncuentraProd(IdProd: String; var ValUni: Double;
      var ID:Integer): String;
    function CalcularTotales(IDDoc:Integer;Campoid,CampoSum,TablaO:String;PorIVA:Double;var AMontoIva,ASubtotal,ATotal:Double):Boolean;
    procedure SetTipoDoc(const Value: Integer);
    procedure PrintPDFFile(Mostrar: Boolean;nombre:TFileName='');
    function SacaCorreoEmisor(ADatosCorreo: TStringList): Boolean;
    function SacaCorreoReceptor(IdCliente: Integer;
      var CorreoCliente: String): Boolean;
    procedure ReadFile(FileName: TFileName);
    procedure AdjuntarArchivos(Listaadj: TStringList);
   // function tamanoFichero(sFileToExamine: string): Longword;
    { Private declarations }
  public
    { Public declarations }
    Property TipoDocumento:Integer read FTipoDoc write SetTipoDoc;
    property idDocActual:Integer read FIdDocAct write FIdDocAct;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CotizacionesForm, _Utils, UDMEnvioMail;

{$R *.dfm}

procedure TdmCotizaciones.ActEnviarXCorreoExecute(Sender: TObject);
var
  DmEnvioMail:TDMEnvioMails;
  ArcCotiza,ArcImagen, ArcDoc: TFileName;
  IdDoc:Integer;
  ADatosEmisor:TStringList;
  CorreoRec,FechaText:String;
  D,M,A:word;
  ArchivosLista:TStringList; //Feb 22/16
begin   //Feb 18/16
  inherited;
  ArchivosLista:=TStringList.Create;//Feb 22/16
  ArcImagen:='';
  ArcDoc:='';
  decodedate(date,A,M,D);
  FechaText:=IntToStr(d)+'_'+intToStr(m)+'_'+intToStr(A);
  ArcCotiza:='Cotizacion_'+AdoDSMaster.FieldByName('idDocumentoSalida').ASString+FechaText+'.pdf';

  ADatosEmisor:=TStringList.Create;
  ShowProgress(10,100.1,'Preparando documentos ' + IntToStr(10) + '%');

  PrintPDFFile(False,ArcCotiza);
  //Verificar si se seleccionan Fotos o Documentos los productos (Hasta 3) ;
  if FileExists(ArcCotiza) then
    ShellExecute(application.Handle, 'open', PChar(ArcCotiza), nil, nil, SW_SHOWNORMAL);    //Quitar cuando funcione
  ShowProgress(30,100.1,'Enviando Correo con archivos adjuntos ' + IntToStr(30) + '%');
  ArchivosLista.Add(ArcCotiza);

  AdjuntarArchivos(ArchivosLista);
  if SacaCorreoEmisor(ADatosEmisor) and SacaCorreoReceptor(adodsMasterIdPersona.AsInteger,CorreoRec) then
  begin //Sacar datos Correo Emisor           //SAcar datos Correo Receptor
    DMEnvioMail:=TDMEnvioMails.Create(self);
    ShowProgress(60,100.1,'Enviando Correo con Cotizacióm adjunta ' + IntToStr(60) + '%');
    if  DMEnvioMails.SendEmail(CorreoRec+';'+ADatosEmisor.Values['emailNoti'],'Envio Cotización','Envio de Cotizacion No.'+ adodsMasterIdDocumentoSalida.asstring,
             ArcCotiza,ArcImagen, ArcDoc,ArchivosLista,ADatosEmisor.Values['host'], ADatosEmisor.Values['usuario'], ADatosEmisor.Values['contrasenia'],
             'Tracto Partes MAS', StrToInt(ADatosEmisor.Values['puerto']),StrToInt(ADatosEmisor.Values['MetSSL']),
             StrToInt(ADatosEmisor.Values['ModSSL'])) then
     begin
       ShowProgress(100,100.1,'Proceso de Envio Terminado  ' + IntToStr(100) + '%');
       ShowMessage('Datos enviados al Cliente');
     end
     else
     begin
       ShowProgress(100,100.1,'Error en Envio de correo...' + IntToStr(100) + '%');
       ShowMessage('Error en envio del Correo. Verifique conexión a internet');
     end;
    DMEnvioMail.Free;
  end
  else
  begin
    ShowProgress(100,100.1,'Sin Datos suficicentes para enviar correo...' + IntToStr(100) + '%');
    ShowMessage('No se pudo enviar el correo. Falta Información para el envio. '+#13+'Asegurese de tener definida la información del servidor de salida y el correo del Cliente.');
  end;
  ShowProgress(100,100);
  BorraSoloArchivos(ExtractFilePath(application.ExeName)+'Adjcorreo\');
  ADatosEmisor.Free; //Feb 22/16
  ArchivosLista.Free; //Feb 22/16
end;

procedure TdmCotizaciones.AdjuntarArchivos(Listaadj:TStringList);//
var
  Path: string;
  F: TSearchRec;
begin
  try
    Path:= ExtractFilePath(Application.exename)+'AdjCorreo\*.*';
    if FindFirst(Path, faAnyFile, F) = 0 then begin
      try
        repeat
         ListaAdj.add(ExtractFilePath(Application.exename) + 'AdjCorreo\' + F.Name);
        until FindNext(F) <> 0;
      finally
        FindClose(F);
      end;
    end;

  except
    on e:exception do begin
    end;
  end;
end;




procedure TdmCotizaciones.ActGenPDFCotizacionExecute(Sender: TObject);
begin
  inherited;
  PrintPDFFile(True);
 //LLamar envio ShowMessage('Envio por correo al cliente  en construcción');
  // ver que hace y ver como se muestr directo como PDF , luego hay que ver si se hace envio..
end;

procedure TdmCotizaciones.adodsCotizacionesDetalleAfterPost(DataSet: TDataSet);
const PIVA=0.16;                   //No funciona para el Delete
var Total,MontoIVA,SubTotal:Double;
    IdAct:Integer;//May 2/16
begin
  inherited;
  if dataset.fieldbyname('IdDocumentoSalida').asInteger=0 then //May 2/16
    IdAct:= idDocActual
  else
    IdAct:=dataset.fieldbyname('IdDocumentoSalida').asInteger;
                                                 //May 2/16  dataset.fieldbyname('IdDocumentoSalida').asInteger
  if CalcularTotales(IdAct,'IdDocumentoSalida','Importe',
                     'DocumentosSalidasDetalles',PIVA,MontoIVA,SubTotal,Total) then
  begin
    adoQryauxiliar.Close;
    TAdoquery(AdoQryAuxiliar).SQL.Clear;
    TAdoquery(AdoQryAuxiliar).SQL.Add('UPDATE DocumentosSalidas SET SUBTOTAL='+FloatTostr(SubTotal)+', IVA='+FloatToStr(MontoIVA)+', Total='+FloatTostr(Total)
                                    +' WHERE IDDocumentoSalida= '+intToStr(IdAct));
    if TAdoquery(AdoQryAuxiliar).ExecSQL =1 then                         //  dataset.fieldbyname('IdDocumentoSalida').asInteger
       ADodsMaster.Refresh;
  //Se cambio mecanismo de actualizacion .Ene 11/16
  end;
end;

procedure TdmCotizaciones.adodsCotizacionesDetalleBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  idDocActual:= DataSet.fieldbyname('idDocumentoSalida').asInteger;
end;

procedure TdmCotizaciones.adodsCotizacionesDetalleBeforeInsert(
  DataSet: TDataSet);
begin

  if adodsMaster.State in [dsEdit,dsInsert]then //Para evitar que se vaya sin nada dic 22/15
     adodsMaster.post;
  inherited;
end;

procedure TdmCotizaciones.adodsCotizacionesDetalleBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//Feb 22/16
  adodsProductoFotos.Open;
  ADODsDocumento.open;

end;

procedure TdmCotizaciones.adodsCotizacionesDetalleCantidadChange(
  Sender: TField);
begin
  inherited;
  if adodsCotizacionesDetalle.State in [dsEdit,dsInsert] then
  begin
  //  if adodsCotizacionesDetalle.FieldByName('cantidad').AsFloat<= adodsCotizacionesDetalle.FieldByName('Disponible').AsFloat then  //Abr 11/16
  //  begin
      adodsCotizacionesDetalle.FieldByName('cantidadpendiente').AsFloat:=adodsCotizacionesDetalle.FieldByName('cantidad').AsFloat;
      adodsCotizacionesDetalle.FieldByName('Importe').AsFloat:=adodsCotizacionesDetalle.FieldByName('PrecioUnitario').AsFloat* adodsCotizacionesDetalle.FieldByName('CAntidad').AsFloat;
//    end
//    else
//      ShowMessage('No es posible asignar un valor mayor al disponible'); //Abr 11/16
  end;
end;

procedure TdmCotizaciones.adodsCotizacionesDetalleClaveProductoChange(
  Sender: TField);
var valuni:Double;
  idproducto:integer;
begin
  inherited;

  if adodsCotizacionesDetalle.State in [dsEdit,dsInsert] then
  begin
    adodsCotizacionesDetalle.FieldByName('Producto').AsString:= EncuentraProd(adodsCotizacionesDetalle.FieldByName('claveProducto').ASString,ValUni,idproducto);
    if adodsCotizacionesDetalle.FieldByName('Producto').AsString<>'' then
    begin
      adodsCotizacionesDetalle.FieldByName('PrecioUnitario').AsFloat:=ValUni;
      adodsCotizacionesDetalle.FieldByName('IdProducto').asInteger:=idproducto;
      adodsCotizacionesDetalle.FieldByName('Importe').AsFloat:=ValUni* adodsCotizacionesDetalle.FieldByName('CAntidad').AsFloat;
    end;
  end;
end;

function TdmCotizaciones.EncuentraProd(IdProd: String;Var ValUni:Double;var ID:Integer):String;
begin
  Result:='';
  if IDProd<>'' then
  begin
    ADODSAuxiliar.Close;
    ADODSAuxiliar.CommandText:='Select * from Productos where (Identificador1='''+IDProd+
                               ''' or Identificador2='''+IDProd+''' or Identificador3='''+IDProd+
                               ''')';
    ADODSAuxiliar.open;
    if not ADODSAuxiliar.eof then
    begin
      ValUni:= ADODSAuxiliar.FieldByName('PrecioUnitario').AsFloat;
      ID:=ADODSAuxiliar.FieldByName('IdProducto').asinteger ; //Valor del IDinterno
      Result:=ADODSAuxiliar.FieldByName('Descripcion').AsString;

    end;
  end;
  ADODSAuxiliar.Close;
end;
procedure TdmCotizaciones.SetTipoDoc(const Value: Integer);
begin
  FTipoDoc := Value;
  adodsMaster.Parameters.ParamByName('TipoDocto').Value:=FTipoDoc;
  if Assigned(gGridEditForm) then
    TfrmCotizaciones(gGridEditForm).TipoDocumento:= FTipoDoc;
end;

procedure TdmCotizaciones.adodsCotizacionesDetalleNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('cantidad').AsFloat:=1;
  dataset.FieldByName('cantidadpendiente').AsFloat:=1;
  dataset.FieldByName('IdAlmacen').AsInteger:=1; //Debe ir como un valor Variable

end;

procedure TdmCotizaciones.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  //FEb 8/16
  ADODtStIdentificadores.Open;
 // ADODtStDireccionesCliente.Open;
end;

procedure TdmCotizaciones.adodsMasterCalcFields(DataSet: TDataSet);
var
  vTotal: Double;
  Centavos : String;
begin
  inherited;
  vTotal:= StrToFloat(FormatFloat('0.00',dataset.FieldByName('Total').AsFloat));

  Centavos := FormatFloat('.00',Frac(vTotal));
  Delete(Centavos,1,1);
  dataset.FieldByName('TotalenLetra').AsString:= xIntToLletras(Trunc(vTotal)) + ' PESOS ' + Centavos + '/100 M. N. ';
end;

procedure TdmCotizaciones.adodsMasterNewRecord(DataSet: TDataSet);
begin  //Nov 6/15
  inherited;
  adodsMaster.fieldbyname('FechaRegistro').AsDateTime:=Now;
  adodsMaster.fieldbyname('VigenciaDias').AsInteger:=30; //Cambiar a parámetro del sistema
  adodsMaster.fieldbyname('IDMoneda').AsInteger:=106; //DEbe ser parámetro
  adodsMaster.fieldbyname('IDUsuario').AsInteger:= 1;
  adodsMaster.fieldbyname('IDDocumentoSalidaTipo').AsInteger:= 1;
  adodsMaster.fieldbyname('IDDocumentoSalidaEstatus').AsInteger:= 1;
end;

procedure TdmCotizaciones.ADODtStDireccionesClienteCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('DirCompleta').AsString:= Uppercase(dataset.FieldByName('Calle').AsString+ dataset.FieldByName('NoExterior').AsString+
                                                ' '+dataset.FieldByName('Colonia').AsString +' '+ dataset.FieldByName('CodigoPostal').AsString+
                                                '. '+dataset.FieldByName('Municipio').AsString +', '+dataset.FieldByName('Estado').AsString);

end;

procedure TdmCotizaciones.ADODtStOrdenSalidaItemAfterPost(DataSet: TDataSet);
var idDocSalida, IDDocItem:Integer;
//completo:Boolean;
   Subtotal:Double;
begin
  inherited;
  //Verificar si aca actualizar el item respectivo del detalle del documento
  IDDocItem:=DataSet.FieldByName('IDDocumentoSalidaDetalle').AsInteger;
  idDocSalida:=DataSet.FieldByName('IDOrdenSalida').AsInteger;
//  completo:=DataSet.FieldByName('CantidadDespachada').AsFloat=DataSet.FieldByName('CantidadSolicitada').AsFloat;
   //Hay cambio, debe ser menor o igual

  //Siempre actualizar

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Importe) as ValorST From OrdenesSalidasItems where idOrdenSalida='+intToStr(idDocSalida));
  ADOQryAuxiliar.open;

  Subtotal:= ADOQryAuxiliar.FieldByName('ValorST').AsFloat;

  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('UPDATE OrdenesSalidas SET Subtotal='+FloattoSTR(subtotal)+' , IVA='+FloatToSTR(subtotal*0.16)+', Total='+FloatToSTR(subtotal*1.16)
                          +' where IDOrdenSalida ='+IntToStr(idDocSalida));
  ADOQryAuxiliar.ExecSQL;

end;

procedure TdmCotizaciones.ADODtStOrdenSalidaItemCantidadDespachadaChange(
  Sender: TField);
begin
  inherited;
  if ADODtStOrdenSalidaItem.State in [dsEdit,dsInsert] then
  begin
//    ADODtStOrdenSalidaItem.FieldByName('cantidadpendiente').AsFloat:=adodsCotizacionesDetalle.FieldByName('cantidad').AsFloat;
     ADODtStOrdenSalidaItem.FieldByName('Importe').AsFloat:=ADODtStOrdenSalidaItem.FieldByName('Precio').AsFloat* ADODtStOrdenSalidaItem.FieldByName('CantidadDespachada').AsFloat;
  end;
end;

procedure TdmCotizaciones.ADODtStOrdenSalidaItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('IDUnidadMedida').AsInteger :=1 ;
end;

function TdmCotizaciones.CalcularTotales(IDDoc:Integer;Campoid,CampoSum,TablaO:String;PorIVA: Double; var AMontoIva,
  ASubtotal, ATotal: Double): Boolean;
begin
  try
    adodsAuxiliar.close;
    adodsAuxiliar.commandtext:= 'Select sum('+CampoSum+') as Subtotal from '+TablaO+' where '+CampoID+
                               '='+intToSTR(iddoc);
    adodsAuxiliar.open;
    ASubtotal:=adodsAuxiliar.Fieldbyname('Subtotal').AsFloat;
    AMontoIVA:= ASubtotal*PorIVA;
    ATotal:= ASubtotal+AMontoIVA;
    result:=True;
  except
    result:=False;
  end;
end;

procedure TdmCotizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmCotizaciones.Create(Self);
  adodsMaster.Parameters.ParamByName('TipoDocto').Value:=FTipoDoc;
  gGridEditForm.DataSet := adodsMaster;
  TfrmCotizaciones(gGridEditForm).TipoDocumento:= FTipoDoc;
  TfrmCotizaciones(gGridEditForm).DataSourceDetail.DataSet:=adodsCotizacionesDetalle;
  TfrmCotizaciones(gGridEditForm).DSAuxiliar.DataSet:=ADODSAuxiliar; //Nov 9/15
  TfrmCotizaciones(gGridEditForm).DSOrdenSalida.DataSet:=ADODtStOrdenSalida; //Nov 18/15
  TfrmCotizaciones(gGridEditForm).DSOrdenSalidaItems.DataSet:=ADODtStOrdenSalidaItem; //Nov 18/15
  TfrmCotizaciones(gGridEditForm).ActGenPDFCotiza := ActGenPDFCotizacion; //Dic 22/15
  TfrmCotizaciones(gGridEditForm).ActEnviaCotizacion := ActEnviarXCorreo;
  TfrmCotizaciones(gGridEditForm).dsFotosAux.dataset:=adodsProductoFotos;
  TfrmCotizaciones(gGridEditForm).dsDocumentoAux.DataSet:=ADODsDocumento;

end;


procedure TdmCotizaciones.dsProductosFotosDataChange(Sender: TObject;
  Field: TField);
var Archivo :TFileName;
begin                         //Para crear el actual archivo Feb19/16
  inherited;
  if not dsProductosFotos.DataSet.Eof then
  begin
    Archivo:=AdodsDocumento.FieldByName('NombreArchivo').AsString;
    readfile(Archivo);
  end;

end;

procedure TdmCotizaciones.ReadFile(FileName: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob:= ADODsDocumento.CreateBlobStream(ADODsDocumentoArchivo, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs:= TFileStream.Create(FileName, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;

procedure TdmCotizaciones.PrintPDFFile(Mostrar:Boolean;nombre:TFileName='');
var                       // Modificado                //Feb 18/16
  vPDFFileName: TFileName;
begin
    // Configura el reporte

    ppRprtCotizacion.ShowPrintDialog:= False;
    ppRprtCotizacion.ShowCancelDialog:= False;
    ppRprtCotizacion.AllowPrintToArchive:= False;
    if Mostrar then
       ppRprtCotizacion.DeviceType:= 'Screen'
    else
    if nombre<>'' then
    begin
      ppRprtCotizacion.DeviceType:= 'PDF';
      ppRprtCotizacion.PDFSettings.OpenPDFFile := False;
      ppRprtCotizacion.TextFileName:= nombre;
    end
    else
      ppRprtCotizacion.DeviceType:= 'Printer';
//    ppReport.PrinterSetup.Copies:= 1;
// DES ABAN eNE7/16      ppReport.PrinterSetup.DocumentName:= ExtractFileName(vPDFFileName);
    ppRprtCotizacion.Print;

end;

function TdmCotizaciones.SacaCorreoEmisor(ADatosCorreo: TStringList): Boolean;
begin
  Result:=False;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;
  ADOQryAuxiliar.sql.add('Select * from Configuraciones');
  ADOQryAuxiliar.Open;

   if not (ADOQryAuxiliar.eof) and (ADOQryAuxiliar.FieldByName('HostEnvio').ASString<>'') and (ADOQryAuxiliar.FieldByName('PuertoEnvio').ASString<>'') and
      (ADOQryAuxiliar.FieldByName('PasswordCorreo').ASString<>'') and (ADOQryAuxiliar.FieldByName('CorreoEnvio').ASString<>'') then
  begin
    ADatosCorreo.Values['emailNoti']    := ADOQryAuxiliar.FieldByName('CorreoEnvio').ASString;
    ADatosCorreo.Values['host']    := ADOQryAuxiliar.FieldByName('HostEnvio').ASString;
    ADatosCorreo.Values['usuario'] :=ADOQryAuxiliar.FieldByName('UsuarioCorreo').ASString ;
    ADatosCorreo.Values['contrasenia'] :=ADOQryAuxiliar.FieldByName('PasswordCorreo').ASString ;
    ADatosCorreo.Values['puerto']   :=ADOQryAuxiliar.FieldByName('PuertoEnvio').ASString ;
  //  ADatosCorreo.Values['QEnvia']   :='Notificador'; //ADOQryAuxiliar.FieldByName('').ASString ;
    if not ADOQryAuxiliar.FieldByName('TIPOSEGURIDAD').IsNull then
       ADatosCorreo.Values['MetSSL']   :=ADOQryAuxiliar.FieldByName('TIPOSEGURIDAD').ASString
    else
      ADatosCorreo.Values['MetSSL']   :='3'; //sslvTLSv1
    if not ADOQryAuxiliar.FieldByName('METODOAUTENTICACION').IsNull then
      ADatosCorreo.Values['ModSSL']   :=ADOQryAuxiliar.FieldByName('METODOAUTENTICACION').ASString
    else
      ADatosCorreo.Values['ModSSL']   :='0';//sslmUnassigned

    Result:=True;
  end;
  ADOQryAuxiliar.Close;

end;

function TdmCotizaciones.SacaCorreoReceptor(IdCliente: Integer;
  var CorreoCliente: String): Boolean; //Feb 16/16
begin
  Result:=False;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.Sql.Clear;                                                                            //Notificador o preguntar cual???  o ver si el predeterminado
  ADOQryAuxiliar.sql.add('Select * from Emails where idPersona='+IntToStr(IdCliente)+' and ((IdEmailTipo=3) or(Predeterminado=1))');
  ADOQryAuxiliar.Open;
  if not (ADOQryAuxiliar.eof) and (ADOQryAuxiliar.FieldByName('email').ASString<>'') then
  begin
    CorreoCliente:=ADOQryAuxiliar.FieldByName('email').ASString;
    REsult:=True;
  end;
end;


end.
