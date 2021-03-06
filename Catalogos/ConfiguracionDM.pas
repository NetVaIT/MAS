unit ConfiguracionDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmConfiguracion = class(T_dmStandar)
    adoqGetIdPeriodoActual: TADOQuery;
    adoqGetIdPeriodoActualValor: TIntegerField;
    adoqGetRutaBaseFacturas: TADOQuery;
    adoqGetRutaBaseFacturasValor: TStringField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsPaises: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsMasterPais: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterRutaBaseFacturas: TStringField;
    adoqGetRutaBasePagos: TADOQuery;
    adoqGetRutaBasePagosValor: TStringField;
    adoqGetDiaPagoActual: TADOQuery;
    adoqGetDiaPagoActualValor: TDateTimeField;
    adodsMasterCorreoEnvio: TStringField;
    adodsMasterHostEnvio: TStringField;
    adodsMasterPuertoEnvio: TStringField;
    adodsMasterUsuarioCorreo: TStringField;
    adodsMasterPasswordCorreo: TStringField;
    adodsMasterTipoSeguridad: TStringField;
    adodsMasterMetodoAutenticacion: TStringField;
    adodsMasterUltimoFolioPago: TIntegerField;
    adodsMasterUltimaSeriePago: TStringField;
    adodsMasterIdEspacioAduana: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function GetIdPeridoActual: Integer;
    function GetRutaFactura: string;
    function GetRutaPago: string;
    function GetDiaPagoActual: TDateTime;
    function GetIdMoneda: Integer;
    function GetEspacioAduana: Integer;
  public
    { Public declarations }
    property IdMoneda: Integer read GetIdMoneda;
    property IdPeridoActual: Integer read GetIdPeridoActual;
    property DiaPagoActual: TDateTime read GetDiaPagoActual;
    property RutaFacturas: string read GetRutaFactura;
    property RutaPagos: string read GetRutaPago;

    property IDEspacioAduana: Integer read GetEspacioAduana;    // Oct 3/16  IdEspacioAduana
  end;

var
  dmConfiguracion: TdmConfiguracion;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ConfiguracionesForm;

{$R *.dfm}

{ TdmConfiguracion }

procedure TdmConfiguracion.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmConfiguraciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

function TdmConfiguracion.GetDiaPagoActual: TDateTime;
begin
  adoqGetDiaPagoActual.Close;
  try
    adoqGetDiaPagoActual.Open;
    Result := adoqGetDiaPagoActualValor.Value;
  finally
    adoqGetDiaPagoActual.Close;
  end;
end;

function TdmConfiguracion.GetEspacioAduana: Integer;
begin                                      //Oct 3/16
  Result:= adodsMasterIdEspacioAduana.Value;
end;

function TdmConfiguracion.GetIdMoneda: Integer;
begin
  Result:= adodsMasterIdMoneda.Value;
end;

function TdmConfiguracion.GetIdPeridoActual: Integer;
begin
  adoqGetIdPeriodoActual.Close;
  try
    adoqGetIdPeriodoActual.Open;
    Result := adoqGetIdPeriodoActualValor.Value;
  finally
    adoqGetIdPeriodoActual.Close;
  end;
end;

function TdmConfiguracion.GetRutaFactura: string;
begin
  adoqGetRutaBaseFacturas.Close;
  try
    adoqGetRutaBaseFacturas.Open;
    Result := adoqGetRutaBaseFacturasValor.AsString;
  finally
    adoqGetRutaBaseFacturas.Close;
  end;
end;

function TdmConfiguracion.GetRutaPago: string;
begin
  adoqGetRutaBasePagos.Close;
  try
    adoqGetRutaBasePagos.Open;
    Result := adoqGetRutaBasePagosValor.AsString;
  finally
    adoqGetRutaBasePagos.Close;
  end;
end;

end.
