unit AjustesSalidasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, Dialogs;
const
  IdalmacenPrincipal=1;  //Jul 15/16
type

  TPEstatus = (eNone, eGenerada, eRecoleccion, eRevision, eAutorizacion, eEmpaque, eEnvio, eRecibida, eCancelada, eAplicada);

  TDMAjustesSalida = class(T_dmStandar)
    ADODtStAjusteSalidaItems: TADODataSet;
    ADODtStAjusteSalidaItemsIdOrdenSalidaItem: TAutoIncField;
    ADODtStAjusteSalidaItemsIdOrdenSalida: TIntegerField;
    ADODtStAjusteSalidaItemsIdProducto: TIntegerField;
    ADODtStAjusteSalidaItemsIdUnidadMedida: TIntegerField;
    ADODtStAjusteSalidaItemsClaveProducto: TStringField;
    ADODtStAjusteSalidaItemsCantidadDespachada: TFloatField;
    ADODtStAjusteSalidaItemsCantidadSolicitada: TFloatField;
    ADODtStAjusteSalidaItemsPrecio: TFMTBCDField;
    ADODtStAjusteSalidaItemsImporte: TFMTBCDField;
    ADODtStAjusteSalidaItemsObservaciones: TStringField;
    ADODtStAjusteSalidaItemsCostoUnitario: TFMTBCDField;
    ADODtStProductosKardex: TADODataSet;
    ADODtStInventario: TADODataSet;
    ADODtStProductosXEspacio: TADODataSet;
    adodsMasteridOrdenSalida: TAutoIncField;
    adodsMasterIdOrdenEstatus: TIntegerField;
    adodsMasterIdPersonaRecolecta: TIntegerField;
    adodsMasterFechaRegistro: TDateTimeField;
    adodsMasterSubtotal: TFMTBCDField;
    adodsMasterIVA: TFMTBCDField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterIdGeneraCFDITipoDoc: TIntegerField;
    adodsMasterAcumula: TBooleanField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIDOrdenSalidaTipo: TIntegerField;
    adodsMasterObservaciones: TStringField;
    adodsMasterIdAlmacen: TIntegerField;
    ADODtStOrdenSalidasTipos: TADODataSet;
    ADODtStProductos: TADODataSet;
    ADODtStProductosIdProducto: TAutoIncField;
    ADODtStProductosIdProductoTipo: TIntegerField;
    ADODtStProductosIdUnidadMedida: TIntegerField;
    ADODtStProductosIdProductoEstatus: TIntegerField;
    ADODtStProductosIdentificador1: TStringField;
    ADODtStProductosIdentificador2: TStringField;
    ADODtStProductosIdentificador3: TStringField;
    ADODtStProductosDescripcion: TStringField;
    ADODtStProductosPrecioUnitario: TFloatField;
    ADODtStAjusteSalidaItemsProducto: TStringField;
    ActSeleccionaProducto: TAction;
    ActAplicaSalida: TAction;
    ADODtStListaProductos: TADODataSet;
    ADODSAuxiliar: TADODataSet;
    ADOQryAuxiliar: TADOQuery;
    ADODtStOrdenSalidasTiposIdOrdenSalidaTipo: TIntegerField;
    ADODtStOrdenSalidasTiposIdentificador: TStringField;
    ADODtStOrdenSalidasTiposDescripcion: TStringField;
    dsmaster: TDataSource;
    adodsMasterOrdenSalidaTipo: TStringField;
    ADODtStOrdenEstatus: TADODataSet;
    ADODtStOrdenEstatusIdOrdenEstatus: TIntegerField;
    ADODtStOrdenEstatusIdentificador: TStringField;
    ADODtStOrdenEstatusDescripcion: TStringField;
    adodsMasterOrdenEstatus: TStringField;
    ADODtStSalidasUbicaciones: TADODataSet;
    ADODtStSalidasUbicacionesIdSalidaUbicacion: TAutoIncField;
    ADODtStSalidasUbicacionesIdProductoKardexS: TIntegerField;
    ADODtStSalidasUbicacionesIdProductoXEspacio: TIntegerField;
    ADODtStSalidasUbicacionesCantidad: TFloatField;
    ADODtStSalidasUbicacionesIdSalidaUbicacionEstatus: TIntegerField;
    ADODtStSalidasUbicacionesIdOrdenSalidaItem: TIntegerField;
    ADODtStSalidasUbicacionesIdOrdenSalida: TIntegerField;
    ADODtStSalidasUbicacionesIdProducto: TIntegerField;
    ADODtStSalidasUbicacionesDisponible: TFloatField;
    ADODtStSalidasUbicacionesEspacioA: TStringField;
    ADODtStSalidasUbicacionesProducto: TStringField;
    ADODtStProductosXEspacioIdProductoXEspacio: TAutoIncField;
    ADODtStProductosXEspacioIdAlmacen: TIntegerField;
    ADODtStProductosXEspacioIdProducto: TIntegerField;
    ADODtStProductosXEspacioIdEspacio: TIntegerField;
    ADODtStProductosXEspacioIdCategoria: TIntegerField;
    ADODtStProductosXEspacioIdProductoKardexE: TIntegerField;
    ADODtStProductosXEspacioIdOrdenEntradaItem: TIntegerField;
    ADODtStProductosXEspacioCantidad: TFloatField;
    ADODtStProductosXEspacioEspacio: TStringField;
    ADODtStSalidasUbicacionesElEspacio: TStringField;
    ActAceptaUbicacion: TAction;
    ADOQryInsertaProductoKardex: TADOQuery;
    ADODtStDatosInventarioDir: TADODataSet;
    ADOQryActualizaInventario: TADOQuery;
    ADODtStDatosInventarioDirIdOrdenSalidaItem: TAutoIncField;
    ADODtStDatosInventarioDirIdOrdenSalida: TIntegerField;
    ADODtStDatosInventarioDirIdDocumentoSalidaDetalle: TIntegerField;
    ADODtStDatosInventarioDirIdProducto: TIntegerField;
    ADODtStDatosInventarioDirIdUnidadMedida: TIntegerField;
    ADODtStDatosInventarioDirClaveProducto: TStringField;
    ADODtStDatosInventarioDirCantidadDespachada: TFloatField;
    ADODtStDatosInventarioDirCantidadSolicitada: TFloatField;
    ADODtStDatosInventarioDirPrecio: TFMTBCDField;
    ADODtStDatosInventarioDirImporte: TFMTBCDField;
    ADODtStDatosInventarioDirObservaciones: TStringField;
    ADODtStDatosInventarioDirCostoUnitario: TFMTBCDField;
    ADODtStDatosInventarioDirIdAlmacen: TIntegerField;
    ADODtStDatosInventarioDirIdProductoKardex: TAutoIncField;
    ADODtStProductosExistencia: TFloatField;
    ADODtStAjusteSalidaItemsdisponible: TFloatField;
    adodsMasterIdUsuario: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ActSeleccionaProductoExecute(Sender: TObject);
    procedure adodsMasterBeforeOpen(DataSet: TDataSet);
    procedure dsmasterDataChange(Sender: TObject; Field: TField);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure ADODtStAjusteSalidaItemsBeforeInsert(DataSet: TDataSet);
    procedure ADODtStAjusteSalidaItemsCantidadSolicitadaChange(Sender: TField);
    procedure ActAplicaSalidaExecute(Sender: TObject);
    procedure ADODtStAjusteSalidaItemsClaveProductoChange(Sender: TField);
    procedure ADODtStAjusteSalidaItemsNewRecord(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesBeforeOpen(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesBeforePost(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesCantidadSetText(Sender: TField;
      const Text: string);
    procedure ADODtStAjusteSalidaItemsAfterPost(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesAfterPost(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesAfterDelete(DataSet: TDataSet);
    procedure ActAceptaUbicacionExecute(Sender: TObject);
  private
    CantAGuardar:Double; //Jul 14/16
    FBloquear: Boolean;
    function CostoEnInventario(idProd: Integer): Double;
    procedure SetBloquear(const Value: Boolean);
    function EncuentraProd(IdProd: String; var ValUni: Double;
      var ID: Integer): String;
    function BuscaSalidaUbicacionXAplicar(IDProductoEspacio,
      IDSalidaUbicaAct: Integer): Double;
    function ValorMaximoPosible(valorAct: Double; idOrdenItem,
      idSalidaUbicacion: integer): Double;
    function CalcularTotales(IDDoc: Integer; Campoid, CampoSum, TablaO: String;
      PorIVA: Double; var AMontoIva, ASubtotal, ATotal: Double): Boolean;
    function VerificaYCreaResto(IdOrdenSalItem: Integer; CantActual: Double;
      idSalidaUbicacion: Integer;muestraMsg:boolean): Boolean;
    function VerificaUbicacionProductos(idordenSalida: Integer;MostrarMsg:Boolean): Boolean;
    procedure ActualizaKardex(IdOrdenSalida: integer);
    procedure ActualizaInventarioDir(IDOrdenSalida: Integer);   //Jul 15/16
    { Private declarations }
  public
    CambioCantidad:Boolean; //Jul 14/16
    { Public declarations }
     property Bloquear: Boolean read FBloquear write SetBloquear;
  end;

var
  DMAjustesSalida: TDMAjustesSalida;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AjustesSalidasEdit, ListaProductosForm, AjustesSalidasItemsEdit,
  _ConectionDmod, SalidasUbicacionesEdit, ConfiguracionDM;

{$R *.dfm}

procedure TDMAjustesSalida.ActAceptaUbicacionExecute(Sender: TObject);
var IdOrdenSalItem, IdSalidaUbicacion:integer;           //Jul 15/16
    cantidad:Double;
    res:Boolean;
begin
  inherited;
 // verificar y cambiar estatus de salidas ubicacion y luego habilitar  boton de acepta ubicacion

  if ADODtStSalidasUbicaciones.State=dsEdit then
     ADODtStSalidasUbicaciones.Post;
 //Verificar que exista??
  //Tendria que se r para todos   Jul 20/16
  IdOrdenSalItem:= ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').AsInteger;
  Cantidad:= ADODtStSalidasUbicaciones.FieldByName('Cantidad').Asfloat;
  IdSalidaUbicacion:= ADODtStSalidasUbicaciones.FieldByName('IDSalidaUbicacion').Asinteger;

  res:=VerificaYCreaResto(IdOrdenSalItem,Cantidad, IdSalidaUbicacion,False);
  if res then
  begin
    ADODtStSalidasUbicaciones.Close;
    ADODtStSalidasUbicaciones.Open;
    showmessage('Creo registros, coloque ubicaciones');
  end;
  TfrmAjustesSalidasEdit(gGridEditForm).btnAplicarsalida.Enabled:= (AdoDSMaster.fieldbyname('IdOrdenEstatus').asinteger=1)
                                                     and VerificaUbicacionProductos(AdoDSMaster.fieldbyname('IdOrdenSalida').asinteger,True);



end;
                                                                             //Jul 15/16
function TDMAjustesSalida.VerificaUbicacionProductos(idordenSalida:Integer; mostrarMsg:Boolean):Boolean;
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;  //Asegurarse que si le cambia el valor de cantidad se complete el restante sin ubicar.
  ADOQryAuxiliar.SQL.ADD('Select Count(*) SinUbicacion from SalidasUbicaciones where IdOrdenSalida='+intToSTR(idordenSalida)+' and  idProductoXEspacio is NULL');
  ADOQryAuxiliar.open;
  Result:=  ADOQryAuxiliar.Fieldbyname('sinubicacion').AsInteger =0;
                       //Jul 15/16
  if (not result) and mostrarMsg then
    ShowMessage('Existen Productos sin Identificar Ubicación');
  ADOQryAuxiliar.Close;

end;


procedure TDMAjustesSalida.ActAplicaSalidaExecute(Sender: TObject);
begin
  inherited;
  //1. ubicaciones se habilita este boton si se colocaron ubicaciones??
  //Aplicar Kardex
  ActualizaKardex(adodsMaster.FieldByName('IdOrdenSalida').AsInteger);  //Actualiza tambien estatus de salidas ubicacion
  ActualizaInventariodir(adodsMaster.FieldByName('IdOrdenSalida').AsInteger);

  //Verificar
  adodsmaster.Edit;
  adodsMasterIdOrdenEstatus.Value:=9;//Aplicada
  adodsMaster.post;

  ShowMessage('Realizado'); //Verificar ??
  //verificar si se pone bitacora cuando se aplique
end;

procedure TDMAjustesSalida.ActSeleccionaProductoExecute(Sender: TObject);
var
  frmListaProductos:TfrmListaProductos;
begin
  inherited; //Ver si crear en este punto o antes
  frmListaProductos:=TfrmListaProductos.create(self); //Jun 21/16 agregado
  FrmListaProductos.DataSet:=AdoDtStListaProductos;
  FrmListaProductos.DataSet.Close;
  frmListaProductos.Clave:= ADODtStAjusteSalidaItemsClaveProducto.AsString;
  frmListaProductos.ShowModal;
  if frmListaProductos.Acepto then  //Jun 27/16
  begin
    if ADODtStAjusteSalidaItems.State in [dsEdit,dsInsert] then
    begin
      ADODtStAjusteSalidaItemsIdProducto.Value := frmListaProductos.IdProducto;
      ADODtStAjusteSalidaItemsClaveProducto.AsString:= frmListaProductos.Identificador;
      //DEberian salir de La nota de Crédito o de la Factura Jun 24/16
      ADODtStAjusteSalidaItemsprecio.AsFloat:= frmListaProductos.Precio; //Ver si se deja Jun 23/16
                                    //Ojo esto  deberian salir de Items de la Nota de Crédito o Factura
      ADODtStAjusteSalidaItemsCostoUnitario.AsFloat:=CostoEnInventario(frmListaProductos.IdProducto); //Deberia ser el de la venta.
    end;
  end
  else
    if ADODtStAjusteSalidaItems.State in [dsEdit, dsInsert] then
      ADODtStAjusteSalidaItems.Cancel;
  frmListaProductos.Free;
end;

procedure TDMAjustesSalida.adodsMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStOrdenSalidasTipos.Open;
end;

procedure TDMAjustesSalida.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsMasterIdOrdenEstatus.Value:= 1;       //Jul 13/16
  adodsMasterIdUsuario.Value:= _dmConection.IdUsuario; //mod. jul 17/16
  adodsMasterFecharegistro.Value:= now;
  adodsMasterIDOrdenSalidaTipo.Value:=4; //Ajuste, con posibilidad de cambio
  adodsMasteridalmacen.value:=IdAlmacenPrincipal; //Jul 15/16
//  TfrmAjustesSalidasEdit(gGridEditForm).SetFoco;
end;

procedure TDMAjustesSalida.ADODtStAjusteSalidaItemsAfterPost(DataSet: TDataSet);
const PIVA=0.16;  //Jul 14/16
var Total,MontoIVA,SubTotal:Double;
    IdAct:Integer;
begin
  inherited;
  IdAct:= DataSet.fieldbyname('IdOrdenSalida').asInteger;
  if CalcularTotales(IdAct,'IdOrdenSalida','Importe', //Para sacar el calculo //Se cambio x costos Jun 29/16
                      'OrdenesSalidasItems',PIVA,MontoIVA,SubTotal,Total) then
  begin
    adoQryauxiliar.Close;
    TAdoquery(AdoQryAuxiliar).SQL.Clear;
    TAdoquery(AdoQryAuxiliar).SQL.Add('UPDATE OrdenesSalidas SET SUBTOTAL='+FloatTostr(SubTotal)+', IVA='+FloatToStr(MontoIVA)+', Total='+FloatTostr(Total)
                                    +' WHERE IdOrdenSalida= '+intToStr(IdAct));
    if TAdoquery(AdoQryAuxiliar).ExecSQL =1 then
       ADodsMaster.Refresh;
  end;

end;

procedure TDMAjustesSalida.ADODtStAjusteSalidaItemsBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if adodsMaster.State = dsInsert  then
    adodsMaster.post;

end;


function TDMAjustesSalida.CalcularTotales(IDDoc:Integer;Campoid,CampoSum,TablaO:String;PorIVA: Double; var AMontoIva,
  ASubtotal, ATotal: Double): Boolean;   //jul 14/16
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

procedure TDMAjustesSalida.ADODtStAjusteSalidaItemsCantidadSolicitadaChange(
  Sender: TField);
begin
  inherited;
   if ADODtStAjusteSalidaItems.State in [dsEdit,dsInsert] then
  begin                                                //Deberia ser con el que se vendio
    //adodsItems.FieldByName('PrecioVenta').AsFloat:= ;//ObtenerPrecioMayoreo(adodsItemsIdProducto.AsInteger ,adodsItems.FieldByName('Precio').AsFloat, adodsItems.FieldByName('cantidad').AsFloat);
    if ADODtStAjusteSalidaItems.FieldByName('cantidadsolicitada').AsFloat> ADODtStAjusteSalidaItems.FieldByName('Disponible').AsFloat then //Jul 5/16
       beep;

    ADODtStAjusteSalidaItems.FieldByName('cantidadDespachada').AsFloat:=ADODtStAjusteSalidaItems.FieldByName('cantidadsolicitada').AsFloat;
    ADODtStAjusteSalidaItems.FieldByName('Importe').AsFloat:=ADODtStAjusteSalidaItems.FieldByName('Precio').AsFloat* ADODtStAjusteSalidaItems.FieldByName('cantidadsolicitada').AsFloat;

//    ADODtStAjusteSalidaItems.FieldByName('ImporteMonedaLocal').AsFloat:=ADODtStAjusteSalidaItems.FieldByName('Importe').AsFloat;//Jun 29/16


  end;
end;

procedure TDMAjustesSalida.ADODtStAjusteSalidaItemsClaveProductoChange(
  Sender: TField);
var valuni:Double;
  idproducto:integer;
begin
  inherited;

  if ADODtStAjusteSalidaItems.State in [dsEdit,dsInsert] then
  begin
    ADODtStAjusteSalidaItems.FieldByName('Producto').AsString:= EncuentraProd(ADODtStAjusteSalidaItems.FieldByName('claveProducto').ASString,ValUni,idproducto);
    if ADODtStAjusteSalidaItems.FieldByName('Producto').AsString<>'' then
    begin
      ADODtStAjusteSalidaItems.FieldByName('Precio').AsFloat:=ValUni;
      ADODtStAjusteSalidaItems.FieldByName('IdProducto').asInteger:=idproducto;
      ADODtStAjusteSalidaItems.FieldByName('Importe').AsFloat:=ValUni* ADODtStAjusteSalidaItems.FieldByName('CantidadSolicitada').AsFloat;
    end;
  end;

end;

procedure TDMAjustesSalida.ADODtStAjusteSalidaItemsNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('cantidadSolicitada').AsFloat:=1;
end;

procedure TDMAjustesSalida.ADODtStSalidasUbicacionesAfterDelete(         //Copiado... Jul 15/16
  DataSet: TDataSet);
var
  valornvo:Double;
begin
  inherited;

  Valornvo:=ValorMaximoPosible(-1,ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').AsInteger,ADODtStSalidasUbicaciones.FieldByName('idsalidaUbicacion').AsInteger);
  if ValorNvo>0 then
     Showmessage('Registro incompleto');

end;

function TDMAjustesSalida.VerificaYCreaResto(IdOrdenSalItem:Integer; CantActual:Double; idSalidaUbicacion:Integer;muestraMsg:boolean):Boolean;   //Copiado... Jul 15/16
var
  valornvo:Double;
begin
  REsult:=False;            //Para que sume todo y ve acuanto le queda
  Valornvo:=ValorMaximoPosible(-1,IdOrdenSalItem,idsalidaUbicacion);
  if ValorNvo>0 then
  begin
    AdoQryauxiliar.Close;
    AdoQryauxiliar.SQL.Clear;
    AdoQryauxiliar.SQL.Add('INSERT INTO SalidasUbicaciones (IdSalidaUbicacionEstatus,IdOrdenSalidaItem, IDOrdenSalida, Cantidad) ');
    AdoQryauxiliar.SQL.Add('SElect  IdSalidaUbicacionEstatus,IdOrdenSalidaItem, IDOrdenSalida, '+ floatToSTR(valorNvo)+' from  SalidasUbicaciones Where IdSalidaUbicacion='+intToStr(idsalidaubicacion));
    AdoQryauxiliar.ExecSQL;
    Result:=True;
  end
  else
    if MuestraMsg  then  //Jul 15/16
       ShowMessage('Completo. Asigne ubicaciones en caso que falten');

end;


procedure TDMAjustesSalida.ADODtStSalidasUbicacionesAfterPost(
  DataSet: TDataSet);                                          //Copiado... Jul 15/16
var IdOrdenSalItem, IdSalidaUbicacion:integer;
    cantidad:Double;
begin
  inherited;
  if CambioCantidad then
  begin
    IdOrdenSalItem:= ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').AsInteger;
    Cantidad:= ADODtStSalidasUbicaciones.FieldByName('Cantidad').Asfloat;
    IdSalidaUbicacion:= ADODtStSalidasUbicaciones.FieldByName('IDSalidaUbicacion').Asinteger; //Feb 3/16
    VerificaYCreaResto(IdOrdenSalItem,Cantidad, IdSalidaUbicacion, True);
                                     //Verificar que tenga el valor actual

    CambioCantidad:=False;
    CantAGuardar:=0; //ya no debe tener Jul 20/16
    ADODtStSalidasUbicaciones.Close;
    ADODtStSalidasUbicaciones.open;

  end;

end;

procedure TDMAjustesSalida.ADODtStSalidasUbicacionesBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  ADODtStProductosXEspacio.Open;
end;

procedure TDMAjustesSalida.ADODtStSalidasUbicacionesBeforePost(
  DataSet: TDataSet);
var valor,AGuardarAux:Double;
    TextoAux:String; //Jun 28/16
begin
  inherited;
  //Jun 28/16 Desde
  TextoAux:='';
  if ADODtStSalidasUbicaciones.State=dsEdit then   //Jul 20 /16 Para que sólo lo haga si ya tiene algo  /7Hay que ubicadlo
  begin
    AdoDtstProductosXEspacio.Close;  //Verificar si se elimina de aca
    AdoDtstProductosXEspacio.filter:= 'IDProducto='+ADODtStSalidasUbicaciones.fieldbyname('IDProducto').AsString;
    AdoDtstProductosXEspacio.filtered:=True;
    AdoDtstProductosXEspacio.Open;
    //Jul 20 /16 hasta aca
    valor := BuscaSalidaUbicacionXAplicar(AdoDtstProductosXEspacio.fieldbyname('IdProductoXEspacio').asinteger,ADODtStSalidasUbicaciones.FieldByName('IDSalidaUbicacion').ASinteger);
    AGuardarAux:= ADODtStSalidasUbicaciones.FieldByName('Cantidad').ASFloat;
    if CantAGuardar>0 then
       AGuardarAux:=cantAGuardar;
    if (AdoDtstProductosXEspacio.fieldbyname('Cantidad').ASFloat - valor ) <AGuardarAux then
    begin
      if valor >0 then
        TextoAux:='Existen Apartados pendientes de aplicar';
      ShowMessage('Advertencia!! Verifique Existencias en Ubicación.'+TextoAux);
      abort;
    end;
    //Hasta aca Jun 28/16     //Era pero estaba en ceros  CantAGuardar  si no se cambia Jun 28/16
    valor:=ValorMaximoPosible(AGuardarAux,DataSet.FieldByName('IdOrdenSalidaItem').ASInteger,DataSet.FieldByName('IdSalidaUbicacion').ASInteger); //Verificar que tenga valor....Feb 2/16
    if valor <CantAGuardar then
    begin
      Showmessage('La Cantidad sobre pasa la orden. Máximo valor a poner '+ floatToStr(Valor));  //Verificar
      abort;
    end;
  end;


end;

procedure TDMAjustesSalida.ADODtStSalidasUbicacionesCantidadSetText(  //Jul 14/16
  Sender: TField; const Text: string);
begin
  inherited;
  CantAGuardar:= StrTofloat(Text);

  CambioCantidad:= ADODtStSalidasUbicaciones.FieldByName('Cantidad').ASFloat<>CantAGuardar;
  sender.AsString:=Text;
end;

function TDMAjustesSalida.BuscaSalidaUbicacionXAplicar(IDProductoEspacio, IDSalidaUbicaAct:Integer):Double; //Copiado de OS. Jul 14/16
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  ADOQryAuxiliar.SQL.Add('Select Sum(Cantidad) as Total from SalidasUbicaciones where IdSalidaUbicacionEstatus<3 and idProductoXEspacio='+ intToStr(IDProductoEspacio)
                        +' and IDSalidaUbicacion<>'+intToStr(IDSalidaUbicaAct));
  ADOQryAuxiliar.Open;
  Result:=  ADOQryAuxiliar.FieldByName('Total').AsFloat;
end;

Function TDMAjustesSalida.ValorMaximoPosible(valorAct:Double; idOrdenItem:Integer; idSalidaUbicacion:integer):Double;  //Copiado de os Jul 14/16
var
  ValOrden, ValSalida:Double;
begin
  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  AdoQryAuxiliar.SQL.add('Select cantidadDespachada from OrdenesSalidasItems where idOrdenSalidaItem= '+ intToStr(idOrdenItem)) ;   //Mantiene el valor anterior
  AdoQryAuxiliar.open;
  ValOrden:=  AdoQryAuxiliar.Fieldbyname('cantidadDespachada').AsFloat;


  ADOQryAuxiliar.Close;
  ADOQryAuxiliar.SQL.Clear;
  AdoQryAuxiliar.SQL.add('Select Sum(Cantidad) as Total from SalidasUbicaciones where idOrdenSalidaItem= '+ intToStr(idOrdenItem));
  if valorAct<>-1 then  //Para buscar resto es -1  //Feb 3/16
    AdoQryAuxiliar.SQL.add(' and idSalidaUbicacion <> '+intToStr(idSalidaUbicacion)) ;   //Mantiene el valor anterior

  AdoQryAuxiliar.open;                        //Los registrados // Verificar si se usan los diferentes de id //Pendiente de terminar
  ValSalida:= AdoQryAuxiliar.Fieldbyname('Total').asFloat;

  if ValSalida+ValorAct>ValOrden then //No deberia pasarse
  begin
   // Showmessage('La Cantidad sobre pasa la orden. Máximo valor a poner '+ floatToStr(ValOrden-ValSalida));
    Result:=ValOrden-ValSalida;
  end
  else
    if valorAct<>-1 then  //Para buscar resto es -1  //Feb 3/16
       result:= valorAct
    else
      Result:= ValOrden-ValSalida; //Resto //Feb 3/16
end;



function TDMAjustesSalida.EncuentraProd(IdProd: String;Var ValUni:Double;var ID:Integer):String; //Jul 14/15
begin
  Result:='';
  if IDProd<>'' then
  begin
    ADODSAuxiliar.Close;
    ADODSAuxiliar.CommandText:='Select * from Productos P inner join Inventario I on P.IdProducto = I.IdProducto where (Identificador1='''+IDProd+
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

function TDMAjustesSalida.CostoEnInventario(idProd:Integer):Double; //Jul 12/16
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

procedure TDMAjustesSalida.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmAjustesSalidasEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  if ADODtStAjusteSalidaItems.CommandText <> EmptyStr then
     ADODtStAjusteSalidaItems.Open;
  gFormDetail1:= TfrmAjustesSalidaItems.Create(Self);  //Ok
  gFormDetail1.DataSet:= ADODtStAjusteSalidaItems;    //Ok
  TfrmAjustesSalidaItems(gFormDetail1).actSeleccionarProducto :=actSeleccionaProducto;
   if ADODtStSalidasUbicaciones.CommandText <> EmptyStr then
     ADODtStSalidasUbicaciones.Open;
  gFormDetail2:= TfrmSalidasUbicaciones.Create(Self);
  gFormDetail2.DataSet:= ADODtStSalidasUbicaciones;
  TfrmSalidasUbicaciones(gFormDetail2).DSProductosXEspacio.DataSet:=ADODtStProductosXEspacio; //Jul 14/16
  TfrmSalidasUbicaciones(gFormDetail2).AAceptaUbicaciones:=ActAceptaUbicacion; //Jul 15/16

  TfrmAjustesSalidasEdit(gGridEditForm).dsItemsSalida.DataSet:= ADODtStAjusteSalidaItems;   //jul 14/16
  TfrmAjustesSalidasEdit(gGridEditForm).DSSalidasUbicaciones.dataset:= ADODtStSalidasUbicaciones; //jul 14/16
  //Verificar si productos por espacio puede usar lo de aduana o no  -- and Pe.IdEspacio<>:IDAduana

  TfrmAjustesSalidasEdit(gGridEditForm).DSProductosXEspacio.DataSet:=ADODtStProductosXEspacio;//Jul 14/16
  TfrmAjustesSalidasEdit(gGridEditForm).actAplicaSalida:=ActAplicaSalida; //Jul 15/16
end;

procedure TDMAjustesSalida.dsmasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  Bloquear:= adodsMasterIdOrdenEstatus.Value = Ord(eAplicada);


  TfrmAjustesSalidasEdit(gGridEditForm).btnAplicarsalida.Enabled:= (not Bloquear) and
                                    (AdoDSMaster.fieldbyname('IdOrdenEstatus').asinteger=1) and
                                    VerificaUbicacionProductos(AdoDSMaster.fieldbyname('IdOrdenSalida').asinteger, False);
end;

procedure TDMAjustesSalida.SetBloquear(const Value: Boolean);
begin
  FBloquear := Value;
  TfrmAjustesSalidasEdit(gGridEditForm).pnlEncabezado.Enabled:= not Value;
  gFormDetail1.ReadOnlyGrid:= Value;
  TfrmAjustesSalidasEdit(gGridEditForm).pnlPie.Enabled:= not Value;
  gFormDetail2.ReadOnlyGrid:= Value;   //Para Habilitar edicion de SalidasUbicacion

end;



procedure TDMAjustesSalida.ActualizaKardex(IdOrdenSalida: integer);  //Kardex + Act Salidas_Ubicaciones
var                        //Jul 15/16
  idProdKdx:Integer;
begin
  ADODtStAjusteSalidaItems.First;
  while not ADODtStAjusteSalidaItems.eof do
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.add('Select * from   ProductosKardex where  IdOrdenSalidaItem =' +ADODtStAjusteSalidaItems.fieldbyname('idOrdenSalidaItem').AsString);
    ADOQryAuxiliar.Open;
    if not  ADOQryAuxiliar.eof then  //Existe  //por que es manual
    begin
      ADOQryAuxiliar.edit;
      ADOQryAuxiliar.fieldbyname('cantidad').AsFloat:= ADODtStAjusteSalidaItemsCantidadDespachada.asFloat;
      ADOQryAuxiliar.fieldbyname('importe').AsFloat:= ADODtStAjusteSalidaItemsImporte.AsFloat;
      ADOQryAuxiliar.post;
  //  Update ProductosKardex set(IdProducto,IdOrdenSalidaItem,IdMoneda,IdProductoKardexEstatus,Fecha,Movimiento,Cantidad,Importe,IdAlmacen, CostoUnitario,PrecioUnitario)

    end

    else
    begin

      ADOQryInsertaProductoKardex.Parameters.ParamByName('IdOrdenSalidaItem1').Value:=ADODtStAjusteSalidaItems.fieldbyname('idOrdenSalidaItem').AsInteger;

      ADOQryInsertaProductoKardex.Parameters.ParamByName('IdOrdenSalidaItem2').Value:=ADODtStAjusteSalidaItems.fieldbyname('idOrdenSalidaItem').AsInteger;
      ADOQryInsertaProductoKardex.Parameters.ParamByName('IdAlmacen').Value:=  1; //Almacen Actual  // debe ser variable  Feb 10/16
      ADOQryInsertaProductoKardex.Parameters.ParamByName('IdMoneda').Value:= dmconfiguracion.idmoneda ;  //Jul 15/16
      ADOQryInsertaProductoKardex.ExecSQL;
    end;

    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.ADD('Select IDProductoKardex from ProductosKardex where idordenSalidaItem= '+ intToStr(ADODtStAjusteSalidaItems.fieldbyname('idOrdenSalidaItem').AsInteger));
    ADOQryAuxiliar.Open;
    if not ADOQryAuxiliar.eof then
    begin
      idProdKdx:=ADOQryAuxiliar.FieldByName('IdProductoKardex').ASInteger;
      ADOQryAuxiliar.Close;
      ADOQryAuxiliar.SQL.Clear;
      ADOQryAuxiliar.SQL.ADD('Update SalidasUbicaciones SET IdProductoKardexS='+intToStr(idProdKdx)+' where idordenSalidaItem= '+ intToStr(ADODtStAjusteSalidaItems.fieldbyname('idOrdenSalidaItem').AsInteger));
      ADOQryAuxiliar.ExecSQL;
    end;
    ADODtStAjusteSalidaItems.Next;
  enD;
  ADODtStAjusteSalidaItems.First;
end;


procedure TDMAjustesSalida.ActualizaInventarioDir(IDOrdenSalida: Integer); //Jul 15/16 Ajustar para que no use CFDI
var
   texto:String;
   cont, IDPXE:Integer;   //Abr 1/16    //Abr 14/16
begin
  ADODtStDatosInventarioDir.Close;
  ADODtStDatosInventarioDir.Parameters.ParamByName('IDOrdenSalida').Value:= IDOrdenSalida;
  ADODtStDatosInventarioDir.OPEN;
  cont :=0;

  try
    ADODtStDatosInventarioDir.Connection.BeginTrans;
    while not ADODtStDatosInventarioDir.EOF do
    begin
         //verificar existencia en inventario Abr 1/16
      AdoQryAuxiliar.Close;
      AdoQryAuxiliar.SQL.Clear;
      AdoQryAuxiliar.SQL.Add('Select * from Inventario Where IdProducto='+ADODtStDatosInventarioDir.FieldByName('IDProducto').AsString
                                         +' and IDALmacen= '+ADODtStDatosInventarioDir.FieldByName('IDAlmacen').ASString);
      AdoQryAuxiliar.Open;
      if AdoQryAuxiliar.Eof then
      begin
        cont:=Cont+1;
      end;
      if cont=0 then
      begin
        ADOQryActualizaInventario.SQL.Clear;                   // PedidoXSurtir  =PedidoXSurtir cambio //Abr 11/16
        ADOQryActualizaInventario.SQL.Add('Update Inventario SET ' // ese no por no ser de ventas  Apartado  =Apartado-'+ADODtStDatosInventarioDir.FieldByName('Cantidad').AsString
                                         +' Existencia =Existencia- '+ADODtStDatosInventarioDir.FieldByName('CantidadDespachada').AsString
                                         +' Where IdProducto='+ADODtStDatosInventarioDir.FieldByName('IDProducto').AsString
                                         +' and IDALmacen= '+ADODtStDatosInventarioDir.FieldByName('IDAlmacen').ASString);

        ADOQryActualizaInventario.ExecSQL;
        Texto:='Actualizo inventario';
        ADOQryActualizaInventario.SQL.Clear;
        ADOQryActualizaInventario.SQL.Add('Update SalidasUbicaciones SET IdSalidaUbicacionEstatus=3  where IdOrdenSalidaItem='
                                          +ADODtStDatosInventarioDir.FieldByName('IDOrdenSalidaItem').ASString);
        ADOQryActualizaInventario.ExecSQL;
         Texto:=Texto +' Actualizo SalidasUbicacion';

        AdoQryAuxiliar.Close; //desde Abr. 14/16
        AdoQryAuxiliar.SQL.Clear;
        AdoQryAuxiliar.SQL.Add('Select * from SalidasUbicaciones  where IdOrdenSalidaItem='
                                          +ADODtStDatosInventarioDir.FieldByName('IDOrdenSalidaItem').ASString);
        AdoQryAuxiliar.Open;  //Hasta Abr. 14/16
        while not AdoQryAuxiliar.eof do //Ajustado para que actualice todos
        begin
          IDPXE:= AdoQryAuxiliar.FieldByName('IdProductoXEspacio').Value;

        //necesitamos el id de productoXEspacio producto
          ADOQryActualizaInventario.SQL.Clear; //No estaba Mar 8/16
          ADOQryActualizaInventario.SQL.Add('Update ProductosXEspacio SET Cantidad = Cantidad - '+ADODtStDatosInventarioDir.FieldByName('CantidadDespachada').AsString
                                         +' where IDProducto='+ADODtStDatosInventarioDir.FieldByName('IdProducto').asString
                                         +' and IdAlmacen= '+ADODtStDatosInventarioDir.FieldByName('IdAlmacen').asString+' and IDProductoXEspacio='+intToStr(IDPXE));
                                                                                                                   //Agregado Ab. 14, por si hay mas ubicaciones
          ADOQryActualizaInventario.ExecSQL;
          AdoQryAuxiliar.Next; //Jul 15/16
        end;
        Texto:=Texto +' Actualizo ProductoEspacio';
        ADOQryActualizaInventario.SQL.Clear; //No estaba Mar 8/16
        ADOQryActualizaInventario.SQL.Add('Update ProductosKardex SET IDProductoKardexEstatus = 3  '
                                         +' where IDProductoKardex='+ ADODtStDatosInventarioDir.FieldByName('IdProductoKardex').ASString);

        ADOQryActualizaInventario.ExecSQL;

        Texto:=Texto +' Actualizo Producto Kardex';


      end; //Ab 1/16
      ADODtStDatosInventarioDir.Next;
    end;
    if Cont=0 then
      ADODtStDatosInventarioDir.Connection.CommitTrans
    else
    begin
      ADODtStDatosInventarioDir.Connection.RollbackTrans;
      ShowMessage('No existe algún producto en Inventario');
    end;
   //  ShowMessage('bien '+Texto);
  except
     ADODtStDatosInventarioDir.Connection.RollbackTrans;
     ShowMessage('Error'+ Texto);
  end;

end;





end.
