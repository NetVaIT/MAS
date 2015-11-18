unit CotizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCotizaciones = class(T_dmStandar)
    adodsCotizacionesDetalle: TADODataSet;
    adodsUsuario: TADODataSet;
    adodsProductos: TADODataSet;
    adodsClientes: TADODataSet;
    adodsCotizacionEstatus: TADODataSet;
    adodsMoneda: TADODataSet;
    adodsMasterIdDocumentoSalida: TAutoIncField;
    adodsMasterIdTipoDocumentoSalida: TIntegerField;
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
    adodsClientesCalle: TStringField;
    adodsClientesNoExterior: TStringField;
    adodsClientesColonia: TStringField;
    adodsClientesMunicipio: TStringField;
    adodsClientesEstado: TStringField;
    adodsCotizacionEstatusIdentificador: TStringField;
    adodsCotizacionEstatusIdDocumentoSalidaEstatus: TAutoIncField;
    adodsCotizacionEstatusDescripcion: TStringField;
    adodsMasterIdDocumentoSalidaEstatus: TIntegerField;
    adodsMasterEstatus: TStringField;
    ADOdsTipoDocumento: TADODataSet;
    ADOdsTipoDocumentoIdDocumentoSalidaTipo: TAutoIncField;
    ADOdsTipoDocumentoIdentificador: TStringField;
    ADOdsTipoDocumentoDescripcion: TStringField;
    adodsMasterTipoDocumento: TStringField;
    adodsMasterFechaRegistro: TDateTimeField;
    ADODSAuxiliar: TADODataSet;
    DSMaster: TDataSource;
    adodsClientesIdentificador: TIntegerField;
    adodsCotizacionesDetalleExistenciaActual: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterNewRecord(DataSet: TDataSet);
    procedure adodsCotizacionesDetalleClaveProductoChange(Sender: TField);
    procedure adodsCotizacionesDetalleNewRecord(DataSet: TDataSet);
    procedure adodsCotizacionesDetalleCantidadChange(Sender: TField);
    procedure adodsCotizacionesDetalleAfterPost(DataSet: TDataSet);
  private
    FTipoDoc: Integer;
    function EncuentraProd(IdProd: String; var ValUni: Double;
      var ID:Integer): String;
    function CalcularTotales(IDDoc:Integer;Campoid,CampoSum,TablaO:String;PorIVA:Double;var AMontoIva,ASubtotal,ATotal:Double):Boolean;
    procedure SetTipoDoc(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    Property TipoDocumento:Integer read FTipoDoc write SetTipoDoc;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CotizacionesForm;

{$R *.dfm}

procedure TdmCotizaciones.adodsCotizacionesDetalleAfterPost(DataSet: TDataSet);
const PIVA=0.16;
var Total,MontoIVA,SubTotal:Double;
begin
  inherited;
  if CalcularTotales(dataset.fieldbyname('IdDocumentoSalida').asInteger,'IdDocumentoSalida','Importe',
                     'DocumentosSalidasDetalles',PIVA,MontoIVA,SubTotal,Total) then
  begin
    ADodsMaster.edit;
    ADodsMaster.FieldByName('SubTotal').AsFloat:=  SubTotal;
    ADodsMaster.FieldByName('IVA').AsFloat:=  MontoIva;
    ADodsMaster.FieldByName('Total').AsFloat:=  Total;
    ADodsMaster.Post;
  end;
end;

procedure TdmCotizaciones.adodsCotizacionesDetalleCantidadChange(
  Sender: TField);
begin
  inherited;
  if adodsCotizacionesDetalle.State in [dsEdit,dsInsert] then
  begin
    adodsCotizacionesDetalle.FieldByName('cantidadpendiente').AsFloat:=adodsCotizacionesDetalle.FieldByName('cantidad').AsFloat;
     adodsCotizacionesDetalle.FieldByName('Importe').AsFloat:=adodsCotizacionesDetalle.FieldByName('PrecioUnitario').AsFloat* adodsCotizacionesDetalle.FieldByName('CAntidad').AsFloat;
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
end;

procedure TdmCotizaciones.adodsMasterNewRecord(DataSet: TDataSet);
begin  //Nov 6/15
  inherited;
  adodsMaster.fieldbyname('FechaRegistro').AsDateTime:=Now;
  adodsMaster.fieldbyname('VigenciaDias').AsInteger:=30; //Cambiar a parámetro del sistema
  adodsMaster.fieldbyname('IDMoneda').AsInteger:=106; //DEbe ser parámetro
  adodsMaster.fieldbyname('IDUsuario').AsInteger:= 1;
  adodsMaster.fieldbyname('IDTipoDocumentoSalida').AsInteger:= 1;
  adodsMaster.fieldbyname('IDDocumentoSalidaEstatus').AsInteger:= 1;
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


end;

end.
