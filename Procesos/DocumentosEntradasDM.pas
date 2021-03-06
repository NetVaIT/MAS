unit DocumentosEntradasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, Vcl.Dialogs, ListaProductosForm, ppDB, ppDBPipe,
  ppParameter, ppDesignLayer, ppBands, ppStrtch, ppMemo, ppCtrls,
  dxGDIPlusClasses, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, System.UITypes;

resourcestring
  strErrorClave = 'No encontro el art�culo para este proveedor, favor de teclear uno valido.';
  strAllowGenDocumento = '�Desea crear el documento?';
  strAllowApprove = '�Deasea autorizar el documento?';

type
  TPTipo = (tNone, tRequisicion, tOrdenCompra, tFactura, tDevolucion);
  TPEstatus = (eNone, eAbierto, eCerrado, eAutorizado, eProcesado, eCancelado);
  TdmDocumentosEntradas = class(T_dmStandar)
    adodsMasterIdDocumentoEntrada: TAutoIncField;
    adodsMasterIdDocumentoEntradaTipo: TIntegerField;
    adodsMasterIdDocumentoEntradaEstatus: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterTipoCambio: TFMTBCDField;
    adodsMasterSubTotal: TFMTBCDField;
    adodsMasterIVA: TFMTBCDField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterObservaciones: TStringField;
    adodsTipos: TADODataSet;
    adodsEstatus: TADODataSet;
    adodsPersonas: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsUsuarios: TADODataSet;
    adodsMasterTipo: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterProvedor: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterUsuario: TStringField;
    dsMaster: TDataSource;
    adodsDocumentosDetalles: TADODataSet;
    adodsDocumentosDetallesIdDocumentoentradaDetalle: TAutoIncField;
    adodsDocumentosDetallesIdDocumentoEntrada: TIntegerField;
    adodsDocumentosDetallesIdProducto: TIntegerField;
    adodsDocumentosDetallesClaveProducto: TStringField;
    adodsDocumentosDetallesCantidad: TFloatField;
    adodsDocumentosDetallesCantidadPendiente: TFloatField;
    adodsDocumentosDetallesPrecio: TFMTBCDField;
    adodsDocumentosDetallesImporte: TFMTBCDField;
    adodsProductos: TADODataSet;
    adodsDocumentosDetallesProducto: TStringField;
    adodsMasterFecha: TDateTimeField;
    adodsPersonasIdPersona: TAutoIncField;
    adodsPersonasIdMoneda: TIntegerField;
    adodsPersonasIdentificador: TStringField;
    adodsPersonasProvedor: TStringField;
    adodsPersonasMoneda: TStringField;
    actSeleccionaProducto: TAction;
    adoqGetIdProducto: TADOQuery;
    adoqGetIdProductoIdProducto: TIntegerField;
    adoqGetIdProductoPrecio: TFMTBCDField;
    adodsListaProductos: TADODataSet;
    adopUpdDocumento: TADOStoredProc;
    adodsListaProductosIdProducto: TIntegerField;
    adodsListaProductosIdPersonaProveedor: TIntegerField;
    adodsListaProductosIdentificador1: TStringField;
    adodsListaProductosIdentificador2: TStringField;
    adodsListaProductosIdentificador3: TStringField;
    adodsListaProductosDescripcion: TStringField;
    adodsListaProductosPrecioUnitario: TFMTBCDField;
    actBuscarProducto: TAction;
    actAutorizar: TAction;
    adopCambiarEstatus: TADOStoredProc;
    dsDetalle: TDataSource;
    ppRptDocumento: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppLabel35: TppLabel;
    ppDBText19: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape8: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    pplblPrecio: TppLabel;
    pplblImporte: TppLabel;
    ppLabel18: TppLabel;
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
    ppDBText2: TppDBText;
    ppDBText15: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppdbtxtPrecio: TppDBText;
    ppdbtxtImporte: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppdbtxtSubTotal: TppDBText;
    ppLine1: TppLine;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppdbpDetalle: TppDBPipeline;
    ppdbpMaster: TppDBPipeline;
    actImprimir: TAction;
    ppDBText3: TppDBText;
    adodsMasterClaveProvedor: TStringField;
    adodsCantidad: TADODataSet;
    adodsDocumentosDetallesExistencia: TFloatField;
    adodsDocumentosDetallesCantidadAnual: TFloatField;
    adodsDocumentosDetallesCantidadMensual: TFloatField;
    adodsDocumentosDetallesCantidadPromedio: TFloatField;
    adodsDocumentosDetallesCantidadFuturo: TFloatField;
    adodsDocumentosDetallesBackOrder: TStringField;
    adodsMasterIdDocumentoEntradaAnterior: TIntegerField;
    adoqTipoCambio: TADOQuery;
    actGetTipoCambio: TAction;
    adoqTipoCambioValor: TFMTBCDField;
    actGenDocumento: TAction;
    adodsDocumentosDetallesImporteMonedaLocal: TFMTBCDField;
    actEmail: TAction;
    ADOQryAuxiliar: TADOQuery;
    adodsDocumentosDetallesPrecioMonedalocal: TFMTBCDField;
    adodsDocumentosDetallesCostoPromedio: TFloatField;
    adodsDocumentosDetallesPreicoVenta: TFloatField;
    adodsProductosProveedores: TADODataSet;
    adodsDocumentosDetallesIdentificadorProveedor: TStringField;
    ppLabel3: TppLabel;
    ppDBText11: TppDBText;
    adoqryDocumento: TADOQuery;
    dsDocumento: TDataSource;
    adoqryDocumentoDetalles: TADOQuery;
    actGetDetalleAnterior: TAction;
    adodsDocumentosDetallesIdDocumentoEntradaDetalleAnterior: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterPedimento: TStringField;
    ppDBTxtTextoFactura: TppDBText;
    adoqryDocumentoTextoEnc: TStringField;
    adoqryDocumentoIdDocumentoEntrada: TAutoIncField;
    adoqryDocumentoIdDocumentoEntradaAnterior: TIntegerField;
    adoqryDocumentoIdDocumentoEntradaTipo: TIntegerField;
    adoqryDocumentoIdDocumentoEntradaEstatus: TIntegerField;
    adoqryDocumentoIdPersona: TIntegerField;
    adoqryDocumentoIdMoneda: TIntegerField;
    adoqryDocumentoIdUsuario: TIntegerField;
    adoqryDocumentoFecha: TDateTimeField;
    adoqryDocumentoTipoCambio: TFMTBCDField;
    adoqryDocumentoSubTotal: TFMTBCDField;
    adoqryDocumentoIVA: TFMTBCDField;
    adoqryDocumentoTotal: TFMTBCDField;
    adoqryDocumentoTipo: TStringField;
    adoqryDocumentoEstatus: TStringField;
    adoqryDocumentoClaveProveedor: TStringField;
    adoqryDocumentoProveedor: TStringField;
    adoqryDocumentoFactura: TStringField;
    adoqryDocumentopedimento: TStringField;
    adoqryDocumentoMoneda: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsMasterIdPersonaChange(Sender: TField);
    procedure adodsDocumentosDetallesClaveProductoChange(Sender: TField);
    procedure actSeleccionaProductoExecute(Sender: TObject);
    procedure adodsDocumentosDetallesCantidadChange(Sender: TField);
    procedure adodsDocumentosDetallesClaveProductoValidate(Sender: TField);
    procedure adodsDocumentosDetallesAfterPost(DataSet: TDataSet);
    procedure adodsDocumentosDetallesPrecioChange(Sender: TField);
    procedure actBuscarProductoExecute(Sender: TObject);
    procedure actAutorizarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actGetTipoCambioExecute(Sender: TObject);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure actGenDocumentoExecute(Sender: TObject);
    procedure actGenDocumentoUpdate(Sender: TObject);
    procedure actAutorizarUpdate(Sender: TObject);
    procedure adodsDocumentosDetallesCalcFields(DataSet: TDataSet);
    procedure actEmailExecute(Sender: TObject);
    procedure actEmailUpdate(Sender: TObject);
    procedure actGetDetalleAnteriorExecute(Sender: TObject);
    procedure actGetDetalleAnteriorUpdate(Sender: TObject);
    procedure adodsDocumentosDetallesBeforeInsert(DataSet: TDataSet);
    procedure adoqryDocumentoCalcFields(DataSet: TDataSet);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    frmListaProductos: TfrmListaProductos;
    FIdProducto: Integer;
    FPrecio: Double;
    FTipo: TPTipo;
    FBloquear: Boolean;
    function GetIdMonedaProvedor: Integer;
    procedure SetTipo(const Value: TPTipo);
    function GetIdProducto(IdPersona: Integer; Clave: String;
      var Precio: Double): Integer;
    procedure SetBloquear(const Value: Boolean);
    function GetCorreoEmisor(ADatosCorreo: TStringList): Boolean;
    function GetCorreoReceptor(IdCliente: Integer;
      var CorreoCliente: String): Boolean;
    procedure Imprimir(IdDocumentoEntrada: Integer);
    procedure PrintPDFFile(PDFFileName: TFileName; Mostrar: Boolean);
    procedure UpdTotales;
    function ExisteOtraFacturaAbierta(IdPersonaProv: Integer): Boolean;
  public
    { Public declarations }
    constructor CreateWTipo(AOwner: TComponent; Tipo: TPTipo); virtual;
    property Tipo: TPTipo read FTipo write SetTipo;
    property IdMonedaProvedor: Integer read GetIdMonedaProvedor;
    property Bloquear: Boolean read FBloquear write SetBloquear;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosEntradasForm, DocumentosEntradasDetalleForm, ConfiguracionDM,
  _ConectionDmod, _Utils, UDMEnvioMail, DocumentosEntradasDetalleAnteriorDM;

