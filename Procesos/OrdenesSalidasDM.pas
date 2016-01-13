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
    ADODtStPersonaRecolectaClaveUsuario: TStringField;
    ADODtStPersonaRevisaIdPersona: TAutoIncField;
    ADODtStPersonaRevisaIdRol: TIntegerField;
    ADODtStPersonaRevisaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaRevisaRazonSocial: TStringField;
    ADODtStPersonaRevisaClaveUsuario: TStringField;
    ADODtStPersonaRevisaPermiso: TStringField;
    ADODtStPersonaEmpacaIdPersona: TAutoIncField;
    ADODtStPersonaEmpacaIdRol: TIntegerField;
    ADODtStPersonaEmpacaIdPersonaEstatus: TIntegerField;
    ADODtStPersonaEmpacaRazonSocial: TStringField;
    ADODtStPersonaEmpacaClaveUsuario: TStringField;
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
    ADODtStPersonaAutorizaClaveUsuario: TStringField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure ADODtStOrdenSalidaItemCantidadDespachadaChange(Sender: TField);
    procedure ADODtStOrdenSalidaItemAfterPost(DataSet: TDataSet);
    procedure ADODtStOrdenSalidaItemBeforePost(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
    Ajustar:Boolean;
  end;

var
  DMOrdenesSalidas: TDMOrdenesSalidas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses OrdenesSalidaForm;

{$R *.dfm}

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

procedure TDMOrdenesSalidas.ADODtStOrdenSalidaItemCantidadDespachadaChange(
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

procedure TDMOrdenesSalidas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  Ajustar:=False;
  gGridEditForm:= TFrmOrdenesSalida.Create(Self);
 // adodsMaster.Parameters.ParamByName('TipoDocto').Value:=FTipoDoc;
  gGridEditForm.DataSet := adodsMaster;
  TFrmOrdenesSalida(gGridEditForm).DtSrcOrdenSalItem.DataSet:=ADODtStOrdenSalidaItem;
 (* TfrmCotizaciones(gGridEditForm).TipoDocumento:= FTipoDoc;
  TfrmCotizaciones(gGridEditForm).DataSourceDetail.DataSet:=adodsCotizacionesDetalle;
  TfrmCotizaciones(gGridEditForm).DSAuxiliar.DataSet:=ADODSAuxiliar; //Nov 9/15
  TfrmCotizaciones(gGridEditForm).DSOrdenSalida.DataSet:=ADODtStOrdenSalida; //Nov 18/15
  TfrmCotizaciones(gGridEditForm).DSOrdenSalidaItems.DataSet:=ADODtStOrdenSalidaItem; //Nov 18/15*)
end;

end.
