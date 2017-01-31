unit OrdenesEntradasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes, ListaProductosForm,
  ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands,
  dxGDIPlusClasses, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport;

resourcestring
  strErrorClave = 'No encontro el artículo para este proveedor, favor de teclear uno valido.';
  strAllowGenDocumento = '¿Desea crear la orden de entrada?';
  strAllowReceive = '¿Deasea recibir la orden de entrada?';
  strAllowApply = '¿Deasea aplicar la orden de entrada?';

type
  TPTipo    = (tNone, tEntradaMercacia, TOrdenEntrada);
  TPEstatus = (eNone, eGenerada, eRecoleccion, eRevision, eAutorizacion, eEmpaque, eEnvio, eRecibida, eCancelada, eAplicada);
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
    actBuscarProducto: TAction;
    adodsListaProductos: TADODataSet;
    adodsListaProductosIdProducto: TIntegerField;
    adodsListaProductosIdPersonaProveedor: TIntegerField;
    adodsListaProductosIdentificador1: TStringField;
    adodsListaProductosIdentificador2: TStringField;
    adodsListaProductosIdentificador3: TStringField;
    adodsListaProductosDescripcion: TStringField;
    adodsListaProductosPrecioUnitario: TFMTBCDField;
    actAplicarEntrada: TAction;
    adopSetEstatus: TADOStoredProc;
    adodsItemsImporteMonedaLocal: TFMTBCDField;
    adodsItemsImpuestoArancelario: TFMTBCDField;
    adodsItemsGastos: TFMTBCDField;
    adodsItemsImporteTotal: TFMTBCDField;
    adodsItemsCostoAproximado: TFMTBCDField;
    actModificarArancel: TAction;
    actModificarGastos: TAction;
    actRecibirMercancia: TAction;
    adodsItemsCosto: TFMTBCDField;
    adodsItemsPrecioVenta: TFMTBCDField;
    adodsItemsPorcentajeUtilidad: TFMTBCDField;
    adoqGetIdProductoIdProducto: TIntegerField;
    adoqGetIdProductoCosto: TFMTBCDField;
    adoqGetIdProductoPrecio: TFloatField;
    adoqGetIdProductoPendiente: TFloatField;
    actAcomodarGenerico: TAction;
    ADODtStProductosXEspacioAD: TADODataSet;
    adospSetProductosXEspacio: TADOStoredProc;
    ADODtStProductosXEspacioADIdProductoXEspacio: TAutoIncField;
    ADODtStProductosXEspacioADIdAlmacen: TIntegerField;
    ADODtStProductosXEspacioADIdProducto: TIntegerField;
    ADODtStProductosXEspacioADIdEspacio: TIntegerField;
    ADODtStProductosXEspacioADIdCategoria: TIntegerField;
    ADODtStProductosXEspacioADAlmacen: TStringField;
    ADODtStProductosXEspacioADIdentificador1: TStringField;
    ADODtStProductosXEspacioADIdentificador2: TStringField;
    ADODtStProductosXEspacioADIdentificador3: TStringField;
    ADODtStProductosXEspacioADProducto: TStringField;
    ADODtStProductosXEspacioADEspacio: TStringField;
    ADODtStProductosXEspacioADCantidad: TFloatField;
    ADODtStVerificaAduana: TADODataSet;
    dsDetalle: TDataSource;
    ppRptDocumento: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape8: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel18: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel4: TppLabel;
    ppDBText15: TppDBText;
    ppLabel5: TppLabel;
    ppDBText16: TppDBText;
    ppLabel6: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel7: TppLabel;
    ppDBText19: TppDBText;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppdbpDetalle: TppDBPipeline;
    ppdbpMaster: TppDBPipeline;
    adoqryDocumento: TADOQuery;
    dsDocumento: TDataSource;
    adoqryDocumentoDetalles: TADOQuery;
    ActImpresion: TAction;
    ADODtStDatosFacturaDocs: TADODataSet;
    ADODtStDatosFacturaDocsIdDocumentoEntrada: TAutoIncField;
    adodsMasterNoFactura: TStringField;
    adodsMasterPedimento: TStringField;
    ActAcomodoIndividual: TAction;
    adodsFacturasFacturaProveedor: TStringField;
    ADODtStDatosFacturaDocsIdentificador: TStringField;
    ADODtStDatosFacturaDocsPedimento: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actSeleccionaProductoExecute(Sender: TObject);
    procedure actGetTipoCambioExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsItemsAfterPost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure actCrearOrdenExecute(Sender: TObject);
    procedure adodsItemsClaveProductoChange(Sender: TField);
    procedure adodsItemsClaveProductoValidate(Sender: TField);
    procedure adodsItemsCostoChange(Sender: TField);
    procedure actBuscarProductoExecute(Sender: TObject);
    procedure actAplicarEntradaExecute(Sender: TObject);
    procedure actAplicarEntradaUpdate(Sender: TObject);
    procedure dsmasterDataChange(Sender: TObject; Field: TField);
    procedure actModificarArancelExecute(Sender: TObject);
    procedure actModificarGastosExecute(Sender: TObject);
    procedure actRecibirMercanciaExecute(Sender: TObject);
    procedure actRecibirMercanciaUpdate(Sender: TObject);
    procedure adodsMasterTipoCambioChange(Sender: TField);
    procedure adodsItemsCalcFields(DataSet: TDataSet);
    procedure actAcomodarGenericoExecute(Sender: TObject);
    procedure actAcomodarGenericoUpdate(Sender: TObject);
    procedure ActImpresionExecute(Sender: TObject);
    procedure ActAcomodoIndividualExecute(Sender: TObject);
    procedure ActAcomodoIndividualUpdate(Sender: TObject);
  private
    { Private declarations }
    frmListaProductos: TfrmListaProductos;
    FIdProducto: Integer;
    FCosto: Double;
    FPrecio: Double;
    FCantidadSolicitada: Double;
    FMostrarCantidad: Boolean;
    FMostrarImporte: Boolean;
    FBloquear: Boolean;
    FTipo: TPTipo;
    function GetIdProducto(IdPersona: Integer; Clave: String;
      var Costo, Precio: Double; var CantidadSolicitada: Double): Integer;
    procedure SetMostrarCantidad(const Value: Boolean);
    procedure SetMostrarImporte(const Value: Boolean);
    procedure SetBloquear(const Value: Boolean);
    procedure CalcularItemsImportes;
    procedure SetTipo(const Value: TPTipo);
    procedure ActualizarTotales;
    function VerificaProdEnAduana(IdOrdenEntrada:Integer):Boolean; //Oct 12/16
    procedure Imprimir(IdDocumentoEntrada: Integer);
    function VerificaActualAcomodo: Boolean; //Oct 20/16 Del codigo de Jessus
  public
    { Public declarations }
    constructor CreateWTipo(AOwner: TComponent; Tipo: TPTipo); virtual;
    property Tipo: TPTipo read FTipo write SetTipo;
    property MostrarCantidad: Boolean read FMostrarCantidad write SetMostrarCantidad default False;
    property MostrarImporte: Boolean read FMostrarImporte write SetMostrarImporte default False;
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

