unit OrdenesSalidasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB,Dialogs;

type
  TDMOrdenesSalidas = class(T_dmStandar)
    ADODtStOrdenSalidaItem: TADODataSet;
    ADODtStOrdenSalidaItemIdOrdenSalidaItem: TAutoIncField;
    ADODtStOrdenSalidaItemIdOrdenSalida: TIntegerField;
    ADODtStOrdenSalidaItemIdDocumentoSalidaDetalle: TIntegerField;
    ADODtStOrdenSalidaItemIdProducto: TIntegerField;
    ADODtStOrdenSalidaItemCantidadDespachada: TFloatField;
    ADODtStOrdenSalidaItemPrecio: TFMTBCDField;
    adodsMasteridOrdenSalida: TAutoIncField;
    adodsMasterIdDocumentoSalida: TIntegerField;
    adodsMasterIdOrdenEstatus: TIntegerField;
    adodsMasterIdPersonaRecolecta: TIntegerField;
    adodsMasterIdPersonaRevisa: TIntegerField;
    adodsMasterIdPersonaEmpaca: TIntegerField;
    adodsMasterFechaRegistro: TDateTimeField;
    adodsMasterTotal: TFMTBCDField;
    adodsMasterFechaIniRecolecta: TDateTimeField;
    adodsMasterFechaFinRecolecta: TDateTimeField;
    adodsMasterFechaIniRevisa: TDateTimeField;
    adodsMasterFechaFinRevisa: TDateTimeField;
    adodsMasterFechaIniEmpaca: TDateTimeField;
    adodsMasterFechaFinEmpaca: TDateTimeField;
    ADODtStOrdenSalEstatus: TADODataSet;
    ADODtStOrdenSalEstatusIdOrdenEstatus: TIntegerField;
    ADODtStOrdenSalEstatusIdentificador: TStringField;
    ADODtStOrdenSalEstatusDescripcion: TStringField;
    ADODtStPersonaRecolecta: TADODataSet;
    ADODtStPersonaRevisa: TADODataSet;
    ADODtStPersonaEmpaca: TADODataSet;
    ADODtStPersonaRecolectaIdPersona: TAutoIncField;
    ADODtStPersonaRecolectaIdRol: TIntegerField;
    ADODtStPersonaRecolectaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaRecolectaRazonSocial: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterPersonaRecolecta: TStringField;
    adodsMasterPersonaRevisa: TStringField;
    adodsMasterPersonaEmpaca: TStringField;
    ADODtStOrdenSalidaItemCantidadSolicitada: TFloatField;
    ADODtStOrdenSalidaItemObservaciones: TStringField;
    ADODtStOrdenSalidaItemImporte: TFMTBCDField;
    adodsMasterSubtotal: TFMTBCDField;
    adodsMasterIVA: TFMTBCDField;
    adodsProductos: TADODataSet;
    ADODtStOrdenSalidaItemProducto: TStringField;
    DSMaster: TDataSource;
    ADODtStPersonaRevisaIdPersona: TAutoIncField;
    ADODtStPersonaRevisaIdRol: TIntegerField;
    ADODtStPersonaRevisaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaRevisaRazonSocial: TStringField;
    ADODtStPersonaRevisaPermiso: TStringField;
    ADODtStPersonaEmpacaIdPersona: TAutoIncField;
    ADODtStPersonaEmpacaIdRol: TIntegerField;
    ADODtStPersonaEmpacaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaEmpacaRazonSocial: TStringField;
    ADODtStPersonaEmpacaPermiso: TStringField;
    ADODtStPersonaRecolectaPermiso: TStringField;
    adodsMasterClaveURecolecta: TStringField;
    adodsMasterClaveURevisa: TStringField;
    adodsMasterClaveUEmpaca: TStringField;
    ADOQryAuxiliar: TADOQuery;
    ADODtStDatosDocumentoSalida: TADODataSet;
    ADODtStDatosDocumentoSalidaIdPersona: TIntegerField;
    ADODtStDatosDocumentoSalidaIDDocumentoSalida: TAutoIncField;
    ADODtStDatosDocumentoSalidaRazonSocial: TStringField;
    DSDatosDocSalida: TDataSource;
    adodsMasterNombreCliente: TStringField;
    ADODtStOrdenSalidaItemClaveProducto: TStringField;
    ADODtStDireccionesCliente: TADODataSet;
    ADODtStPersonaAutoriza: TADODataSet;
    ADODtStPersonaAutorizaIdPersona: TAutoIncField;
    ADODtStPersonaAutorizaIdRol: TIntegerField;
    ADODtStPersonaAutorizaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaAutorizaRazonSocial: TStringField;
    ADODtStPersonaAutorizaPermiso: TStringField;
    adodsMasterIdPersonaAutoriza: TIntegerField;
    adodsMasterFechaAutoriza: TDateTimeField;
    adodsMasterPersonaAutoriza: TStringField;
    adodsMasterClaveUAutoriza: TStringField;
    ADODtStProductosKardex: TADODataSet;
    ADODtStProductosKardexIdProductosKardex: TAutoIncField;
    ADODtStProductosKardexIdProducto: TIntegerField;
    ADODtStProductosKardexIdOrdenEntradaItem: TIntegerField;
    ADODtStProductosKardexIdOrdenSalidaItem: TIntegerField;
    ADODtStProductosKardexIdMoneda: TIntegerField;
    ADODtStProductosKardexIdSeccion: TIntegerField;
    ADODtStProductosKardexReferenciaEspacio: TIntegerField;
    ADODtStProductosKardexContenedor: TStringField;
    ADODtStProductosKardexFecha: TWideStringField;
    ADODtStProductosKardexMovimiento: TStringField;
    ADODtStProductosKardexCantidad: TFloatField;
    ADODtStProductosKardexImporte: TFMTBCDField;
    ADODtStInformacionEnvio: TADODataSet;
    ADODtStInformacionEnvioIdInfoEntrega: TAutoIncField;
    ADODtStInformacionEnvioIdCFDI: TLargeintField;
    ADODtStInformacionEnvioIDPersonaCliente: TIntegerField;
    ADODtStInformacionEnvioIDPersonaDomicilio: TIntegerField;
    ADODtStInformacionEnvioIDResponsableEntrega: TIntegerField;
    ADODtStInformacionEnvioFechaProgramadaEnt: TWideStringField;
    ADODtStInformacionEnvioFechaRealEnt: TWideStringField;
    ADODtStInformacionEnvioCondicionEntrega: TStringField;
    ADODtStInformacionEnvioObservaciones: TStringField;
    ADODtStInformacionEnvioEstatusEntrega: TStringField;
    ADODtStInformacionEnvioIdTelefono: TIntegerField;
    ADODtStInformacionEnvioContenido: TStringField;
    ADODtStInformacionEnvioConducto: TStringField;
    ADODtStInformacionEnvioServicio: TStringField;
    ADODtStInformacionEnvioPagoFlete: TBooleanField;
    ADODtStInformacionEnvioValor: TFloatField;
    ADODtStInformacionEnvioAsegurado: TBooleanField;
    ADODtStFacturasCFDI: TADODataSet;
    ADODtStFacturasCFDIIdCFDI: TLargeintField;
    ADODtStFacturasCFDIIDOrdenSalida: TIntegerField;
    dsFacturaCFDI: TDataSource;
    ADODtStTelefonos: TADODataSet;
    ADODtStFacturasCFDIIdPersonaReceptor: TIntegerField;
    ADODtStTelefonosTelefono: TStringField;
    ADODtStTelefonosIdTelefono: TAutoIncField;
    ADODtStTelefonosIdPersona: TIntegerField;
    ADODtStTelefonosIdTelefonoTipo: TIntegerField;
    ADODtStTelefonosIdDomicilio: TIntegerField;
    ADODtStTelefonosLada: TStringField;
    ADODtStTelefonosPredeterminado: TBooleanField;
    ADODtStFacturasCFDIIdClienteDomicilio: TIntegerField;
    ADODtStTelefonosTeleconLada: TStringField;
    ADODtStInformacionEnvioTelefonoCompleto: TStringField;
    ADODtStSalidasUbicaciones: TADODataSet;
    ADODtStPersonaAutorizaPassword: TStringField;
    ADODtStPersonaEmpacaPassword: TStringField;
    ADODtStPersonaRevisaPassword: TStringField;
    ADODtStPersonaRecolectaPassword: TStringField;
    ADODtStSalidasUbicacionesIdSalidaUbicacion: TAutoIncField;
    ADODtStSalidasUbicacionesIdProductoKardexS: TIntegerField;
    ADODtStSalidasUbicacionesIdProductoXEspacio: TIntegerField;
    ADODtStSalidasUbicacionesCantidad: TFloatField;
    ADODtStSalidasUbicacionesIdSalidaUbicacionEstatus: TIntegerField;
    ADODtStSalidasUbicacionesIdOrdenSalidaItem: TIntegerField;
    DSOrdenSalidaItem: TDataSource;
    ADODtStProductosXEspacio: TADODataSet;
    ADODtStProductosXEspacioIdProductoXEspacio: TAutoIncField;
    ADODtStProductosXEspacioIdEspacio: TIntegerField;
    ADODtStProductosXEspacioIdProductoKardexE: TIntegerField;
    ADODtStProductosXEspacioIdProducto: TIntegerField;
    ADODtStProductosXEspacioCantidad: TFloatField;
    ADODtStProductosXEspacioIdCategoria: TIntegerField;
    ADODtStProductosXEspacioIdAlmacen: TIntegerField;
    ADODtStProductosXEspacioEspacio: TStringField;
    ADODtStSalidasUbicacionesIdOrdenSalida: TIntegerField;
    ADODtStSalidasUbicacionesIdProducto: TIntegerField;
    ADODtStSalidasUbicacionesproducto: TStringField;
    ADODtStSalidasUbicacionesDisponible: TFloatField;
    DSInsertaKardex: TDataSource;
    ADOQryInsertaProductoKardex: TADOQuery;
    ADODtStDatosDocumentoSalidaIdentificadorCte: TStringField;
    ADODtStIdentificadores: TADODataSet;
    adodsMasterIdentificadorCte: TStringField;
    DSSalidaUbicacion: TDataSource;
    ADODtStSalidasUbicacionesEspacioA: TStringField;
    ADODtStDocumentoDetalleItem: TADODataSet;
    ADODtStDocumentoDetalleItemIdAlmacen: TIntegerField;
    ADODtStDocumentoDetalleItemIDProducto: TIntegerField;
    ADODtStDocumentoDetalleItemIdDocumentoSalidaDetalle: TAutoIncField;
    ADODtStOrdenSalidaItemIDAlmacen: TIntegerField;
    ADODtStFacturasCFDIIDDomicilio: TIntegerField;
    ADODtStInformacionEnvioOcurre: TBooleanField;
    ADODtStInformacionEnvioDomicilioChk: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ADODtStOrdenSalidaItemCantidadDespachadaChange(Sender: TField);
    procedure ADODtStOrdenSalidaItemAfterPost(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemBeforePost(DataSet: TDataSet);
    procedure ADODtStTelefonosCalcFields(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesEspacioChange(Sender: TField);
    procedure ADODtStInformacionEnvioBeforeOpen(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesCantidadChange(Sender: TField);
    procedure ADODtStSalidasUbicacionesAfterPost(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesCantidadSetText(Sender: TField;
      const Text: string);
    procedure ADODtStSalidasUbicacionesBeforePost(DataSet: TDataSet);
    procedure ADODtStSalidasUbicacionesAfterDelete(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
  private
    CantAGuardar:Double;
    function EncuentraProdXEspacio(TextoEspacio: String; IDProd:Integer;
      var LaCantidad: Double): Integer;
    function VerificaYCreaResto(IdOrdenSalItem:Integer; CantActual:Double; idSalidaUbicacion:Integer):Boolean;  //Ajustado  //Feb 3/16
    function ValorMaximoPosible(valorAct: Double; idOrdenItem: Integer; idSalidaUbicacion:integer): Double;
    { Private declarations }

  public
    { Public declarations }
    Ajustar,CambioCantidad:Boolean;
  end;

var
  DMOrdenesSalidas: TDMOrdenesSalidas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses OrdenesSalidaForm;

{$R *.dfm}

procedure TDMOrdenesSalidas.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodtstIdentificadores.Open; //Feb 8/16
end;

procedure TDMOrdenesSalidas.ADODtStInformacionEnvioBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  ADODtStFacturasCFDI.Open;
  ADODtStTelefonos.Open;
end;

procedure TDMOrdenesSalidas.ADODtStOrdenSalidaItemAfterPost(DataSet: TDataSet);
var idDocSalida, IDDocItem:Integer;
//completo:Boolean;
   Subtotal:Double;
   Cant1, Cant2:Double; //Ene 11/16
begin
  inherited;
  //Verificar si aca actualizar el item respectivo del detalle del documento
  IDDocItem:=DataSet.FieldByName('IDDocumentoSalidaDetalle').AsInteger;
  idDocSalida:=DataSet.FieldByName('IDOrdenSalida').AsInteger;
//  completo:=DataSet.FieldByName('CantidadDespachada').AsFloat=DataSet.FieldByName('CantidadSolicitada').AsFloat;
   //Hay cambio, debe ser menor o igual
  Cant1:=  DataSet.FieldByName('CantidadSolicitada').ASFloat;  //Ene 11/16
  Cant2:=  DataSet.FieldByName('CantidadDespachada').AsFloat;  //Ene 11/16
  Cant2:=Cant1-Cant2;//2 no puede ser mayor a 1 , ya controlado
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


  adodsMaster.refresh; //OK

  if ajustar then
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Clear;                                                                             //Es la diferencia
    ADOQryAuxiliar.SQL.Add('UPDATE DocumentosSalidasDetalles SET CantidadPendiente= CantidadPendiente+'+FloattoSTR(Cant2)
                          +' where IDDocumentoSalidaDetalle ='+IntToStr(idDocItem));
    ADOQryAuxiliar.ExecSQL;
    ajustar:=False;
  end;
  //Actualizar DocumentoSalidaItem
end;

procedure TDMOrdenesSalidas.ADODtStOrdenSalidaItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  if dataset.FieldByName('CantidadDespachada').AsFloat>dataset.FieldByName('CantidadSolicitada').AsFloat then
  begin
    showmessage('La cantidad despachada no puede ser mayor a la solicitada');
    abort;

  end;

end;

procedure TDMOrdenesSalidas.ADODtStOrdenSalidaItemCantidadDespachadaChange(   //Verificar por que esta cambiando esta
  Sender: TField);
begin
  inherited;
  if ADODtStOrdenSalidaItem.State in [dsEdit,dsInsert] then
  begin
    ADODtStOrdenSalidaItem.FieldByName('Importe').AsFloat:=ADODtStOrdenSalidaItem.FieldByName('Precio').AsFloat* ADODtStOrdenSalidaItem.FieldByName('CantidadDespachada').AsFloat;
    //Aca se supone que deberia habilitar para hacer el ajuste en el documento salida original
    Ajustar:=True;//Nov 26/15
  end;
end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesAfterDelete(
  DataSet: TDataSet);
var
  valornvo:Double;
begin
  inherited;

  Valornvo:=ValorMaximoPosible(-1,ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').AsInteger,ADODtStSalidasUbicaciones.FieldByName('idsalidaUbicacion').AsInteger);
  if ValorNvo>0 then
     Showmessage('Registro incompleto');
end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesAfterPost(
  DataSet: TDataSet);
var IdOrdenSalItem, IdSalidaUbicacion:integer;
    cantidad:Double;
begin
  inherited;
  if CambioCantidad then
  begin
    IdOrdenSalItem:= ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').AsInteger;
    Cantidad:= ADODtStSalidasUbicaciones.FieldByName('Cantidad').Asfloat;
    IdSalidaUbicacion:= ADODtStSalidasUbicaciones.FieldByName('IDSalidaUbicacion').Asinteger; //Feb 3/16
    VerificaYCreaResto(IdOrdenSalItem,Cantidad, IdSalidaUbicacion);
                                     //Verificar que tenga el valor actual

    CambioCantidad:=False;
    ADODtStSalidasUbicaciones.Close;
    ADODtStSalidasUbicaciones.open;

  end;
end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesBeforePost(
  DataSet: TDataSet);
var valor:Double;
begin
  inherited;
  valor:=ValorMaximoPosible(CantAGuardar,DataSet.FieldByName('IdOrdenSalidaItem').ASInteger,DataSet.FieldByName('IdSalidaUbicacion').ASInteger); //Verificar que tenga valor....Feb 2/16
  if valor <CantAGuardar then
  begin
    abort;
    Showmessage('La Cantidad sobre pasa la orden. Máximo valor a poner '+ floatToStr(Valor));  //Verificar
  end;
end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesCantidadChange(
  Sender: TField);
var
  CantOrdenItem:Double;
begin
  inherited;   //No entra
  //Verifica y crea
 // Showmessage('valor Cantidad Change '+ ADODtStSalidasUbicaciones.fieldbyname('Cantidad').asString);
  if ADODtStSalidasUbicaciones.State=dsEdit  then
  begin
 (*   ADOQryAuxiliar.close;
    ADOQryAuxiliar.SQL.Clear;
    ADOQryAuxiliar.SQL.ADD('SElect CantidadDespachada from OrdenesSalidasItems where IdOrdenSalidaItem='+ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').AsString);
    ADOQryAuxiliar.Open;
    CantOrdenItem:= ADOQryAuxiliar.FieldByName('CantidadDespachada').AsFloat;

         *)
    CambioCantidad:=True;
  end;

end;

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesCantidadSetText(
  Sender: TField; const Text: string);
var valor:Double;
begin
  inherited;

  CantAGuardar:= StrTofloat(Text);

  CambioCantidad:= ADODtStSalidasUbicaciones.FieldByName('Cantidad').ASFloat<>CantAGuardar;
  sender.AsString:=Text;
 (*
//  Showmessage('valor SEtText'+ Text);
 valor:=ValorMaximoPosible(StrTofloat(Text),ADODtStSalidasUbicaciones.FieldByName('IdOrdenSalidaItem').ASInteger,ADODtStSalidasUbicaciones.FieldByName('IdSalidaUbicacion').ASInteger); //Verificar que tenga valor....Feb 2/16
 //Solo para validar y enviar msg

   if valor < StrTofloat(Text) then
       Showmessage('La Cantidad sobre pasa la orden. Máximo valor a poner '+ floatToStr(Valor));  //Verificar
//    ADODtStSalidasUbicaciones.FieldByName('Cantidad').ASFloat:= valor;

   *)
end;

Function TDMOrdenesSalidas.ValorMaximoPosible(valorAct:Double; idOrdenItem:Integer; idSalidaUbicacion:integer):Double;
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

procedure TDMOrdenesSalidas.ADODtStSalidasUbicacionesEspacioChange(
  Sender: TField);
var
  Cantidad:Double;
  idProdXEsp:integer;
begin
  inherited;
  if adodtstSalidasUbicaciones.State in [dsEdit,dsInsert] then
  begin
    IdProdXEsp:=EncuentraProdXEspacio(adodtstSalidasUbicaciones.FieldByName('Espacio').ASString,adodtstOrdenSalidaItem.FieldByName('IDProducto').ASInteger, Cantidad);
    if IdProdXEsp<>-1 then
    begin
      adodtstSalidasUbicaciones.FieldByName('IdProductoXEspacio').AsInteger:= IdProdXEsp;
      if not adodtstSalidasUbicaciones.FieldByName('IdProductoXEspacio').isnull then
      begin
        adodtstSalidasUbicaciones.FieldByName('Disponible').AsFloat:=Cantidad;
    //    adodtstSalidasUbicaciones.FieldByName('IdProducto').asInteger:=idproducto;
    //    adodtstSalidasUbicaciones.FieldByName('Importe').AsFloat:=ValUni* adodsCotizacionesDetalle.FieldByName('CAntidad').AsFloat;
      end;
    end
    else
    begin
      Showmessage('No existe el producto en ese almacen');
      adodtstSalidasUbicaciones.FieldByName('Espacio').ASString:='';
    end;
  end;
end;


function TDMOrdenesSalidas.EncuentraProdXEspacio(TextoEspacio:String;IDProd:Integer; var LaCantidad:Double):Integer;
begin
  Result:=-1;
  if TextoEspacio<>'' then
  begin
    ADOQryAuxiliar.Close;
    ADOQryAuxiliar.SQL.Add('Select Pe.*,E.Descripcion as Espacio from ProductosXEspacio PE'+
    ' inner join Espacios E on Pe.idEspacio =E.IdEspacio where PE.IdProducto='+intToStr(IDProd)
    +' and E.Descripcion='''+TextoEspacio+'''');
    ADOQryAuxiliar.open;
    if not ADOQryAuxiliar.eof then
    begin
      LaCantidad:= ADOQryAuxiliar.FieldByName('Cantidad').AsFloat;
      Result:=ADOQryAuxiliar.FieldByName('IdProductoXEspacio').asinteger ; //Valor del IDinterno
//      Result:=ADOQryAuxiliar.FieldByName('Descripcion').AsString;

    end;
  end;
  ADOQryAuxiliar.Close;
end;




procedure TDMOrdenesSalidas.ADODtStTelefonosCalcFields(DataSet: TDataSet);
begin
  inherited;
  DAtaset.FieldByName('TeleConLada').AsString:=dataset.FieldByName('Lada').AsString+'-'+ dataset.FieldByName('Telefono').AsString;
end;

procedure TDMOrdenesSalidas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  Ajustar:=False;
  gGridEditForm:= TFrmOrdenesSalida.Create(Self);
 // adodsMaster.Parameters.ParamByName('TipoDocto').Value:=FTipoDoc;
  gGridEditForm.DataSet := adodsMaster;
  TFrmOrdenesSalida(gGridEditForm).DtSrcOrdenSalItem.DataSet:=ADODtStOrdenSalidaItem;

  TFrmOrdenesSalida(gGridEditForm).DSInsertaKardex.DataSet:=ADOQryInsertaProductoKardex;//Feb 5/16


 (* TfrmCotizaciones(gGridEditForm).TipoDocumento:= FTipoDoc;
  TfrmCotizaciones(gGridEditForm).DataSourceDetail.DataSet:=adodsCotizacionesDetalle;
  TfrmCotizaciones(gGridEditForm).DSAuxiliar.DataSet:=ADODSAuxiliar; //Nov 9/15
  TfrmCotizaciones(gGridEditForm).DSOrdenSalida.DataSet:=ADODtStOrdenSalida; //Nov 18/15
  TfrmCotizaciones(gGridEditForm).DSOrdenSalidaItems.DataSet:=ADODtStOrdenSalidaItem; //Nov 18/15*)
end;

function TDMOrdenesSalidas.VerificaYCreaResto(IdOrdenSalItem:Integer; CantActual:Double; idSalidaUbicacion:Integer):Boolean;  //Ajustado  //Feb 3/16
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
    ShowMessage('Completo. Asigne las ubicaciones');

end;

end.
