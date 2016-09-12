unit AjustesEntradaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Forms,winapi.windows, Dialogs;

type
  TPEstatus = (eNone, eGenerada, eRecoleccion, eRevision, eAutorizacion, eEmpaque, eEnvio, eRecibida, eCancelada, eAplicada);
  TdmAjustesEntradas = class(T_dmStandar)
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
    adodsMasterIdOrdenEntradaTipo: TIntegerField;
    dsmaster: TDataSource;
    ADODtStAjusteEntradaItems: TADODataSet;
    ADODtStAjusteEntradaItemsIdOrdenEntradaItem: TAutoIncField;
    ADODtStAjusteEntradaItemsIdOrdenEntrada: TIntegerField;
    ADODtStAjusteEntradaItemsIdDocumentoEntradaDetalle: TIntegerField;
    ADODtStAjusteEntradaItemsIdProducto: TIntegerField;
    ADODtStAjusteEntradaItemsClaveProducto: TStringField;
    ADODtStAjusteEntradaItemsCantidadSolicitada: TFloatField;
    ADODtStAjusteEntradaItemsCosto: TFMTBCDField;
    ADODtStAjusteEntradaItemsImporte: TFMTBCDField;
    ADODtStAjusteEntradaItemsImporteMonedaLocal: TFMTBCDField;
    ADODtStAjusteEntradaItemsImpuestoArancelario: TFMTBCDField;
    ADODtStAjusteEntradaItemsGastos: TFMTBCDField;
    ADODtStAjusteEntradaItemsImporteTotal: TFMTBCDField;
    ADODtStAjusteEntradaItemsCostoAproximado: TFMTBCDField;
    ADODtStAjusteEntradaItemsPrecioVenta: TFMTBCDField;
    ADODtStAjusteEntradaItemsIdCFDIConceptoDev: TLargeintField;
    adodsEstatus: TADODataSet;
    adodsAlmacenes: TADODataSet;
    adodsProductos: TADODataSet;
    ADODtStProductosXEspacio: TADODataSet;
    ADODtStProductosXEspacioIdProductoXEspacio: TAutoIncField;
    ADODtStProductosXEspacioIdEspacio: TIntegerField;
    ADODtStProductosXEspacioIdProductoKardexE: TIntegerField;
    ADODtStProductosXEspacioIdProducto: TIntegerField;
    ADODtStProductosXEspacioIdCategoria: TIntegerField;
    ADODtStProductosXEspacioIdAlmacen: TIntegerField;
    ADODtStProductosXEspacioEspacio: TStringField;
    ADODtStProductosXEspacioCantidad: TFloatField;
    ADOQryInsertaProductoKardexE: TADOQuery;
    DSInsertaKardex: TDataSource;
    ADODtStProductosKardex: TADODataSet;
    ADODtStProductosKardexIdProducto: TIntegerField;
    ADODtStProductosKardexIdOrdenEntradaItem: TIntegerField;
    ADODtStProductosKardexIdOrdenSalidaItem: TIntegerField;
    ADODtStProductosKardexIdMoneda: TIntegerField;
    ADODtStProductosKardexMovimiento: TStringField;
    ADODtStProductosKardexCantidad: TFloatField;
    ADODtStProductosKardexImporte: TFMTBCDField;
    ADODtStProductosKardexIdProductoKardex: TAutoIncField;
    ADODtStProductosKardexIdAlmacen: TIntegerField;
    ADODtStProductosKardexIdProductoKardexEstatus: TIntegerField;
    ADODtStProductosKardexFecha: TDateTimeField;
    ADODtStProductosKardexPrecioUnitario: TFMTBCDField;
    ADODtStProductosKardexCostoUnitario: TFMTBCDField;
    ADODSAuxiliar: TADODataSet;
    ADODtStOrdenEntradaTipo: TADODataSet;
    ADODtStListaProductos: TADODataSet;
    ADODtStItemsXDevolver: TADODataSet;
    ADODtStItemsXDevolverIdCFDIConcepto: TLargeintField;
    ADODtStItemsXDevolverIdProducto: TIntegerField;
    ADODtStItemsXDevolverIdUnidadMedida: TIntegerField;
    ADODtStItemsXDevolverCantidad: TFloatField;
    ADODtStItemsXDevolverUnidad: TStringField;
    ADODtStItemsXDevolverDescripcion: TStringField;
    ADODtStItemsXDevolverNoIdentifica: TStringField;
    ADODtStItemsXDevolverImporte: TFMTBCDField;
    ADODtStItemsXDevolverIdCfdi: TLargeintField;
    ADODtStItemsXDevolverFolio: TLargeintField;
    ADODtStItemsXDevolverserie: TStringField;
    ADODtStItemsXDevolverIdCFDIEstatus: TIntegerField;
    ADODtStItemsXDevolverIdClienteDomicilio: TIntegerField;
    ADODtStItemsXDevolverIdPersonaReceptor: TIntegerField;
    ADODtStItemsXDevolverCliente: TStringField;
    ADODtStItemsXDevolverValorUnitario: TFMTBCDField;
    adodsMasteralmacen: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterTipoOrden: TStringField;
    ADODtStMonedas: TADODataSet;
    ADODtStMonedasIdMoneda: TAutoIncField;
    ADODtStMonedasIdPais: TIntegerField;
    ADODtStMonedasIdentificador: TStringField;
    ADODtStMonedasDescripcion: TStringField;
    adodsMasterMoneda: TStringField;
    adopAplicaEntradaXDev: TADOStoredProc;
    ADODtStAjusteEntradaItemsProducto: TStringField;
    ActAplicaEntradaXA: TAction;
    ActSeleccionaProducto: TAction;
    ADODtStAjusteEntradaItemsCantidad: TFloatField;
    ADOQryAuxiliar: TADOQuery;
    procedure ActAplicaEntradaXAExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure ActSeleccionaProductoExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure dsmasterDataChange(Sender: TObject; Field: TField);
    procedure ADODtStAjusteEntradaItemsClaveProductoChange(Sender: TField);
    procedure ADODtStAjusteEntradaItemsAfterPost(DataSet: TDataSet);
    procedure ADODtStAjusteEntradaItemsNewRecord(DataSet: TDataSet);
    procedure ADODtStAjusteEntradaItemsBeforeInsert(DataSet: TDataSet);
    procedure ADODtStAjusteEntradaItemsCantidadChange(Sender: TField);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
  private
    FBloquear: Boolean;
    function CostoEnInventario(idProd: Integer): Double;
    procedure SetBloquear(const Value: Boolean);
    function EncuentraProd(IdProd: String; var ValUni: Double;
      var ID: Integer): String;
    function CalcularTotales(IDDoc: Integer; Campoid, CampoSum, TablaO: String;
      PorIVA: Double; var AMontoIva, ASubtotal, ATotal: Double): Boolean;
    { Private declarations }
  public
    { Public declarations }
    property Bloquear: Boolean read FBloquear write SetBloquear;
  end;

