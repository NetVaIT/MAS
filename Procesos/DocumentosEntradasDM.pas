unit DocumentosEntradasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmDocumentosEntradas = class(T_dmStandar)
    adodsMasterIdDocumentoEntrada: TAutoIncField;
    adodsMasterIdDocumentoEntradaTipo: TIntegerField;
    adodsMasterIdDocumentoEntradaEstatus: TIntegerField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterFecha: TWideStringField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosEntradasForm, DocumentosEntradasDetalleForm;

{$R *.dfm}

procedure TdmDocumentosEntradas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsDocumentosDetalles.CommandText <> EmptyStr then adodsDocumentosDetalles.Open;
  gGridEditForm:= TfrmDocumentosEntradas.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  gFormDetail1:= TfrmDocumentosEntradasDetalle.Create(Self);
  gFormDetail1.DataSet:= adodsDocumentosDetalles;
//  adodsMaster.Parameters.ParamByName('TipoDocto').Value:=FTipoDoc;
//  TfrmCotizaciones(gGridEditForm).TipoDocumento:= FTipoDoc;
//  TfrmCotizaciones(gGridEditForm).DataSourceDetail.DataSet:=adodsCotizacionesDetalle;
//  TfrmCotizaciones(gGridEditForm).DSAuxiliar.DataSet:=ADODSAuxiliar; //Nov 9/15
//  TfrmCotizaciones(gGridEditForm).DSOrdenSalida.DataSet:=ADODtStOrdenSalida; //Nov 18/15
//  TfrmCotizaciones(gGridEditForm).DSOrdenSalidaItems.DataSet:=ADODtStOrdenSalidaItem; //Nov 18/15
end;

procedure TdmDocumentosEntradas.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsDocumentosDetalles.Close;
end;

end.