procedure TdmOrdenesEntradas.ActImpresionExecute(Sender: TObject);
begin
  inherited;
   Imprimir(adodsMasterIdOrdenEntrada.Value); //
end;

procedure TdmOrdenesEntradas.actModificarArancelExecute(Sender: TObject);
var
  strValor: string;
  dValor: Double;
begin
  inherited;
  if InputQuery('Impuesto arancelario','¿Cual es el impuesto arancelario para cada producto?', strValor) then
    if TryStrToFloat(strValor,dValor) then
    begin
      adodsItems.DisableControls;
      try
        adodsItems.First;
        while not adodsItems.Eof do
        begin
          adodsItems.Edit;
          adodsItemsImpuestoArancelario.AsFloat:= dValor;
          adodsItems.Post;
          adodsItems.Next;
        end;
        adodsItems.First;
      finally
        adodsItems.EnableControls;
      end;
      ActualizarTotales;
    end
    else
      MessageDlg('El valor ingresado no es valido.', mtError, [mbOK], 0);
end;

procedure TdmOrdenesEntradas.actModificarGastosExecute(Sender: TObject);
var
  strValor: string;
  dValor: Double;
begin
  inherited;
  if InputQuery('Gastos aproximados','¿Cual es el porcentaje de gastos aproximados?', strValor) then
    if TryStrToFloat(strValor,dValor) and ((dValor >= -100) and (dValor <= 100)) then
    begin
      adodsItems.DisableControls;
      try
        adodsItems.First;
        while not adodsItems.Eof do
        begin
          adodsItems.Edit;
          adodsItemsGastos.AsFloat := (adodsItemsImporteMonedaLocal.AsFloat*(dValor/100));
          adodsItems.Post;
          adodsItems.Next;
        end;
        adodsItems.First;
      finally
        adodsItems.EnableControls;
      end;
      ActualizarTotales;
    end
    else
      MessageDlg('El valor ingresado no es valido.', mtError, [mbOK], 0);
