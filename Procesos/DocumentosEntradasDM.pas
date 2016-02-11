unit DocumentosEntradasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, Vcl.Dialogs, ListaProductosForm, ppDB, ppDBPipe,
  ppParameter, ppDesignLayer, ppBands, ppStrtch, ppMemo, ppCtrls,
  dxGDIPlusClasses, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport;

resourcestring
  strErrorClave = 'No encontro el artículo para este proveedor, favor de teclear uno valido.';

type
  TPTipo = (tNone, tRequisicion, tOrdenCompra, tProforma, tDevolucion);
  TPEstatus = (eNone, eAbierto, eCerrado, eAutorizado, eCancelado);
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
    dsmaster: TDataSource;
    adodsDocumentosDetalles: TADODataSet;
    adodsDocumentosDetallesIdDocumentoentradaDetalle: TAutoIncField;
    adodsDocumentosDetallesIdDocumentoEntrada: TIntegerField;
    adodsDocumentosDetallesIdAlmacen: TIntegerField;
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
    adopAutorizar: TADOStoredProc;
    dsDetalle: TDataSource;
    ppRptDocumento: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppShape1: TppShape;
    ppShape7: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel35: TppLabel;
    ppDBText11: TppDBText;
    ppDBText19: TppDBText;
    ppLine9: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape8: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel18: TppLabel;
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
    ppDBText2: TppDBText;
    ppDBText15: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel21: TppLabel;
    ppLine1: TppLine;
    ppLabel23: TppLabel;
    ppDBText16: TppDBText;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppdbpDetalle: TppDBPipeline;
    ppdbpMaster: TppDBPipeline;
    actImprimir: TAction;
    ppDBText3: TppDBText;
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
    procedure actAutorizarUpdate(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
  private
    { Private declarations }
    frmListaProductos: TfrmListaProductos;
    FIdProducto: Integer;
    FPrecio: Double;
    FTipo: TPTipo;
    function GetIdMonedaProvedor: Integer;
    procedure SetTipo(const Value: TPTipo);
    function GetIdProducto(IdPersona: Integer; Clave: String;
      var Precio: Double): Integer;
  public
    { Public declarations }
    constructor CreateWTipo(AOwner: TComponent; Tipo: TPTipo); virtual;
    property Tipo: TPTipo read FTipo write SetTipo;
    property IdMonedaProvedor: Integer read GetIdMonedaProvedor;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosEntradasForm, DocumentosEntradasDetalleForm, ConfiguracionDM,
  _ConectionDmod, _Utils;

{$R *.dfm}

procedure TdmDocumentosEntradas.actAutorizarExecute(Sender: TObject);
begin
  inherited;
  adopAutorizar.Parameters.ParamByName('@IdDocumentoEntrada').Value:= adodsMasterIdDocumentoEntrada.Value;
  adopAutorizar.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
  adopAutorizar.ExecProc;
  RefreshADODS(adodsMaster, adodsMasterIdDocumentoEntrada);
end;

procedure TdmDocumentosEntradas.actAutorizarUpdate(Sender: TObject);
begin
  inherited;
  actAutorizar.Enabled:= (adodsMasterIdDocumentoEntradaEstatus.Value = Ord(eAbierto));
end;

procedure TdmDocumentosEntradas.actBuscarProductoExecute(Sender: TObject);
begin
  inherited;
  adodsListaProductos.Close;
  adodsListaProductos.Parameters.ParamByName('IdPersona').Value:= adodsMasterIdPersona.Value;
  adodsListaProductos.Parameters.ParamByName('Clave1').Value:= frmListaProductos.Clave;
  adodsListaProductos.Parameters.ParamByName('Clave2').Value:= frmListaProductos.Clave;
  adodsListaProductos.Parameters.ParamByName('Clave3').Value:= frmListaProductos.Clave;
  adodsListaProductos.Open
end;

procedure TdmDocumentosEntradas.actImprimirExecute(Sender: TObject);
begin
  inherited;
  ppRptDocumento.Print;
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
  adopUpdDocumento.Parameters.ParamByName('@IdDocumentoEntrada').Value:= adodsMasterIdDocumentoEntrada.Value;
  adopUpdDocumento.ExecProc;
  RefreshADODS(adodsMaster, adodsMasterIdDocumentoEntrada);
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
    tProforma: adodsMasterIdDocumentoEntradaTipo.Value:= Ord(tProforma);
  end;
  adodsMasterIdDocumentoEntradaEstatus.Value:= 1;
  adodsMasterIdMoneda.Value:= dmConfiguracion.IdMoneda;
  adodsMasterIdUsuario.Value:= _dmConection.IdUsuario;
  adodsMasterFecha.Value:= Date;
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
    tProforma: adodsMaster.Parameters.ParamByName('IdDocumentoEntradaTipo').Value:= Ord(tProforma);
  end;
  if adodsDocumentosDetalles.CommandText <> EmptyStr then adodsDocumentosDetalles.Open;
  gGridEditForm:= TfrmDocumentosEntradas.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmDocumentosEntradas(gGridEditForm).actAutorizar:= actAutorizar;
  TfrmDocumentosEntradas(gGridEditForm).actImprimir := actImprimir;
  gFormDetail1:= TfrmDocumentosEntradasDetalle.Create(Self);
  gFormDetail1.DataSet:= adodsDocumentosDetalles;
  TfrmDocumentosEntradasDetalle(gFormDetail1).actSeleccionarProducto:= actSeleccionaProducto;
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

procedure TdmDocumentosEntradas.SetTipo(const Value: TPTipo);
begin
  FTipo := Value;
end;

end.
