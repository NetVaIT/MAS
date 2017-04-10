unit DevolucionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, dialogs,forms,winapi.windows;
const
  IdAlmacenPrincipal = 1; //Abr 10/17

type
  TPEstatus = (eNone, eGenerada, eRecoleccion, eRevision, eAutorizacion, eEmpaque, eEnvio, eRecibida, eCancelada, eAplicada);
  TdmDevoluciones = class(T_dmStandar)
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
    adodsItems: TADODataSet;
    adodsItemsIdOrdenEntradaItem: TAutoIncField;
    adodsItemsIdOrdenEntrada: TIntegerField;
    adodsItemsIdProducto: TIntegerField;
    adodsItemsClaveProducto: TStringField;
    adodsItemsProducto: TStringField;
    adodsItemsCantidad: TFloatField;
    adodsItemsCantidadSolicitada: TFloatField;
    adodsItemsImporte: TFMTBCDField;
    adodsItemsImporteMonedaLocal: TFMTBCDField;
    adodsItemsImporteTotal: TFMTBCDField;
    dsItems: TDataSource;
    adodsEstatus: TADODataSet;
    adodsAlmacenes: TADODataSet;
    adodsProductos: TADODataSet;
    adodsPersonas: TADODataSet;
    adodsPersonasIdPersona: TAutoIncField;
    adodsPersonasRFC: TStringField;
    adodsPersonasRazonSocial: TStringField;
    adodsPersonasIDRol: TIntegerField;
    adodsPersonasSaldoCliente: TFMTBCDField;
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
    ADODtStDireccionesClienteSaldo: TFMTBCDField;
    ADODtStDireccionesClienteIdEnvioTipo: TIntegerField;
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
    ADODtStProductosKardexContenedor: TStringField;
    ADODtStProductosKardexMovimiento: TStringField;
    ADODtStProductosKardexCantidad: TFloatField;
    ADODtStProductosKardexImporte: TFMTBCDField;
    ADODtStProductosKardexIdProductoKardex: TAutoIncField;
    ADODtStProductosKardexIdAlmacen: TIntegerField;
    ADODtStProductosKardexIdProductoKardexEstatus: TIntegerField;
    ADODtStProductosKardexFecha: TDateTimeField;
    ActSeleccionaProducto: TAction;
    ADODSAuxiliar: TADODataSet;
    adodsMasterAlmacen: TStringField;
    adodsMasterEstatus: TStringField;
    adodsMasterCliente: TStringField;
    ADODtStOrdenEntradaTipo: TADODataSet;
    adodsMasterTipoOrden: TStringField;
    ADODtStListaProductos: TADODataSet;
    ADOQryAuxiliar: TADOQuery;
    ActAplicarEntrada: TAction;
    ADODtStProductosKardexPrecioUnitario: TFMTBCDField;
    ADODtStProductosKardexCostoUnitario: TFMTBCDField;
    adodsItemsCosto: TFMTBCDField;
    adodsItemsPrecioVenta: TFMTBCDField;
    adodsItemsCostoAproximado: TFMTBCDField;
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
    ActSeleccionItemsDev: TAction;
    adodsItemsIdCFDIConceptoDev: TLargeintField;
    ADODtStItemsXDevolverValorUnitario: TFMTBCDField;
    adopAplicaEntradaXDev: TADOStoredProc;
    procedure ActSeleccionaProductoExecute(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsItemsClaveProductoChange(Sender: TField);
    procedure adodsItemsBeforeInsert(DataSet: TDataSet);
    procedure dsmasterDataChange(Sender: TObject; Field: TField);
    procedure adodsMasterBeforeOpen(DataSet: TDataSet);
    procedure adodsItemsNewRecord(DataSet: TDataSet);
    procedure adodsItemsCantidadChange(Sender: TField);
    procedure adodsItemsAfterPost(DataSet: TDataSet);
    procedure ActAplicarEntradaExecute(Sender: TObject);
    procedure ActSeleccionItemsDevExecute(Sender: TObject);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
  private


    FBloquear: Boolean;
    function EncuentraProd(IdProd: String; var ValUni: Double;
      var ID: Integer): String;
    procedure SetBloquear(const Value: Boolean);
    function CostoEnInventario(idProd: Integer): Double;
    function CalcularTotales(IDDoc: Integer; Campoid, CampoSum, TablaO: String;
      PorIVA: Double; var AMontoIva, ASubtotal, ATotal: Double): Boolean;
    procedure ActualizarItemsDevolucion(idCFDINC,IdOrdenEntradaAct: Integer);
    { Private declarations }
  public
    { Public declarations }
    property Bloquear: Boolean read FBloquear write SetBloquear;
  end;

var
  dmDevoluciones: TdmDevoluciones;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses  _ConectionDmod, ConfiguracionDM, DevolucionesEdit,
  DevolucionesItemsEdit,ListaProductosForm, ListaItemsParaDevolucion, _Utils;

{$R *.dfm}

procedure TdmDevoluciones.ActAplicarEntradaExecute(Sender: TObject);
begin
  inherited;
  if application.messagebox('¿Está seguro de registrar la devolución como entrada?','Confirmación',MB_YESNO)=IDYES then
  begin    //Jun 29/16
    adopAplicaEntradaXDev.Parameters.ParamByName('@IdOrdenEntrada').value:= adodsMasterIdOrdenEntrada.AsInteger;
    adopAplicaEntradaXDev.Parameters.ParamByName('@IdUsuario').value:=_dmConection.IdUsuario;
    adopAplicaEntradaXDev.ExecProc;
    RefreshADODS(adodsMaster, adodsMasterIdOrdenEntrada);

    //Actualiza con 7
    adopAplicaEntradaXDev.Parameters.ParamByName('@IdOrdenEntrada').value:= adodsMasterIdOrdenEntrada.AsInteger;
    adopAplicaEntradaXDev.Parameters.ParamByName('@IdUsuario').value:=_dmConection.IdUsuario;
    adopAplicaEntradaXDev.ExecProc;
    RefreshADODS(adodsMaster, adodsMasterIdOrdenEntrada);
    //DEbe quedar en aduana
    application.messagebox('   Entrada por Devolución Aplicada. Items ubicados en Aduana.'+#13
                          +'Asegúrese de acomodar en ubicación real, para que estén disponibles ','Información',MB_ok); //Sep 9/16
  end;

end;

procedure TdmDevoluciones.ActSeleccionaProductoExecute(Sender: TObject);
var
  frmListaProductos:TfrmListaProductos;
begin
  inherited; //Ver si crear en este punto o antes
  frmListaProductos:=TfrmListaProductos.create(self); //Jun 21/16 agregado
  FrmListaProductos.DataSet:=AdoDtStListaProductos;
  FrmListaProductos.DataSet.Close;
  frmListaProductos.Clave:= adodsItemsClaveProducto.AsString;
  frmListaProductos.ShowModal;
  if frmListaProductos.Acepto then  //Jun 27/16
  begin
    if adodsItems.State in [dsEdit,dsInsert] then
    begin
      adodsItemsIdProducto.Value := frmListaProductos.IdProducto;
      adodsItemsClaveProducto.AsString:= frmListaProductos.Identificador;
      //DEberian salir de La nota de Crédito o de la Factura Jun 24/16
      adodsItemsprecioventa.AsFloat:= frmListaProductos.Precio; //Ver si se deja Jun 23/16
                                    //Ojo esto  deberian salir de Items de la Nota de Crédito o Factura
      adodsItemscosto.AsFloat:=CostoEnInventario(frmListaProductos.IdProducto); //Deberia ser el de la venta.
    end;
  end
  else
    if adodsItems.State in [dsEdit, dsInsert] then
      adodsItems.Cancel;
  frmListaProductos.Free;
end;

procedure TdmDevoluciones.ActSeleccionItemsDevExecute(Sender: TObject);
var    //Deshabilitado para la version 1.
  FrmSeleccionItemsDevolucion:TFrmSeleccionItemsDevolucion;
  IdAuxCDFDI:Integer;
begin
  inherited;

  ADODtStItemsXDevolver.Close;
  ADODtStItemsXDevolver.Parameters.ParamByName('IDPersona').Value:=adodsMasterIdPersona.AsInteger;
  ADODtStItemsXDevolver.open;
  if  ADODtStItemsXDevolver.Eof then
    showMessage('Este Cliente no tiene Notas de Crédito pendientes de devolución')
  else
  begin
    FrmSeleccionItemsDevolucion:=TFrmSeleccionItemsDevolucion.create(self);
    FrmSeleccionItemsDevolucion.DataSet:=ADODtStItemsXDevolver;
    FrmSeleccionItemsDevolucion.DataSet.open; //Verificar
  //  FrmDevolucionesItems.Clave:= adodsItemsClaveProducto.AsString;
    FrmSeleccionItemsDevolucion.ShowModal;

    if FrmSeleccionItemsDevolucion.Acepto then  //Jun 27/16
    begin
      if FrmSeleccionItemsDevolucion.ATipoExtraccion=0 then
      begin
        if adodsItems.State in [dsEdit,dsInsert] then
        begin
          adodsItemsIdProducto.Value := FrmSeleccionItemsDevolucion.IdProducto;
          adodsItemsClaveProducto.AsString:= FrmSeleccionItemsDevolucion.Identificador;
          adodsItemsCantidad.AsFloat:= FrmSeleccionItemsDevolucion.Cantidad;

          //DEberian salir de La nota de Crédito o de la Factura Jun 24/16
          adodsItemsprecioventa.AsFloat:= FrmSeleccionItemsDevolucion.Precio; //Ver si se deja Jun 23/16

          adodsItemsIdCFDIConceptoDev.AsInteger:=FrmSeleccionItemsDevolucion.AIDCFDIConcepto;
                                        //Ojo esto  deberian salir de Items de la Nota de Crédito o Factura
          adodsItemscosto.AsFloat:=CostoEnInventario(FrmSeleccionItemsDevolucion.IdProducto); //Deberia ser el de la venta.(verificar si se guarda enlanota de credito)
        end;
      end
      else // Aca debe tomar todos los conceptos de la nota de crédito y registrar la devolucion..
      begin
        IdAuxCDFDI:=FrmSeleccionItemsDevolucion.AIDCFDINotaC;
        //REalizar misma consulta con Id e ir colocando todos los conceptos
        ActualizarItemsDevolucion(IdAuxCDFDI,adodsMasterIdOrdenEntrada.AsInteger);
      end;                                    //Ver si se requiere //Jun 28/16
    end
    else
      if adodsItems.State in [dsEdit, dsInsert] then
        adodsItems.Cancel;
    FrmSeleccionItemsDevolucion.Free;
  end;
end;

procedure TdmDevoluciones.adodsItemsAfterPost(DataSet: TDataSet);
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
    TFrmDevoluciones(gGridEditForm).btnAplicarEntrada.Enabled:= (AdoDSMaster.fieldbyname('IdOrdenEstatus').asinteger=1)
                                                     and (ADODsItems.RecordCount >0);
  end;
//  No requerido  ActualizarItemsDevolucion(DataSet.fieldbyname('IdOrdenEntradaItem').asInteger);
end;

function TdmDevoluciones.CalcularTotales(IDDoc:Integer;Campoid,CampoSum,TablaO:String;PorIVA: Double; var AMontoIva,
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

procedure TdmDevoluciones.ActualizarItemsDevolucion(idCFDINC,IdOrdenEntradaAct:Integer); //Jun 28/16
begin  //Registrar todos los items de una NC      //Sin usar
  //Verificar Consulta original..
  ADODtStItemsXDevolver.Filter:='IdCFDI='+intToStr(idCFDINC);
  ADODtStItemsXDevolver.Filtered:=True;
  ADODtStItemsXDevolver.First;
  while not ADODtStItemsXDevolver.eof do
  begin
    if adodsItems.State = dsbrowse then
       adodsItems.Insert;
    adodsItemsIdProducto.Value :=  ADODtStItemsXDevolverIdProducto.Value;

    adodsItemsClaveProducto.AsString:= ADODtStItemsXDevolverNoIdentifica.Value;
    adodsItemsCantidad.AsFloat:= ADODtStItemsXDevolverCantidad.Value;
     //DEberian salir de La nota de Crédito o de la Factura Jun 24/16
    adodsItemsprecioventa.AsFloat:= ADODtStItemsXDevolver.FieldByName('ValorUnitario').AsFloat; //Ver si se deja Jun 23/16
    adodsItemsIdCFDIConceptoDev.AsInteger:=ADODtStItemsXDevolverIdCFDIConcepto.Value;
                                 //Ojo esto  deberian salir de Items de la Nota de Crédito o Factura
    adodsItemscosto.AsFloat:=CostoEnInventario(ADODtStItemsXDevolverIdProducto.Value); //Deberia ser el de la venta.(verificar si se guarda enlanota de credito)

    adodsItems.post;
    ADODtStItemsXDevolver.Next;
  end;



end;

procedure TdmDevoluciones.adodsItemsBeforeInsert(DataSet: TDataSet);
begin
  if adodsMaster.State in [dsEdit,dsInsert]then //Para evitar que se vaya sin nada jun 21/16
    adodsMaster.post;
  inherited;
end;

procedure TdmDevoluciones.adodsItemsCantidadChange(Sender: TField);
begin //Jun 22/16
  inherited;
    if adodsItems.State in [dsEdit,dsInsert] then
  begin                                                //Deberia ser con el que se vendio
    //adodsItems.FieldByName('PrecioVenta').AsFloat:= ;//ObtenerPrecioMayoreo(adodsItemsIdProducto.AsInteger ,adodsItems.FieldByName('Precio').AsFloat, adodsItems.FieldByName('cantidad').AsFloat);

    adodsItems.FieldByName('cantidadSolicitada').AsFloat:=adodsItems.FieldByName('cantidad').AsFloat;
    adodsItems.FieldByName('Importe').AsFloat:=adodsItems.FieldByName('Costo').AsFloat* adodsItems.FieldByName('CAntidad').AsFloat;
    adodsItems.FieldByName('ImporteTotal').AsFloat:=adodsItems.FieldByName('Importe').AsFloat;

    adodsItems.FieldByName('ImporteMonedaLocal').AsFloat:=adodsItems.FieldByName('Importe').AsFloat;//Jun 29/16


  end;
end;

procedure TdmDevoluciones.adodsItemsClaveProductoChange(Sender: TField);
var valuni:Double;
  idproducto:integer;
begin
  inherited;
 //Se deja mientras Jun28/16  //Deshabilitar si se  sacar de las Notas de crédito del cliente
  if adodsItems.State in [dsEdit,dsInsert] then
  begin
    adodsItems.FieldByName('Producto').AsString:= EncuentraProd(adodsItems.FieldByName('claveProducto').ASString,ValUni,idproducto);
    if adodsItems.FieldByName('Producto').AsString<>'' then
    begin                     //Mod. Jun 27/16
      adodsItems.FieldByName('PrecioVenta').AsFloat:=ValUni;
      adodsItems.FieldByName('IdProducto').asInteger:=idproducto;
      adodsItems.FieldByName('Importe').AsFloat:=ValUni* adodsItems.FieldByName('CAntidad').AsFloat;
      adodsItems.FieldByName('CostoAproximado').AsFloat:=CostoEnInventario(idproducto);//  (no es un total sep 29/16)  * adodsItems.FieldByName('CAntidad').AsFloat;
      adodsItems.FieldByName('Costo').AsFloat:=CostoEnInventario(idproducto); /// Sep 29/16
    end;
  end;

end;

function TdmDevoluciones.CostoEnInventario(idProd:Integer):Double; //Jun 24/16
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

procedure TdmDevoluciones.adodsItemsNewRecord(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('Cantidad').AsFloat:=1;
  dataset.FieldByName('CantidadSolicitada').AsFloat:=1;
  dataset.Fieldbyname('Costo').asFloat:=0;//Sep 29/16 pero deberia llevar el que tiene en inventario
end;

function TdmDevoluciones.EncuentraProd(IdProd: String;Var ValUni:Double;var ID:Integer):String;
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




procedure TdmDevoluciones.SetBloquear(const Value: Boolean);
begin
  FBloquear := Value;
   TfrmDevoluciones(gGridEditForm).pnlEncabezado.Enabled:= not Value;
  gFormDetail1.ReadOnlyGrid:= Value;
  TfrmDevoluciones(gGridEditForm).pnlPie.Enabled:= not Value;
//  actModificarArancel.Enabled := not Value;  //Puede ser para acomodar..Jun 21/16
end;

procedure TdmDevoluciones.adodsMasterAfterPost(DataSet: TDataSet);
begin
  inherited;
 //Sep 8/16
 TFrmDevoluciones(gGridEditForm).btnAplicarEntrada.Enabled:= (AdoDSMaster.fieldbyname('IdOrdenEstatus').asinteger=1)
                                                     and (ADODsItems.RecordCount >0);
end;

procedure TdmDevoluciones.adodsMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  adodsPersonas.Open;
end;

procedure TdmDevoluciones.adodsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;  //Jun 20/16
  adodsMasterIdOrdenEstatus.Value:= 1;
  adodsMasterIdMoneda.Value:= dmConfiguracion.IdMoneda;
  adodsMasterTipoCambio.Value:= 1;
  adodsMasterIdUsuario.Value:= _dmConection.IdUsuario;
  adodsMasterFecha.Value:= Date;
  adodsMasterIdOrdenEntradaTipo.Value:=2; //Jun 27/16
  adodsMasterIdAlmacen.Value:= idAlmacenPrincipal; //Abr 10/17

end;

procedure TdmDevoluciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmDevoluciones.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  if adodsItems.CommandText <> EmptyStr then adodsItems.Open;
  gFormDetail1:= TfrmDevolucionesItems.Create(Self);
  gFormDetail1.DataSet:= adodsItems;
  TfrmDevoluciones(gGridEditForm).actAplicaEntrada:=ActAplicarEntrada;
                                                               //Jun 28/16 se dejo mientras
  TfrmDevolucionesItems(gFormDetail1).actSeleccionarProducto :=actSeleccionaProducto ;//jun 27/16 ActSeleccionItemsDev;

  //Aca creaba La lista pero ver si funciona creando y destruyendo al uso
 
end;

procedure TdmDevoluciones.dsmasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
   Bloquear:= adodsMasterIdOrdenEstatus.Value = Ord(eAplicada);
   TFrmDevoluciones(gGridEditForm).btnAplicarEntrada.Enabled:= (AdoDSMaster.fieldbyname('IdOrdenEstatus').asinteger=1) //sep9/16
                                                     and (ADODsItems.RecordCount >0);
end;

end.