var
  dmAjustesEntradas: TdmAjustesEntradas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses _ConectionDmod, _Utils, AjustesEntradaEdit, AjustesEntradasItemsEdit,
  ListaProductosForm, ConfiguracionDM;

{$R *.dfm}

procedure TdmAjustesEntradas.ActAplicaEntradaXAExecute(Sender: TObject);
begin
  inherited; //Jul 18/16
  if application.messagebox('¿Está seguro de registrar el ajuste de entrada?','Confirmación',MB_YESNO)=IDYES then
  begin
    //Aplica con 1
    adopAplicaEntradaXDev.Parameters.ParamByName('@IdOrdenEntrada').value:= adodsMasterIdOrdenEntrada.AsInteger;
    adopAplicaEntradaXDev.Parameters.ParamByName('@IdUsuario').value:=_dmConection.IdUsuario;
    adopAplicaEntradaXDev.ExecProc;
    RefreshADODS(adodsMaster, adodsMasterIdOrdenEntrada);
    //Aplica con 7   //Sep 8/16   //Verificar procedimiento para mejorar ya que se crea el producto por espacioAduana
    adopAplicaEntradaXDev.Parameters.ParamByName('@IdOrdenEntrada').value:= adodsMasterIdOrdenEntrada.AsInteger;
    adopAplicaEntradaXDev.Parameters.ParamByName('@IdUsuario').value:=_dmConection.IdUsuario;
    adopAplicaEntradaXDev.ExecProc;
    RefreshADODS(adodsMaster, adodsMasterIdOrdenEntrada);
    application.messagebox('      Entrada por Ajuste Aplicada. Items ubicados en Aduana.'+#13
                          +'Asegúrese de acomodar en ubicacioón real, para que estén disponibles ','Información',MB_ok); //Sep 9/16
  end;
end;

procedure TdmAjustesEntradas.ActSeleccionaProductoExecute(Sender: TObject);
var
  frmListaProductos:TfrmListaProductos;
