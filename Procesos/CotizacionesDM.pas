unit CotizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCotizaciones = class(T_dmStandar)
    adodsCotizacionesDetalle: TADODataSet;
    adodsMasterIdCotizacion: TIntegerField;
    adodsMasterFechaCotizacion: TWideStringField;
    adodsMasterIdCotizacionEstatus: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdUsuario: TIntegerField;
    adodsMasterVigenciaCotizacion: TWideStringField;
    adodsMasterObservaciones: TStringField;
    adodsMasterIVA: TFloatField;
    adodsMasterSubTotal: TFloatField;
    adodsMasterTotal: TFloatField;
    adodsCotizacionesDetalleIdCotizacionDetalle: TIntegerField;
    adodsCotizacionesDetalleIdCotizacion: TIntegerField;
    adodsCotizacionesDetalleCantidad: TIntegerField;
    adodsCotizacionesDetalleIdProducto: TIntegerField;
    adodsCotizacionesDetalleClaveProducto: TStringField;
    adodsCotizacionesDetallePrecioUnitario: TFloatField;
    adodsCotizacionesDetalleImporte: TFloatField;
    adodsUsuario: TADODataSet;
    adodsProductos: TADODataSet;
    adodsCotizacionesDetalleProducto: TStringField;
    adodsClientes: TADODataSet;
    adodsCotizacionEstatus: TADODataSet;
    adodsMoneda: TADODataSet;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterCliente: TStringField;
    adodsMasterCotizacionEstatus: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterUsuario: TStringField;
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
