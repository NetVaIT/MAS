unit OrdenesSalidasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOrdenesSalidas: TDMOrdenesSalidas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