begin
  inherited; //Ver si crear en este punto o antes
  frmListaProductos:=TfrmListaProductos.create(self); //Jun 21/16 agregado
  FrmListaProductos.DataSet:=AdoDtStListaProductos;
  FrmListaProductos.DataSet.Close;
  frmListaProductos.Clave:= adodtstAjusteEntradaItemsClaveProducto.AsString;
  frmListaProductos.ShowModal;
  if frmListaProductos.Acepto then  //Jun 27/16
  begin
    if adodtstAjusteEntradaItems.State in [dsEdit,dsInsert] then
    begin
      adodtstAjusteEntradaItemsIdProducto.Value := frmListaProductos.IdProducto;
      adodtstAjusteEntradaItemsClaveProducto.AsString:= frmListaProductos.Identificador;
      //DEberian salir de La nota de Crédito o de la Factura Jun 24/16
      adodtstAjusteEntradaItemsprecioventa.AsFloat:= frmListaProductos.Precio; //Ver si se deja Jun 23/16
                                    //Ojo esto  deberian salir de Items de la Nota de Crédito o Factura
      adodtstAjusteEntradaItemscosto.AsFloat:=CostoEnInventario(frmListaProductos.IdProducto); //Deberia ser el de la venta.
    end;
  end
  else
    if adodtstAjusteEntradaItems.State in [dsEdit, dsInsert] then
      adodtstAjusteEntradaItems.Cancel;
  frmListaProductos.Free;
end;

procedure TdmAjustesEntradas.adodsMasterAfterPost(DataSet: TDataSet);
begin
  inherited;  //Sep 8/16
 TfrmAjustesEntradas(gGridEditForm).btnAplicarEntrada.Enabled:= (AdoDSMaster.fieldbyname('IdOrdenEstatus').asinteger=1)
                                                     and (ADODtStAjusteEntradaItems.RecordCount >0);

end;

procedure TdmAjustesEntradas.adodsMasterNewRecord(DataSet: TDataSet);
begin                 //Jul 18/16
  inherited;
  adodsMasterIdOrdenEstatus.Value:= 1;  //Va a cambiar luego por 7
  adodsMasterIdMoneda.Value:= dmConfiguracion.IdMoneda;
  adodsMasterTipoCambio.Value:= 1;
  adodsMasterIdUsuario.Value:= _dmConection.IdUsuario;
  adodsMasterFecha.Value:= Date;
  adodsMasterIdOrdenEntradaTipo.Value:= 4; //Ajuste

  adodsMasterIdPersona.asInteger:= 1;//Sin identificar ...
end;

procedure TdmAjustesEntradas.ADODtStAjusteEntradaItemsAfterPost(
  DataSet: TDataSet);
const PIVA=0;//Jun 29 /16 por se devolucion?  0.16;    //Jun 24/16
var Total,MontoIVA,SubTotal:Double;
    IdAct:Integer;
begin
  inherited;
  IdAct:= DataSet.fieldbyname('IdOrdenEntrada').asInteger;
  if CalcularTotales(IdAct,'IdOrdenEntrada','Costo * Cantidad', //Para sacar el calculo //Se cambio x costos Jun 29/16
                      'OrdenesEntradasItems',PIVA,MontoIVA,SubTotal,Total) then
  begin
    adoQryauxiliar.Close;
    TAdoquery(AdoQryAuxiliar).SQL.Clear;
    TAdoquery(AdoQryAuxiliar).SQL.Add('UPDATE OrdenesEntradas SET SUBTOTAL='+FloatTostr(SubTotal)+', IVA='+FloatToStr(MontoIVA)+', Total='+FloatTostr(Total)
                                    +' WHERE IdOrdenEntrada= '+intToStr(IdAct));
    if TAdoquery(AdoQryAuxiliar).ExecSQL =1 then
       ADodsMaster.Refresh;
    //Sep 8/16
    TfrmAjustesEntradas(gGridEditForm).btnAplicarEntrada.Enabled:= (AdoDSMaster.fieldbyname('IdOrdenEstatus').asinteger=1)
                                                     and (ADODtStAjusteEntradaItems.RecordCount >0);

  end;
end;

procedure TdmAjustesEntradas.ADODtStAjusteEntradaItemsBeforeInsert(
  DataSet: TDataSet);
begin

  if AdodsMaster.State=dsInsert then
     AdodsMaster.post;
  inherited;
end;

function TdmAjustesEntradas.CalcularTotales(IDDoc:Integer;Campoid,CampoSum,TablaO:String;PorIVA: Double; var AMontoIva,
  ASubtotal, ATotal: Double): Boolean;       //Jul 18/16
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

procedure TdmAjustesEntradas.ADODtStAjusteEntradaItemsCantidadChange(
  Sender: TField);
