unit OrdenesEntregasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmOrdenesEntregas = class(T_dmStandar)
    adodsMasterIdInfoEntrega: TAutoIncField;
    adodsMasterIdCFDI: TLargeintField;
    adodsMasterIDPersonaCliente: TIntegerField;
    adodsMasterIDPersonaDomicilio: TIntegerField;
    adodsMasterIDResponsableEntrega: TIntegerField;
    adodsMasterFechaProgramadaEnt: TDateTimeField;
    adodsMasterFechaRealEnt: TDateTimeField;
    adodsMasterCondicionEntrega: TStringField;
    adodsMasterObservaciones: TStringField;
    adodsMasterEstatusEntrega: TStringField;
    adodsMasterIdTelefono: TIntegerField;
    adodsMasterIdDocumentoGuia: TIntegerField;
    adodsMasterContenido: TStringField;
    adodsMasterConducto: TStringField;
    adodsMasterServicio: TStringField;
    adodsMasterPagoFlete: TBooleanField;
    adodsMasterValor: TFloatField;
    adodsMasterAsegurado: TBooleanField;
    adodsMasterCantidadCajas: TIntegerField;
    adodsMasterIdPersonaEmpaca: TIntegerField;
    adodsMasterFechaIniEmpaque: TDateTimeField;
    adodsMasterFechaFinEmpaque: TDateTimeField;
    adodsMasterIdEstatusOrdenEntrega: TIntegerField;
    DSInfoEnviodetalle: TDataSource;
    AdoDtStInfoEntregaDetalle: TADODataSet;
    AdoDtStInfoEntregaDetalleIdInformacionentregaDetalle: TAutoIncField;
    AdoDtStInfoEntregaDetalleIdInfoEntrega: TIntegerField;
    AdoDtStInfoEntregaDetalleIdOrdenSalida: TIntegerField;
    ADODtStOrdensalida: TADODataSet;
    ADODtStOrdensalidaidOrdenSalida: TAutoIncField;
    ADODtStOrdensalidaIdDocumentoSalida: TIntegerField;
    ADODtStOrdensalidaIdOrdenEstatus: TIntegerField;
    ADODtStOrdensalidaFechaRegistro: TDateTimeField;
    ADODtStOrdensalidaTotal: TFMTBCDField;
    ADODtStOrdensalidaAcumula: TBooleanField;
    ADODtStOrdensalidaSubtotal: TFMTBCDField;
    ADODtStOrdensalidaIVA: TFMTBCDField;
    ADODtStOrdensalidaIDPersonaDomicilio: TIntegerField;
    ADODtStDatosDocumentoSalida: TADODataSet;
    ADODtStDatosDocumentoSalidaIdPersona: TIntegerField;
    ADODtStDatosDocumentoSalidaIDDocumentoSalida: TAutoIncField;
    ADODtStDatosDocumentoSalidaRazonSocial: TStringField;
    ADODtStDatosDocumentoSalidaIdPaqueteria: TIntegerField;
    ADODtStDatosDocumentoSalidaServicio: TStringField;
    ADODtStDatosDocumentoSalidaIdDomicilioCliente: TIntegerField;
    ADODtStDatosDocumentoSalidaIDDomicilio: TIntegerField;
    DSDatosDocSalida: TDataSource;
    ADODtStTelefonos: TADODataSet;
    ADODtStTelefonosTelefono: TStringField;
    ADODtStTelefonosIdTelefono: TAutoIncField;
    ADODtStTelefonosIdPersona: TIntegerField;
    ADODtStTelefonosIdTelefonoTipo: TIntegerField;
    ADODtStTelefonosIdDomicilio: TIntegerField;
    ADODtStTelefonosLada: TStringField;
    ADODtStTelefonosPredeterminado: TBooleanField;
    ADODtStTelefonosTeleconLada: TStringField;
    DSMaster: TDataSource;
    DSOrdenSalida: TDataSource;
    ADODtStOrdenSalidaItem: TADODataSet;
    ADODtStOrdenSalidaItemIdOrdenSalidaItem: TAutoIncField;
    ADODtStOrdenSalidaItemIdOrdenSalida: TIntegerField;
    ADODtStOrdenSalidaItemIdDocumentoSalidaDetalle: TIntegerField;
    ADODtStOrdenSalidaItemIdProducto: TIntegerField;
    ADODtStOrdenSalidaItemCantidadDespachada: TFloatField;
    ADODtStOrdenSalidaItemCantidadSolicitada: TFloatField;
    ADODtStOrdenSalidaItemPrecio: TFMTBCDField;
    ADODtStOrdenSalidaItemImporte: TFMTBCDField;
    ADODtStOrdenSalidaItemObservaciones: TStringField;
    ADODtStOrdenSalidaItemProducto: TStringField;
    ADODtStOrdenSalidaItemClaveProducto: TStringField;
    ADODtStOrdenSalidaItemIdUnidadMedida: TIntegerField;
    adodsDocumento: TADODataSet;
    adodsDocumentoIdDocumento: TAutoIncField;
    adodsDocumentoNombreArchivo: TStringField;
    adodsMasterDocGuia: TStringField;
    ADODtStPaqueterias: TADODataSet;
    ADODtStPaqueteriasIdPaqueteria: TAutoIncField;
    ADODtStPaqueteriasIdentificador: TStringField;
    ADODtStPaqueteriasDescripcion: TStringField;
    adodsMasterPaqueteria: TStringField;
    adodsProductos: TADODataSet;
    adodsMasterTelefonocompleto: TStringField;
    ADODtStDatosDocumentoSalidaIdentificadorCte: TIntegerField;
    ADODtStOrdensalidaIDInfoentrega: TIntegerField;
    adodsMasterCliente: TStringField;
    procedure ADODtStTelefonosCalcFields(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmOrdenesEntregas: TdmOrdenesEntregas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses OrdenesEntregasEdit;

{$R *.dfm}

procedure TdmOrdenesEntregas.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  AdoDtStInfoEntregaDetalle.Open;
  ADODtStOrdensalida.Open;
  ADODtStOrdensalidaItem.Open;
  ADODtStTelefonos.Open;
  ADODtStDatosDocumentoSalida.Open;
//  ADODtStDatosDocumentoSalida.Open;

end;

procedure TdmOrdenesEntregas.ADODtStTelefonosCalcFields(DataSet: TDataSet);
begin
  inherited;
  dataset.FieldByName('TeleconLada').AsString:=DataSet.FieldByName('Lada').AsString +'-'+ Dataset.FieldByName('Telefono').AsString;//May 27/16
end;

procedure TdmOrdenesEntregas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmOrdenesEntregasEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
