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
    adodsMasterIdDocumentoVentaEstatus: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterFechaRegistro: TWideStringField;
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
    adodsMasterEstatus: TStringField;
    adodsClientesRFC: TStringField;
    adodsCotizacionesDetalleProducto: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses CotizacionesForm;

{$R *.dfm}

procedure TdmCotizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gFormMasterDetail := TfrmCotizaciones.Create(Self);
  gFormMasterDetail.DataSet := adodsMaster;
end;

end.