begin
  inherited;
  if ADODtStAjusteEntradaItems.State in [dsEdit,dsInsert] then
  begin
    ADODtStAjusteEntradaItems.FieldByName('cantidadSolicitada').AsFloat:=ADODtStAjusteEntradaItems.FieldByName('cantidad').AsFloat;
    ADODtStAjusteEntradaItems.FieldByName('Importe').AsFloat:=ADODtStAjusteEntradaItems.FieldByName('Costo').AsFloat* ADODtStAjusteEntradaItems.FieldByName('CAntidad').AsFloat;
    ADODtStAjusteEntradaItems.FieldByName('ImporteTotal').AsFloat:=ADODtStAjusteEntradaItems.FieldByName('Importe').AsFloat;

    ADODtStAjusteEntradaItems.FieldByName('ImporteMonedaLocal').AsFloat:=ADODtStAjusteEntradaItems.FieldByName('Importe').AsFloat;//Jun 29/16
  //?????
  end;
end;

procedure TdmAjustesEntradas.ADODtStAjusteEntradaItemsClaveProductoChange(
  Sender: TField);
var valuni:Double;
  idproducto:integer;
begin
  inherited;
 //Se deja mientras Jun28/16  //Deshabilitar si se  sacar de las Notas de crédito del cliente
  if ADODtStAjusteEntradaItems.State in [dsEdit,dsInsert] then
  begin
    ADODtStAjusteEntradaItems.FieldByName('Producto').AsString:= EncuentraProd(ADODtStAjusteEntradaItems.FieldByName('claveProducto').ASString,ValUni,idproducto);
    if ADODtStAjusteEntradaItems.FieldByName('Producto').AsString<>'' then
    begin                     //Mod. Jun 27/16
      ADODtStAjusteEntradaItems.FieldByName('PrecioVenta').AsFloat:=ValUni;
      ADODtStAjusteEntradaItems.FieldByName('IdProducto').asInteger:=idproducto;
      ADODtStAjusteEntradaItems.FieldByName('Importe').AsFloat:=ValUni* ADODtStAjusteEntradaItems.FieldByName('CAntidad').AsFloat;
      ADODtStAjusteEntradaItems.FieldByName('CostoAproximado').AsFloat:=CostoEnInventario(idproducto)* ADODtStAjusteEntradaItems.FieldByName('CAntidad').AsFloat;
    end;
  end;

end;

procedure TdmAjustesEntradas.ADODtStAjusteEntradaItemsNewRecord(
  DataSet: TDataSet);          //Sep8/16
begin
  inherited;
  DataSet.fieldbyname('Cantidad').ASFloat:=1;
  DataSet.fieldbyname('CantidadSolicitada').ASFloat:=1;

end;

function TdmAjustesEntradas.CostoEnInventario(idProd:Integer):Double; //Jul 18/16
begin
  Result:=-1;
  ADODSAuxiliar.Close;
  ADODSAuxiliar.CommandText:='Select P.*, I.CostoPromedio from Productos P inner join Inventario I on I.IDProducto= P.IDProducto'+
                             ' where P.IdProducto='+intToStr(IDProd);
  ADODSAuxiliar.open;
  if not ADODSAuxiliar.eof then
  begin
    Result:=ADODSAuxiliar.FieldByName('CostoPromedio').asFloat;
  end
  else
    ShowMessage('No existe el producto en inventario... NDS');
  ADODSAuxiliar.Close;
end;

procedure TdmAjustesEntradas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmAjustesEntradas.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  if ADODtStAjusteEntradaItems.CommandText <> EmptyStr then
     ADODtStAjusteEntradaItems.Open;

  TfrmAjustesEntradas(gGridEditForm).actAplicaEntrada:= ActAplicaEntradaXA; //Jul 18/16

  gFormDetail1:= TfrmAjustesEntradasItems.Create(Self);  //Ok
  gFormDetail1.DataSet:= ADODtStAjusteEntradaItems;    //Ok
  TfrmAjustesEntradasItems(gFormDetail1).actSeleccionarProducto :=actSeleccionaProducto;

end;

procedure TdmAjustesEntradas.dsmasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  Bloquear:= adodsMasterIdOrdenEstatus.Value = Ord(eAplicada);
   //Sep 8/16
  TfrmAjustesEntradas(gGridEditForm).btnAplicarEntrada.Enabled:= (AdoDSMaster.fieldbyname('IdOrdenEstatus').asinteger=1)
                                                     and (ADODtStAjusteEntradaItems.RecordCount >0);

end;

procedure TdmAjustesEntradas.SetBloquear(const Value: Boolean);
begin
  FBloquear := Value;
  TfrmAjustesEntradas(gGridEditForm).pnlEncabezado.Enabled:= not Value;
  gFormDetail1.ReadOnlyGrid:= Value;
  TfrmAjustesEntradas(gGridEditForm).pnlPie.Enabled:= not Value;

end;

function TdmAjustesEntradas.EncuentraProd(IdProd: String;Var ValUni:Double;var ID:Integer):String; //Jul 18/16
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

end.