{$R *.dfm}

procedure TdmDocumentosEntradas.actAutorizarExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg(strAllowApprove, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    adopCambiarEstatus.Parameters.ParamByName('@IdDocumentoEntrada').Value:= adodsMasterIdDocumentoEntrada.Value;
    adopCambiarEstatus.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
    adopCambiarEstatus.ExecProc;
    RefreshADODS(adodsMaster, adodsMasterIdDocumentoEntrada);
  end;
end;

procedure TdmDocumentosEntradas.actAutorizarUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Visible:= (Tipo = tOrdenCompra);
  TAction(Sender).Enabled:= (adodsMasterIdDocumentoEntradaEstatus.Value = Ord(eAbierto));
end;

procedure TdmDocumentosEntradas.actBuscarProductoExecute(Sender: TObject);
const
  SQLSelect = 'SELECT ProductosProveedores.IdProducto, ProductosProveedores.IdPersonaProveedor, Productos.Identificador1, Productos.Identificador2, Productos.Identificador3, Productos.Descripcion, '+
  'ISNULL(ProductosProveedores.UltimoPrecio,0) AS PrecioUnitario '+
  'FROM ProductosProveedores '+
  'INNER JOIN Productos ON ProductosProveedores.IdProducto = Productos.IdProducto ';
begin
  inherited;
  adodsListaProductos.Close;
  adodsListaProductos.CommandText:= SQLSelect +
  Format('WHERE ProductosProveedores.IdPersonaProveedor = %d ', [adodsMasterIdPersona.Value]) +
  Format('AND (Identificador1 LIKE ''%s', [frmListaProductos.Clave]) + '%'' ' +
  Format('OR Identificador2 LIKE ''%s', [frmListaProductos.Clave]) + '%'' ' +
  Format('OR Identificador3 LIKE ''%s', [frmListaProductos.Clave]) + '%'') ';
  adodsListaProductos.Open;
  if adodsListaProductos.Eof then
  begin
    adodsListaProductos.Close;
    adodsListaProductos.CommandText:= SQLSelect +
    Format('WHERE ProductosProveedores.IdPersonaProveedor = %d ', [adodsMasterIdPersona.Value]) +
    Format('AND (Descripcion LIKE ''%s', [frmListaProductos.Clave]) + '%'') ';
    adodsListaProductos.Open;
  end;
end;

procedure TdmDocumentosEntradas.actEmailExecute(Sender: TObject);
var
  dmEnvioMail: TDMEnvioMails;
  ADatosEmisor: TStringList;
  ArchivosLista: TStringList;
  ArcCotiza, ArcImagen, ArcDoc: TFileName;
//  IdDoc: Integer;
  CorreoRec, FechaText: string;
  Tipo, Folio: string;
begin
  inherited;
  FechaText := FormatDateTime('yyyymmdd', Date);
  Tipo := adodsMasterTipo.AsString;
  Folio:= adodsMasterIdDocumentoEntrada.AsString;
  ArcCotiza:= Tipo + '_'+ Folio + '_'+ FechaText + '.pdf';
  ShowProgress(10,100,'Preparando documentos');
  try
    PrintPDFFile(ArcCotiza, False);
    if FileExists(ArcCotiza) then
    begin
      ADatosEmisor:=TStringList.Create;
      ArchivosLista:=TStringList.Create;
      ArcImagen:='';
      ArcDoc:='';
      try
        ShowProgress(30,100,'Enviando correo');
        ArchivosLista.Add(ArcCotiza);
      //  AdjuntarArchivos(ArchivosLista);
        if GetCorreoEmisor(ADatosEmisor) and GetCorreoReceptor(adodsMasterIdPersona.AsInteger,CorreoRec) then
        begin
          dmEnvioMail := TDMEnvioMails.Create(Self);
          try
            ShowProgress(60,100,'Enviando correo');
            if  DMEnvioMails.SendEmail(CorreoRec+';'+ADatosEmisor.Values['emailNoti'], Tipo, Tipo+ ' ' + Folio,
                     ArcCotiza,ArcImagen, ArcDoc,ArchivosLista,ADatosEmisor.Values['host'], ADatosEmisor.Values['usuario'], ADatosEmisor.Values['contrasenia'],
                     'Tracto Partes MAS', StrToInt(ADatosEmisor.Values['puerto']),StrToInt(ADatosEmisor.Values['MetSSL']),
                     StrToInt(ADatosEmisor.Values['ModSSL'])) then
             begin
               ShowMessage('Correo enviado');
             end
             else
             begin
               ShowMessage('Error en envio del correo. Verifique conexi�n a internet');
             end;
          finally
            dmEnvioMail.Free;
          end;
        end
        else
        begin
          ShowMessage('No se pudo enviar el correo. Falta Informaci�n para el envio. '+#13+'Asegurese de tener definida la informaci�n del servidor de salida y el correo del destinatario.');
        end;
      //  BorraSoloArchivos(ExtractFilePath(application.ExeName)+'Adjcorreo\');
      finally
        ADatosEmisor.Free;
        ArchivosLista.Free;
      end;
    end;
  finally
    ShowProgress(100,100);
  end;
end;

procedure TdmDocumentosEntradas.actEmailUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Visible:= (Tipo <> tFactura);
end;

procedure TdmDocumentosEntradas.actGenDocumentoExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg(strAllowGenDocumento, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    adopCambiarEstatus.Parameters.ParamByName('@IdDocumentoEntrada').Value:= adodsMasterIdDocumentoEntrada.Value;
    adopCambiarEstatus.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
    adopCambiarEstatus.ExecProc;
    RefreshADODS(adodsMaster, adodsMasterIdDocumentoEntrada);
  end;
end;

procedure TdmDocumentosEntradas.actGenDocumentoUpdate(Sender: TObject);
begin
  inherited;
  // No se muestra la accion de registrar prefactura por el cambio a generar
  // la factura en base a varias ordenes de compra.
  TAction(Sender).Visible:= (Tipo <> tOrdenCompra);
  case Tipo of
    tRequisicion: begin
      TAction(Sender).Caption:= 'Generar OC';
      TAction(Sender).Hint:= 'Cerrar y generar orden de compra';
      TAction(Sender).Enabled:= (adodsMasterIdDocumentoEntradaEstatus.Value = Ord(eAbierto));
    end;
    tOrdenCompra: begin
      TAction(Sender).Caption:= 'Registrar prefactura';
      TAction(Sender).Hint:= 'Cerrar y registrar prefactura del provedor';
      TAction(Sender).Enabled:= (adodsMasterIdDocumentoEntradaEstatus.Value = Ord(eAutorizado));
    end;
    tFactura: begin
      TAction(Sender).Caption:= 'Registrar factura';
      TAction(Sender).Hint:= 'Registrar factura del provedor';
      TAction(Sender).Enabled:= (adodsMasterIdDocumentoEntradaEstatus.Value = Ord(eAbierto));
    end;
  end;
end;

procedure TdmDocumentosEntradas.actGetDetalleAnteriorExecute(Sender: TObject);
var
  dmDetalleAnterior: TdmDocumentosEntradasDetalleAnterior;
begin
  inherited;
  if adodsMaster.state in [dsinsert,dsEdit]then // Dic 30/16
     adodsMaster.post;

  dmDetalleAnterior := TdmDocumentosEntradasDetalleAnterior.Create(Self);
  try
    dmDetalleAnterior.IdDocumentoEntrada:= adodsMasterIdDocumentoEntrada.Value;
    dmDetalleAnterior.IdPersona:= adodsMasterIdPersona.Value;
    if dmDetalleAnterior.Execute then
    begin
      adodsDocumentosDetalles.Close;
      adodsDocumentosDetalles.Open;
      UpdTotales;
    end;
  finally
    dmDetalleAnterior.Free;
  end;
end;

procedure TdmDocumentosEntradas.actGetDetalleAnteriorUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Visible:= (Tipo = tFactura);
  TAction(Sender).Enabled:= (adodsMasterIdDocumentoEntradaEstatus.Value = Ord(eAbierto));
end;

procedure TdmDocumentosEntradas.actGetTipoCambioExecute(Sender: TObject);
begin
  inherited;
  if adodsMaster.State in [dsEdit,dsInsert] then
  begin
    adoqTipoCambio.Close;
    try
      adoqTipoCambio.Parameters.ParamByName('IdMoneda').Value:= adodsMasterIdMoneda.Value;
      adoqTipoCambio.Open;
      adodsMasterTipoCambio.AsFloat:= adoqTipoCambioValor.AsFloat;
    finally
      adoqTipoCambio.Close;
    end;
  end;
end;

procedure TdmDocumentosEntradas.actImprimirExecute(Sender: TObject);
begin
  inherited;
  Imprimir(adodsMasterIdDocumentoEntrada.Value);
end;

procedure TdmDocumentosEntradas.actSeleccionaProductoExecute(Sender: TObject);
begin
  inherited;
  frmListaProductos.Clave:= adodsDocumentosDetallesClaveProducto.AsString;
//  actSeleccionaProducto.Execute;
  frmListaProductos.ShowModal;
  if adodsDocumentosDetalles.State in [dsEdit,dsInsert] then
  begin
    adodsDocumentosDetallesIdProducto.Value := frmListaProductos.IdProducto;
    adodsDocumentosDetallesClaveProducto.AsString:= frmListaProductos.Identificador;
  end;
end;

procedure TdmDocumentosEntradas.adodsDocumentosDetallesAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  UpdTotales;
end;

procedure TdmDocumentosEntradas.adodsDocumentosDetallesBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if adodsmaster.State in [dsInsert,dsedit] then  // dic 30/16
    adodsmaster.Post;
end;

procedure TdmDocumentosEntradas.adodsDocumentosDetallesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if adodsMaster.Active then
  begin
    adodsDocumentosDetallesPrecioMonedalocal.Value:= adodsDocumentosDetallesPrecio.AsFloat * adodsMasterTipoCambio.AsFloat;
    adodsDocumentosDetallesImporteMonedaLocal.Value:= adodsDocumentosDetallesImporte.AsFloat * adodsMasterTipoCambio.AsFloat;
  end;
end;

procedure TdmDocumentosEntradas.adodsDocumentosDetallesCantidadChange(
  Sender: TField);
begin
  inherited;
  if adodsDocumentosDetalles.State in [dsEdit,dsInsert] then
  begin
    adodsDocumentosDetallesCantidadPendiente.Value:= adodsDocumentosDetallesCantidad.Value;
    adodsDocumentosDetallesImporte.Value:= adodsDocumentosDetallesPrecio.Value * adodsDocumentosDetallesCantidad.Value;
  end;
end;

procedure TdmDocumentosEntradas.adodsDocumentosDetallesClaveProductoChange(
  Sender: TField);
begin
  inherited;
  if FIdProducto <> 0 then
  begin
    if adodsDocumentosDetalles.State in [dsEdit,dsInsert] then
    begin
      adodsDocumentosDetallesIdProducto.Value:= FIdProducto;
      adodsDocumentosDetallesPrecio.Value:= FPrecio;
      adodsDocumentosDetallesImporte.Value:= adodsDocumentosDetallesPrecio.Value * adodsDocumentosDetallesCantidad.Value;
    end;
  end;
end;

procedure TdmDocumentosEntradas.adodsDocumentosDetallesClaveProductoValidate(
  Sender: TField);
begin
  inherited;
  if adodsDocumentosDetalles.State in [dsEdit,dsInsert] then
  begin
    FIdProducto:= GetIdProducto(adodsMasterIdPersona.Value,
    adodsDocumentosDetallesClaveProducto.AsString, FPrecio);
    if FIdProducto = 0 then
      raise Exception.Create(strErrorClave);
  end;
end;

procedure TdmDocumentosEntradas.adodsDocumentosDetallesPrecioChange(
  Sender: TField);
begin
  inherited;
  if adodsDocumentosDetalles.State in [dsEdit,dsInsert] then
  begin
    adodsDocumentosDetallesImporte.Value:= adodsDocumentosDetallesPrecio.Value * adodsDocumentosDetallesCantidad.Value;
  end;
end;

procedure TdmDocumentosEntradas.adodsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if ExisteOtraFacturaAbierta(adodsMasterIdPersona.AsInteger) then   //Mar 29/17
  begin
    ShowMessage('Existe una Factura Abierta para el mismo proveedor');
    abort;
  end;
end;

function TdmDocumentosEntradas.ExisteOtraFacturaAbierta(IdPersonaProv:Integer):Boolean;//Mar 29/17
begin      //Ajuste para evitar dos facturas abiertas al tiempo del mismo proveedor, por control de totales de pedidos
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.Sql.Add('Select * From DocumentosEntradas where IdDocumentoEntradaEstatus= 1 and IDPersona ='
                        +intToSTR(IdPersonaProv)+ ' and IDDocumentoEntradaTipo= 3 ') ;
  if adodsMasterIdDocumentoEntrada.AsString<>'' then
     ADOQryAuxiliar.Sql.Add(' and  IdDocumentoEntrada <> '+ adodsMasterIdDocumentoEntrada.AsString);

  ADOQryAuxiliar.Open;
  Result:=not ADOQryAuxiliar.Eof;
end;

procedure TdmDocumentosEntradas.adodsMasterIdPersonaChange(Sender: TField);
begin
  inherited;
  adodsMasterIdMoneda.Value:= GetIdMonedaProvedor;
end;

procedure TdmDocumentosEntradas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  case Tipo of
    tRequisicion: adodsMasterIdDocumentoEntradaTipo.Value:= Ord(tRequisicion);
    tOrdenCompra: adodsMasterIdDocumentoEntradaTipo.Value:= Ord(tOrdenCompra);
    tFactura: adodsMasterIdDocumentoEntradaTipo.Value:= Ord(tFactura);
  end;
  adodsMasterIdDocumentoEntradaEstatus.Value:= 1;
  adodsMasterIdMoneda.Value:= dmConfiguracion.IdMoneda;
  adodsMasterTipoCambio.Value:= 1;
  adodsMasterIdUsuario.Value:= _dmConection.IdUsuario;
  adodsMasterFecha.Value:= Date;
  TfrmDocumentosEntradas(gGridEditForm).SetFoco;
end;

procedure TdmDocumentosEntradas.adoqryDocumentoCalcFields(DataSet: TDataSet);
begin
  inherited;  //Ene 30/17
  Dataset.FieldByName('TextoEnc').AsString:= 'Factura: '+Dataset.FieldByName('Factura').AsString
  +' de '+ Dataset.FieldByName('ClaveProveedor').AsString +' por '+
  Dataset.FieldByName('Total').AsString +' '+Dataset.FieldByName('Moneda').AsString+' a  TC:'+Dataset.FieldByName('TipoCambio').AsString  +#13+
  ' Total Moneda Nacional: '+FloatToSTR(Dataset.FieldByName('Total').asfloat*Dataset.FieldByName('TipoCambio').asFloat)+
  ' Pedimento:'+Dataset.FieldByName('Pedimento').AsString;
end;

constructor TdmDocumentosEntradas.CreateWTipo(AOwner: TComponent; Tipo: TPTipo);
begin
  FTipo:= Tipo;
  inherited Create(AOwner);
end;

procedure TdmDocumentosEntradas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  //Seleccion del tipo de entrada
  case Tipo of
    tRequisicion: adodsMaster.Parameters.ParamByName('IdDocumentoEntradaTipo').Value:= Ord(tRequisicion);
    tOrdenCompra: adodsMaster.Parameters.ParamByName('IdDocumentoEntradaTipo').Value:= Ord(tOrdenCompra);
    tFactura: adodsMaster.Parameters.ParamByName('IdDocumentoEntradaTipo').Value:= Ord(tFactura);
  end;
  if adodsDocumentosDetalles.CommandText <> EmptyStr then adodsDocumentosDetalles.Open;
  gGridEditForm:= TfrmDocumentosEntradas.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmDocumentosEntradas(gGridEditForm).actGenDocumento:= actGenDocumento;
  TfrmDocumentosEntradas(gGridEditForm).actAutorizar:= actAutorizar;
  TfrmDocumentosEntradas(gGridEditForm).actImprimir := actImprimir;
  TfrmDocumentosEntradas(gGridEditForm).actEmail := actEmail;
  TfrmDocumentosEntradas(gGridEditForm).actTipoCambio:= actGetTipoCambio;
  TfrmDocumentosEntradas(gGridEditForm).PnlDatosFactura.Visible:=(Tipo=tFactura);
  gFormDetail1:= TfrmDocumentosEntradasDetalle.Create(Self);
  gFormDetail1.DataSet:= adodsDocumentosDetalles;
  TfrmDocumentosEntradasDetalle(gFormDetail1).actSeleccionarProducto:= actSeleccionaProducto;
  TfrmDocumentosEntradasDetalle(gFormDetail1).actGetDetalleAnterior:= actGetDetalleAnterior;
  //Creacion de la lista de producto
  frmListaProductos:= TFrmListaProductos.Create(Self);
  frmListaProductos.DataSet:= adodsListaProductos;
  frmListaProductos.actBuscar:= actBuscarProducto;
end;

procedure TdmDocumentosEntradas.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsDocumentosDetalles.Close;
  frmListaProductos.Free;
end;

procedure TdmDocumentosEntradas.dsMasterDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  Bloquear:= adodsMasterIdDocumentoEntradaEstatus.Value <> Ord(eAbierto);
end;

function TdmDocumentosEntradas.GetIdMonedaProvedor: Integer;
begin
  Result:= adodsPersonasIdMoneda.Value;
end;

function TdmDocumentosEntradas.GetIdProducto(IdPersona: Integer; Clave: String;
var Precio: Double): Integer;
begin
  adoqGetIdProducto.Close;
  try
    adoqGetIdProducto.Parameters.ParamByName('IdPersona').Value:= IdPersona;
    adoqGetIdProducto.Parameters.ParamByName('Clave').Value:= Clave;
    adoqGetIdProducto.Open;
    if not adoqGetIdProducto.IsEmpty then
    begin
      Precio:= adoqGetIdProductoPrecio.AsFloat;
      Result := adoqGetIdProductoIdProducto.Value;
    end
    else
    begin
      Precio:= 0;
      Result:= 0;
    end;
  finally
    adoqGetIdProducto.Close;
  end;
end;

procedure TdmDocumentosEntradas.Imprimir(IdDocumentoEntrada: Integer);
  procedure MostrarImportes(Mostrar: Boolean);
  begin
    pplblPrecio.Visible:= Mostrar;
    pplblImporte.Visible:= Mostrar;
    ppdbtxtPrecio.Visible:= Mostrar;
    ppdbtxtImporte.Visible:= Mostrar;
    ppdbtxtSubTotal.Visible:= Mostrar;
  end;
begin
  adoqryDocumento.Close;
  adoqryDocumentoDetalles.Close;
  adoqryDocumento.Parameters.ParamByName('IdDocumentoEntrada').Value:= IdDocumentoEntrada;
  try
    adoqryDocumento.Open;
    adoqryDocumentoDetalles.Open;
    MostrarImportes(Tipo <> tRequisicion);
    ppDBTxtTextoFactura.Visible:= Tipo = tFactura; //Ene 30/17
    ppRptDocumento.Print;
  finally
    adoqryDocumento.Close;
    adoqryDocumentoDetalles.Close;
  end;
end;

procedure TdmDocumentosEntradas.SetBloquear(const Value: Boolean);
begin
  FBloquear := Value;
  TfrmDocumentosEntradas(gGridEditForm).pnlEncabezado.Enabled:= not Value;
  gFormDetail1.ReadOnlyGrid:= Value;
  TfrmDocumentosEntradas(gGridEditForm).pnlPie.Enabled:= not Value
end;

procedure TdmDocumentosEntradas.SetTipo(const Value: TPTipo);
begin
  FTipo := Value;
end;

procedure TdmDocumentosEntradas.UpdTotales;
begin
  adopUpdDocumento.Parameters.ParamByName('@IdDocumentoEntrada').Value:= adodsMasterIdDocumentoEntrada.Value;
  adopUpdDocumento.ExecProc;
  RefreshADODS(adodsMaster, adodsMasterIdDocumentoEntrada);
end;

function TdmDocumentosEntradas.GetCorreoEmisor(ADatosCorreo: TStringList): Boolean;
begin
  Result:=False;
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select * from Configuraciones');
  ADOQryAuxiliar.Open;
  if not (ADOQryAuxiliar.eof) and (ADOQryAuxiliar.FieldByName('HostEnvio').AsString <> EmptyStr)
  and (ADOQryAuxiliar.FieldByName('PuertoEnvio').AsString <> EmptyStr)
  and (ADOQryAuxiliar.FieldByName('PasswordCorreo').AsString <> EmptyStr)
  and (ADOQryAuxiliar.FieldByName('CorreoEnvio').AsString <> EmptyStr) then
  begin
    ADatosCorreo.Values['emailNoti']    := ADOQryAuxiliar.FieldByName('CorreoEnvio').ASString;
    ADatosCorreo.Values['host']         := ADOQryAuxiliar.FieldByName('HostEnvio').ASString;
    ADatosCorreo.Values['usuario']      :=ADOQryAuxiliar.FieldByName('UsuarioCorreo').ASString ;
    ADatosCorreo.Values['contrasenia']  :=ADOQryAuxiliar.FieldByName('PasswordCorreo').ASString ;
    ADatosCorreo.Values['puerto']       :=ADOQryAuxiliar.FieldByName('PuertoEnvio').ASString ;
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

function TdmDocumentosEntradas.GetCorreoReceptor(IdCliente: Integer;
  var CorreoCliente: String): Boolean;
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

procedure TdmDocumentosEntradas.PrintPDFFile(PDFFileName: TFileName; Mostrar: Boolean);
var
  vDeviceType: String;
  vShowPrintDialog, vShowCancelDialog, vAllowPrintToArchive: Boolean;
begin
  // Configura el reporte
  vDeviceType:= ppRptDocumento.DeviceType;
  vShowPrintDialog := ppRptDocumento.ShowPrintDialog;
  vShowCancelDialog := ppRptDocumento.ShowCancelDialog;
  vAllowPrintToArchive := ppRptDocumento.AllowPrintToArchive;
  try
    ppRptDocumento.ShowPrintDialog:= False;
    ppRptDocumento.ShowCancelDialog:= False;
    ppRptDocumento.AllowPrintToArchive:= False;
    if Mostrar then
       ppRptDocumento.DeviceType:= 'Screen'
    else
    if PDFFileName <> '' then
    begin
      ppRptDocumento.DeviceType:= 'PDF';
      ppRptDocumento.TextFileName:= PDFFileName;
    end
    else
      ppRptDocumento.DeviceType:= 'Printer';
    ppRptDocumento.PrinterSetup.Copies:= 1;
    ppRptDocumento.PrinterSetup.DocumentName:= ExtractFileName(PDFFileName);
    Imprimir(adodsMasterIdDocumentoEntrada.Value);
  finally
    ppRptDocumento.DeviceType := vDeviceType;
    ppRptDocumento.ShowPrintDialog := vShowPrintDialog;
    ppRptDocumento.ShowCancelDialog := vShowCancelDialog;
    ppRptDocumento.AllowPrintToArchive := vAllowPrintToArchive;
  end;
end;

end.