end;

procedure TdmOrdenesEntradas.actRecibirMercanciaExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg(strAllowReceive, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    adopSetEstatus.Parameters.ParamByName('@IdOrdenEntrada').Value:= adodsMasterIdOrdenEntrada.Value;
    adopSetEstatus.Parameters.ParamByName('@IdUsuario').Value:= _dmConection.IdUsuario;
    adopSetEstatus.ExecProc;
    RefreshADODS(adodsMaster, adodsMasterIdOrdenEntrada);
  end;
end;

procedure TdmOrdenesEntradas.actRecibirMercanciaUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled:= (adodsMasterIdOrdenEstatus.Value = Ord(eGenerada));
end;

procedure TdmOrdenesEntradas.actAcomodarGenericoExecute(Sender: TObject);     //Oct 12/16
var
  IdAlmacen, IdEspacioAd, IdEspGenerico, cuantos, cont :Integer;
  CantidadPasar:Double;
begin
  inherited;
  IdEspacioAd:=dmconfiguracion.IDEspacioAduana;
  IdEspGenerico:=1; //Es e quie tienen ellos deficnido pero luego hay que tomarlo de una lista
  if MessageDlg('Se colocarán todos los productos de la orden en el espacio genérico. ¿Esta seguro?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
  //Ciclo en items
    adodsItems.First;
    cont:=0;
    Cuantos:= adodsItems.recordcount;
    while not adodsItems.eof do
    begin
      ADODtStProductosXEspacioAD.Close;
      ADODtStProductosXEspacioAD.Parameters.ParamByName('IDAduana').value:= IdEspacioAd;
      ADODtStProductosXEspacioAD.Parameters.ParamByName('IDOrdenEntradaItem').Value:= adodsItemsIdOrdenEntradaItem.Value;
      ADODtStProductosXEspacioAD.open;   //Se cambio filtro para que traiga solo los que no estan en 0 .. deben coincidir tal cual con los de los items ya que van por item //Nov 7/16
      CantidadPasar:= adodsItemsCantidad.Value;
      if not ADODtStProductosXEspacioAD.Eof then
      begin
        adospSetProductosXEspacio.Parameters.ParamByName('@IdProductoXEspacioO').Value:= ADODtStProductosXEspacioADIdProductoXEspacio.Value;
        adospSetProductosXEspacio.Parameters.ParamByName('@IdEspacioD').Value:= IdEspGenerico;
        adospSetProductosXEspacio.Parameters.ParamByName('@CantidadD').Value:= CantidadPasar;
        adospSetProductosXEspacio.ExecProc;
        cont:=cont+1;
      end
      else
        Showmessage(' idoi:'+adodsItemsIdOrdenEntradaItem.asstring+' Producto  '+ adodsItemsProducto.AsString +' No encontrado en Aduana' );
      adodsItems.Next;
    end;
    if cont >0 then
       Showmessage('Se actualizaron '+ intTosTr(cont) +' registros ');
  end;
end;

procedure TdmOrdenesEntradas.actAcomodarGenericoUpdate(Sender: TObject);
begin
  inherited;
   TAction(Sender).Enabled:= VerificaProdEnAduana(adodsMasterIdOrdenEntrada.Value) and (adodsMasterIdOrdenEstatus.Value = Ord(eAplicada));  //Oct 12/16
end;

procedure TdmOrdenesEntradas.ActAcomodoIndividualExecute(Sender: TObject);
var
  IdAlmacen, IdEspacioAd, IdEspGenerico, cuantos, cont :Integer;
  CantidadPasar:Double;
begin               //Falta probar
  inherited;
  cont:=0;
  IdEspacioAd:=dmconfiguracion.IDEspacioAduana;
  IdEspGenerico:=1; //Es e quie tienen ellos deficnido pero luego hay que tomarlo de una lista
  if MessageDlg('Se colocará el producto '+adodsItemsProducto.AsString +' en el espacio Generico. ¿Esta seguro?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    ADODtStProductosXEspacioAD.Close;
    ADODtStProductosXEspacioAD.Parameters.ParamByName('IDAduana').value:= IdEspacioAd;
    ADODtStProductosXEspacioAD.Parameters.ParamByName('IDOrdenEntradaItem').Value:= adodsItemsIdOrdenEntradaItem.Value;
    ADODtStProductosXEspacioAD.open;
    CantidadPasar:= adodsItemsCantidad.Value;
    if not ADODtStProductosXEspacioAD.Eof then
    begin
      adospSetProductosXEspacio.Parameters.ParamByName('@IdProductoXEspacioO').Value:= ADODtStProductosXEspacioADIdProductoXEspacio.Value;
      adospSetProductosXEspacio.Parameters.ParamByName('@IdEspacioD').Value:= IdEspGenerico;
      adospSetProductosXEspacio.Parameters.ParamByName('@CantidadD').Value:= CantidadPasar;
      adospSetProductosXEspacio.ExecProc;
      cont:=cont+1;
    end
    else
      Showmessage(' idoi:'+adodsItemsIdOrdenEntradaItem.asstring+' Producto  '+ adodsItemsProducto.AsString +' No encontrado en Aduana' );
    if cont >0 then
       Showmessage('Se actualizó el registro');
  end;

end;

procedure TdmOrdenesEntradas.ActAcomodoIndividualUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Visible:= (Tipo = TOrdenEntrada);
  TAction(Sender).Enabled:=  (adodsMasterIdOrdenEstatus.Value = Ord(eAplicada)) and VerificaActualAcomodo;

 end;

function TdmOrdenesEntradas.VerificaActualAcomodo:Boolean;  //Nov 7/16
var
  IdEspacioAd:integer;

begin
  Result:=False;
  IdEspacioAd:=dmConfiguracion.IDEspacioAduana;
  ADODtStProductosXEspacioAD.Close;
  ADODtStProductosXEspacioAD.Parameters.ParamByName('IDAduana').value:= IdEspacioAd;
  ADODtStProductosXEspacioAD.Parameters.ParamByName('IDOrdenEntradaItem').Value:= adodsItemsIdOrdenEntradaItem.Value;
  ADODtStProductosXEspacioAD.open;
  if not ADODtStProductosXEspacioAD.eof then
    result:= adodsItemsCantidad.Value = ADODtStProductosXEspacioADCantidad.Value;


end;

procedure TdmOrdenesEntradas.actAplicarEntradaExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg(strAllowApply, mtConfirmation, mbYesNo, 0) = mrYes then
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
  TAction(Sender).Visible:= (Tipo = TOrdenEntrada);
  TAction(Sender).Enabled:= (adodsMasterIdOrdenEstatus.Value = Ord(eRecibida));
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
      adodsMaster.Locate('IdDocumentoEntrada',IdDocumentoEntrada,[]);  //Oct 19/16
   //   TfrmOrdenesEntradas(gGridEditForm).DataSource.DataSet.First; //Oct 12/16
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

procedure TdmOrdenesEntradas.ActualizarTotales;
begin
  adopUpdEntrada.Parameters.ParamByName('@IdOrdenEntrada').Value:= adodsMasterIdOrdenEntrada.Value;
  adopUpdEntrada.ExecProc;
  RefreshADODS(adodsMaster, adodsMasterIdOrdenEntrada);
end;

procedure TdmOrdenesEntradas.adodsItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if not adodsItems.ControlsDisabled then
    ActualizarTotales;
end;

procedure TdmOrdenesEntradas.adodsItemsCalcFields(DataSet: TDataSet);
begin
  inherited;
  if adodsItemsCostoAproximado.AsFloat <> 0 then  // era precioVenta Oct 13/16                                                                  //ajuste Utilidad sobre costo(era adodsItemsPrecioVenta)   Oct 12/16
    adodsItemsPorcentajeUtilidad.Value:= ((adodsItemsPrecioVenta.AsFloat - adodsItemsCostoAproximado.AsFloat) / adodsItemsCostoAproximado.AsFloat)*100
  else
    adodsItemsPorcentajeUtilidad.Value:= 0;
end;

procedure TdmOrdenesEntradas.adodsItemsClaveProductoChange(Sender: TField);
begin
  inherited;
  if FIdProducto <> 0 then
  begin
    if adodsItems.State in [dsEdit,dsInsert] then
    begin
      adodsItemsIdProducto.Value:= FIdProducto;
      adodsItemsCosto.Value:= FCosto;
      adodsItemsPrecioVenta.Value:= FPrecio;
      adodsItemsCantidadSolicitada.Value:= FCantidadSolicitada;
      CalcularItemsImportes;
    end;
  end;
end;

procedure TdmOrdenesEntradas.adodsItemsClaveProductoValidate(Sender: TField);
begin
  inherited;
  if adodsItems.State in [dsEdit,dsInsert] then
  begin
    FIdProducto:= GetIdProducto(adodsMasterIdPersona.Value,
    adodsItemsClaveProducto.AsString, FCosto, FPrecio, FCantidadSolicitada);
    if FIdProducto = 0 then
      raise Exception.Create(strErrorClave);
  end;
end;

procedure TdmOrdenesEntradas.adodsItemsCostoChange(Sender: TField);
begin
  inherited;
  if adodsItems.State in [dsEdit,dsInsert] then
    CalcularItemsImportes;
end;

procedure TdmOrdenesEntradas.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdOrdenEstatus.Value:= 1;
  adodsMasterIdMoneda.Value:= dmConfiguracion.IdMoneda;
  adodsMasterTipoCambio.Value:= 1;
  adodsMasterIdUsuario.Value:= _dmConection.IdUsuario;
  adodsMasterFecha.Value:= Date;
  TfrmOrdenesEntradas(gGridEditForm).SetFoco;
end;

procedure TdmOrdenesEntradas.adodsMasterTipoCambioChange(Sender: TField);
begin
  inherited;
  // Cunado se modifica el tipo de cambio se actualizan todos los importes de los items
  adodsItems.DisableControls;
  try
    adodsItems.First;
    while not adodsItems.Eof do
    begin
      adodsItems.Edit;
      CalcularItemsImportes;
      adodsItems.Post;
      adodsItems.Next
    end;
  finally
    adodsItems.EnableControls;
  end;
end;

procedure TdmOrdenesEntradas.CalcularItemsImportes;
begin
  adodsItemsImporte.Value := adodsItemsCosto.Value * adodsItemsCantidad.Value;
  adodsItemsImporteMonedaLocal.Value := adodsItemsImporte.Value*adodsMasterTipoCambio.Value;
  adodsItemsImporteTotal.Value := adodsItemsImporteMonedaLocal.Value + adodsItemsImpuestoArancelario.Value + adodsItemsGastos.Value;
  if adodsItemsCantidad.Value <> 0 then
    adodsItemsCostoAproximado.Value := adodsItemsImporteTotal.Value / adodsItemsCantidad.Value;
end;

constructor TdmOrdenesEntradas.CreateWTipo(AOwner: TComponent; Tipo: TPTipo);
begin
  FTipo := Tipo;
  inherited Create(AOwner);
end;

procedure TdmOrdenesEntradas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  MostrarImporte:= (Tipo = TOrdenEntrada);
  MostrarCantidad:= (Tipo = TOrdenEntrada);
  //Coloca el filtrado
  SQLSelect:= 'select IdOrdenEntrada, IdDocumentoEntrada, IdAlmacen, IdOrdenEstatus, IdPersona, IdMoneda, IdUsuario, Fecha, TipoCambio, SubTotal, IVA, Total, Observaciones from OrdenesEntradas';
  if (Tipo = tEntradaMercacia) then
    SQLWhere:= Format('WHERE IdOrdenEntradaTipo =1 and IdOrdenEstatus = %d', [Ord(eGenerada)])   //oct 24/16 mostrar solo compras
  else
    SQLWhere:= 'WHERE IdOrdenEntradaTipo =1'; //era '' Oct 24/16 para que sólo muestre Compras
  SQLOrderBy:= 'Order by Fecha DESC';
  if adodsItems.CommandText <> EmptyStr then adodsItems.Open;
  gGridEditForm:= TfrmOrdenesEntradas.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmOrdenesEntradas(gGridEditForm).MostrarImporte:= MostrarImporte;
  TfrmOrdenesEntradas(gGridEditForm).actTipoCambio:= actGetTipoCambio;
  TfrmOrdenesEntradas(gGridEditForm).actCrearOrden:= actCrearOrden;
  TfrmOrdenesEntradas(gGridEditForm).actRecibir := actRecibirMercancia;
  TfrmOrdenesEntradas(gGridEditForm).actAplicar := actAplicarEntrada;
  TfrmOrdenesEntradas(gGridEditForm).actAcomodar := actAcomodarGenerico; //ABAN Oct 12/16
  TfrmOrdenesEntradas(gGridEditForm).actImprimir := ActImpresion;  //Oct 21/16
  TfrmOrdenesEntradas(gGridEditForm).actAcomodarInd:=ActAcomodoIndividual; //Nov 7/16

  gFormDetail1:= TfrmOrdenesEntradasItems.Create(Self);
  gFormDetail1.DataSet:= adodsItems;
  TfrmOrdenesEntradasItems(gFormDetail1).MostrarCantidad := MostrarCantidad;
  TfrmOrdenesEntradasItems(gFormDetail1).MostrarImporte := MostrarImporte;
  TfrmOrdenesEntradasItems(gFormDetail1).actSeleccionarProducto := actSeleccionaProducto;
  TfrmOrdenesEntradasItems(gFormDetail1).actModificarArancel := actModificarArancel;
  TfrmOrdenesEntradasItems(gFormDetail1).actModificarGastos := actModificarGastos;
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
  Bloquear:= (adodsMasterIdOrdenEstatus.Value = Ord(eAplicada));
end;

function TdmOrdenesEntradas.GetIdProducto(IdPersona: Integer; Clave: String;
  var Costo, Precio, CantidadSolicitada: Double): Integer;
begin
  adoqGetIdProducto.Close;
  try
    adoqGetIdProducto.Parameters.ParamByName('IdPersona').Value:= IdPersona;
    adoqGetIdProducto.Parameters.ParamByName('Clave').Value:= Clave;
    adoqGetIdProducto.Open;
    if not adoqGetIdProducto.IsEmpty then
    begin
      CantidadSolicitada:= adoqGetIdProductoPendiente.Value;
      Costo:= adoqGetIdProductoCosto.AsFloat;
      Precio:= adoqGetIdProductoPrecio.Value;
      Result := adoqGetIdProductoIdProducto.Value;
    end
    else
    begin
      CantidadSolicitada:= 0;
      Costo:= 0;
      Precio:= 0;
      Result:= 0;
    end;
  finally
    adoqGetIdProducto.Close;
  end;
end;

procedure TdmOrdenesEntradas.Imprimir(IdDocumentoEntrada: Integer);
begin   //Oct 20/16 del codigo de Jesus
  adoqryDocumento.Close;
  adoqryDocumentoDetalles.Close;        //Tenia idDocumentoEntrada oct 20/16
  adoqryDocumento.Parameters.ParamByName('IdOrdenEntrada').Value:= IdDocumentoEntrada;
  try
    adoqryDocumento.Open;
    adoqryDocumentoDetalles.Open;
//    MostrarImportes(Tipo <> tRequisicion);
    ppRptDocumento.Print;
  finally
    adoqryDocumento.Close;
    adoqryDocumentoDetalles.Close;
  end;
end;

procedure TdmOrdenesEntradas.SetBloquear(const Value: Boolean);
begin
  FBloquear := Value;
  TfrmOrdenesEntradas(gGridEditForm).pnlEncabezado.Enabled:= not Value;
  gFormDetail1.ReadOnlyGrid:= Value;
  TfrmOrdenesEntradas(gGridEditForm).pnlPie.Enabled:= not Value;
  actModificarArancel.Enabled := not Value;
  actModificarGastos.Enabled := not Value;
end;

procedure TdmOrdenesEntradas.SetMostrarImporte(const Value: Boolean);
begin
  FMostrarImporte := Value;
  actModificarArancel.Visible := Value;
  actModificarGastos.Visible := Value;
end;

procedure TdmOrdenesEntradas.SetTipo(const Value: TPTipo);
begin
  FTipo := Value;
end;

function TdmOrdenesEntradas.VerificaProdEnAduana(
  IdOrdenEntrada: Integer): Boolean;
begin
  ADODtStVerificaAduana.Close;
  ADODtStVerificaAduana.Parameters.ParamByName('IdEspacioAd').Value:= dmconfiguracion.IDEspacioAduana;
  ADODtStVerificaAduana.Parameters.ParamByName('IdOrdenEntrada').Value:=adodsMasterIdOrdenEntrada.value;
  ADODtStVerificaAduana.open;
  result:=ADODtStVerificaAduana.recordcount>0;
end;

procedure TdmOrdenesEntradas.SetMostrarCantidad(const Value: Boolean);
begin
  FMostrarCantidad := Value;
end;

end.
