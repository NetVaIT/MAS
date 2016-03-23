unit OrdenesEntradasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes, ListaProductosForm;

resourcestring
  strErrorClave = 'No encontro el artículo para este proveedor, favor de teclear uno valido.';
  strAllowGenDocumento = '¿Desea crear el documento?';
  strAllowApprove = '¿Deasea aplicar la orden de entrada?';

type
  TPEstatus = (eNone, eGenerada, eRecoleccion, eRevision, eAutorizacion, eEmpaque, eEnvio, eRecibida, eCancelada);
  TdmOrdenesEntradas = class(T_dmStandar)
    dsmaster: TDataSource;
    adodsMasterIdOrdenEntrada: TAutoIncField;
    adodsMasterIdDocumentoEntrada: TIntegerField;
    adodsMasterIdAlmacen: TIntegerField;
    adodsMasterIdOrdenEstatus: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterTipoCambio: TFMTBCDField;
    adodsMasterSubTotal: TFMTBCDField;
    adodsMasterIVA: TFMTBCDField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterObservaciones: TStringField;
    adodsEstatus: TADODataSet;
    adodsPersonas: TADODataSet;
    adodsPersonasIdPersona: TAutoIncField;
    adodsPersonasIdMoneda: TIntegerField;
    adodsPersonasIdentificador: TStringField;
    adodsPersonasProvedor: TStringField;
    adodsPersonasMoneda: TStringField;
    adodsMonedas: TADODataSet;
    adodsUsuarios: TADODataSet;
    adodsAlmacenes: TADODataSet;
    adodsMasterAlmacen: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterProvedor: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterUsuario: TStringField;
    adodsMasterCLaveProvedor: TStringField;
    adodsItems: TADODataSet;
    dsItems: TDataSource;
    adodsItemsIdOrdenEntradaItem: TAutoIncField;
    adodsItemsIdOrdenEntrada: TIntegerField;
    adodsItemsIdDocumentoEntradaDetalle: TIntegerField;
    adodsItemsIdProducto: TIntegerField;
    adodsItemsClaveProducto: TStringField;
    adodsItemsCantidad: TFloatField;
    adodsItemsPrecio: TFMTBCDField;
    adodsProductos: TADODataSet;
    adodsItemsProducto: TStringField;
    adodsItemsImporte: TFMTBCDField;
    adodsItemsCantidadSolicitada: TFloatField;
    actSeleccionaProducto: TAction;
    actGetTipoCambio: TAction;
    adoqTipoCambio: TADOQuery;
    adoqTipoCambioValor: TFMTBCDField;
    adopUpdEntrada: TADOStoredProc;
    adopGenOrdenEntrada: TADOStoredProc;
    adodsFacturas: TADODataSet;
    adodsFacturasIdDocumentoEntrada: TAutoIncField;
    adodsFacturasIdPersona: TIntegerField;
    adodsFacturasTipo: TStringField;
    adodsFacturasNumero: TAutoIncField;
    adodsFacturasFecha: TDateTimeField;
    adodsFacturasIdentificador: TStringField;
    adodsFacturasProvedor: TStringField;
    adodsFacturasTotal: TFMTBCDField;
    adodsFacturasObservaciones: TStringField;
    actCrearOrden: TAction;
    adoqGetIdProducto: TADOQuery;
    adoqGetIdProductoIdProducto: TIntegerField;
    adoqGetIdProductoPrecio: TFMTBCDField;
    actBuscarProducto: TAction;
    adodsListaProductos: TADODataSet;
    adodsListaProductosIdProducto: TIntegerField;
    adodsListaProductosIdPersonaProveedor: TIntegerField;
    adodsListaProductosIdentificador1: TStringField;
    adodsListaProductosIdentificador2: TStringField;
    adodsListaProductosIdentificador3: TStringField;
    adodsListaProductosDescripcion: TStringField;
    adodsListaProductosPrecioUnitario: TFMTBCDField;
    adoqGetIdProductoPendiente: TFloatField;
    actAplicarEntrada: TAction;
    adopSetEstatus: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure actSeleccionaProductoExecute(Sender: TObject);
    procedure actGetTipoCambioExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsItemsAfterPost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure actCrearOrdenExecute(Sender: TObject);
    procedure adodsItemsCantidadChange(Sender: TField);
    procedure adodsItemsClaveProductoChange(Sender: TField);
    procedure adodsItemsClaveProductoValidate(Sender: TField);
    procedure adodsItemsPrecioChange(Sender: TField);
    procedure actBuscarProductoExecute(Sender: TObject);
    procedure actAplicarEntradaExecute(Sender: TObject);
    procedure actAplicarEntradaUpdate(Sender: TObject);
    procedure dsmasterDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    frmListaProductos: TfrmListaProductos;
    FIdProducto: Integer;
    FPrecio: Double;
    fCantidadSolicitada: Double;
    FMostrarCantidad: Boolean;
    FMostarImporte: Boolean;
    FBloquear: Boolean;
    function GetIdProducto(IdPersona: Integer; Clave: String;
      var Precio: Double; var CantidadSolicitada: Double): Integer;
    procedure SetMostrarCantidad(const Value: Boolean);
    procedure SetMostarImporte(const Value: Boolean);
    procedure SetBloquear(const Value: Boolean);
  public
    { Public declarations }
    property MostrarCantidad: Boolean read FMostrarCantidad write SetMostrarCantidad default False;
    property MostarImporte: Boolean read FMostarImporte write SetMostarImporte default False;
    property Bloquear: Boolean read FBloquear write SetBloquear;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses OrdenesEntradasForm, OrdenesEntradasItemsForm, _ConectionDmod,
  ConfiguracionDM, _Utils, OrdenesEntradasSeleccionGrid;

{$R *.dfm}

procedure TdmOrdenesEntradas.actGetTipoCambioExecute(Sender: TObject);
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

procedure TdmOrdenesEntradas.actAplicarEntradaExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg(strAllowApprove, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    adopSetEstatus.Parameters.ParamByName('@IdOrdenEntrada').Value:= adodsMasterIdOrdenEntrada.Value;
    adopSetEstatus.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
    adopSetEstatus.ExecProc;
    RefreshADODS(adodsMaster, adodsMasterIdOrdenEntrada);
  end;
end;

procedure TdmOrdenesEntradas.actAplicarEntradaUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled:= (adodsMasterIdOrdenEstatus.Value = Ord(eGenerada));
end;

procedure TdmOrdenesEntradas.actBuscarProductoExecute(Sender: TObject);
begin
  inherited;
  adodsListaProductos.Close;
  adodsListaProductos.Parameters.ParamByName('IdPersona').Value:= adodsMasterIdPersona.Value;
  adodsListaProductos.Parameters.ParamByName('Clave1').Value:= frmListaProductos.Clave;
  adodsListaProductos.Parameters.ParamByName('Clave2').Value:= frmListaProductos.Clave;
  adodsListaProductos.Parameters.ParamByName('Clave3').Value:= frmListaProductos.Clave;
  adodsListaProductos.Open
end;

procedure TdmOrdenesEntradas.actCrearOrdenExecute(Sender: TObject);
var
  frmSeleccion: TfrmOrdenesEntradasSeleccionGrid;
  IdDocumentoEntrada: Integer;
begin
  inherited;
  frmSeleccion := TfrmOrdenesEntradasSeleccionGrid.Create(Self);
  try
    adodsFacturas.Open;
    frmSeleccion.ReadOnlyGrid:= True;
    frmSeleccion.View:= True;
    frmSeleccion.DataSet:= adodsFacturas;
    frmSeleccion.ShowModal;
    IdDocumentoEntrada:= adodsFacturasIdDocumentoEntrada.Value;
  finally
    adodsFacturas.Close;
    frmSeleccion.Free;
  end;
  // Genera orden de entrada en base al documento
  if IdDocumentoEntrada > 0 then
    if MessageDlg(strAllowGenDocumento, mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      adopGenOrdenEntrada.Parameters.ParamByName('@IdDocumentoEntrada').Value:= IdDocumentoEntrada;
      adopGenOrdenEntrada.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
      adopGenOrdenEntrada.ExecProc;
      RefreshADODS(adodsMaster, adodsMasterIdOrdenEntrada);
    end;
end;

procedure TdmOrdenesEntradas.actSeleccionaProductoExecute(Sender: TObject);
begin
  inherited;
  frmListaProductos.Clave:= adodsItemsClaveProducto.AsString;
//  actSeleccionaProducto.Execute;
  frmListaProductos.ShowModal;
  if adodsItems.State in [dsEdit,dsInsert] then
  begin
    adodsItemsIdProducto.Value := frmListaProductos.IdProducto;
    adodsItemsClaveProducto.AsString:= frmListaProductos.Identificador;
  end;
end;

procedure TdmOrdenesEntradas.adodsItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  adopUpdEntrada.Parameters.ParamByName('@IdOrdenEntrada').Value:= adodsMasterIdOrdenEntrada.Value;
  adopUpdEntrada.ExecProc;
  RefreshADODS(adodsMaster, adodsMasterIdOrdenEntrada);
end;

procedure TdmOrdenesEntradas.adodsItemsCantidadChange(Sender: TField);
begin
  inherited;
  if adodsItems.State in [dsEdit,dsInsert] then
  begin
//    adodsItemsCantidadSolicitada .Value:= adodsItemsCantidad.Value;
    adodsItemsImporte.Value:= adodsItemsPrecio.Value * adodsItemsCantidad.Value;
  end;
end;

procedure TdmOrdenesEntradas.adodsItemsClaveProductoChange(Sender: TField);
begin
  inherited;
  if FIdProducto <> 0 then
  begin
    if adodsItems.State in [dsEdit,dsInsert] then
    begin
      adodsItemsIdProducto.Value:= FIdProducto;
      adodsItemsPrecio.Value:= FPrecio;
      adodsItemsCantidadSolicitada.Value:= FCantidadSolicitada;
      adodsItemsImporte.Value:= adodsItemsPrecio.Value * adodsItemsCantidad.Value;
    end;
  end;
end;

procedure TdmOrdenesEntradas.adodsItemsClaveProductoValidate(Sender: TField);
begin
  inherited;
  if adodsItems.State in [dsEdit,dsInsert] then
  begin
    FIdProducto:= GetIdProducto(adodsMasterIdPersona.Value,
    adodsItemsClaveProducto.AsString, FPrecio, FCantidadSolicitada);
    if FIdProducto = 0 then
      raise Exception.Create(strErrorClave);
  end;
end;

procedure TdmOrdenesEntradas.adodsItemsPrecioChange(Sender: TField);
begin
  inherited;
  if adodsItems.State in [dsEdit,dsInsert] then
  begin
    adodsItemsImporte.Value:= adodsItemsPrecio.Value * adodsItemsCantidad.Value;
  end;
end;

procedure TdmOrdenesEntradas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdOrdenEstatus.Value:= 1;
  adodsMasterIdMoneda.Value:= dmConfiguracion.IdMoneda;
  adodsMasterTipoCambio.Value:= 1;
  adodsMasterIdUsuario.Value:= _dmConection.IdUsuario;
  adodsMasterFecha.Value:= Date;
end;

procedure TdmOrdenesEntradas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsItems.CommandText <> EmptyStr then adodsItems.Open;
  gGridEditForm:= TfrmOrdenesEntradas.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmOrdenesEntradas(gGridEditForm).actTipoCambio:= actGetTipoCambio;
  TfrmOrdenesEntradas(gGridEditForm).actCrearOrden:= actCrearOrden;
  TfrmOrdenesEntradas(gGridEditForm).actAutorizar:= actAplicarEntrada;
  gFormDetail1:= TfrmOrdenesEntradasItems.Create(Self);
  gFormDetail1.DataSet:= adodsItems;
  TfrmOrdenesEntradasItems(gFormDetail1).actSeleccionarProducto:= actSeleccionaProducto;
  //Creacion de la lista de producto
  frmListaProductos:= TFrmListaProductos.Create(Self);
  frmListaProductos.DataSet:= adodsListaProductos;
  frmListaProductos.actBuscar:= actBuscarProducto;
end;

procedure TdmOrdenesEntradas.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsItems.Close;
  frmListaProductos.Free;
end;

procedure TdmOrdenesEntradas.dsmasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  Bloquear:= (adodsMasterIdOrdenEstatus.Value <> Ord(eGenerada));
end;

function TdmOrdenesEntradas.GetIdProducto(IdPersona: Integer; Clave: String;
  var Precio, CantidadSolicitada: Double): Integer;
begin
  adoqGetIdProducto.Close;
  try
    adoqGetIdProducto.Parameters.ParamByName('IdPersona').Value:= IdPersona;
    adoqGetIdProducto.Parameters.ParamByName('Clave').Value:= Clave;
    adoqGetIdProducto.Open;
    if not adoqGetIdProducto.IsEmpty then
    begin
      CantidadSolicitada:= adoqGetIdProductoPendiente.Value;
      Precio:= adoqGetIdProductoPrecio.AsFloat;
      Result := adoqGetIdProductoIdProducto.Value;
    end
    else
    begin
      CantidadSolicitada:= 0;
      Precio:= 0;
      Result:= 0;
    end;
  finally
    adoqGetIdProducto.Close;
  end;
end;

procedure TdmOrdenesEntradas.SetBloquear(const Value: Boolean);
begin
  FBloquear := Value;
  TfrmOrdenesEntradas(gGridEditForm).pnlEncabezado.Enabled:= not Value;
  gFormDetail1.ReadOnlyGrid:= Value;
  TfrmOrdenesEntradas(gGridEditForm).pnlPie.Enabled:= not Value
end;

procedure TdmOrdenesEntradas.SetMostarImporte(const Value: Boolean);
begin
  FMostarImporte := Value;
  adodsItemsPrecio.Visible:= Value;
  adodsItemsImporte.Visible:= Value;
  adodsMasterSubTotal.Visible:= Value;
  adodsMasterIVA.Visible:= Value;
  adodsMasterTotal.Visible:= Value;
end;

procedure TdmOrdenesEntradas.SetMostrarCantidad(const Value: Boolean);
begin
  FMostrarCantidad := Value;
  adodsItemsCantidadSolicitada.Visible:= Value;
end;

end.
