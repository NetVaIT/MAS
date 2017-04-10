unit DocumentosEntradasDetalleAnteriorDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  System.UITypes, Data.DB, Data.Win.ADODB, dxmdaset, dialogs;

resourcestring
  StrSelectInfo = 'Productos pendientes.';

type
  TdmDocumentosEntradasDetalleAnterior = class(T_dmStandar)
    adopSetDocumentosEntradasDetalles: TADOStoredProc;
    adoqryPendientes: TADOQuery;
    dxmdPendientes: TdxMemData;
    dxmdPendientesIdDocumentoEntradaDetalle: TAutoIncField;
    dxmdPendientesIdDocumentoEntrada: TIntegerField;
    dxmdPendientesIdProducto: TIntegerField;
    dxmdPendientesNumero: TIntegerField;
    dxmdPendientesClaveProducto: TStringField;
    dxmdPendientesIdentificadorProveedor: TStringField;
    dxmdPendientesProducto: TStringField;
    dxmdPendientesCantidadPendiente: TFloatField;
    dxmdPendientesPrecio: TFMTBCDField;
    dxmdPendientesCantidad: TIntegerField;
    dxmdPendientesOrden: TIntegerField;
    dxmdPendientesFacturaProveedor: TStringField;
    ADOQrySumaSeleccionados: TADOQuery;
    ADOQrySumaSeleccionadosIdDocumentoEntradaDetalleAnterior: TIntegerField;
    ADOQrySumaSeleccionadosSuma: TFloatField;
    dxmdPendientesseleccionados: TIntegerField;
    dxmdPendientesRestantes: TIntegerField;
    adoqryPendientesIdDocumentoEntradaDetalle: TAutoIncField;
    adoqryPendientesIdDocumentoEntrada: TIntegerField;
    adoqryPendientesIdProducto: TIntegerField;
    adoqryPendientesNumero: TIntegerField;
    adoqryPendientesClaveProducto: TStringField;
    adoqryPendientesIdentificadorProveedor: TStringField;
    adoqryPendientesProducto: TStringField;
    adoqryPendientesCantidadPendiente: TFloatField;
    adoqryPendientesPrecio: TFMTBCDField;
    adoqryPendientesCantidad: TIntegerField;
    adoqryPendientesFacturaProveedor: TStringField;
    adoqryPendientesSeleccionados: TIntegerField;
    adoqryPendientesRestantes: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dxmdPendientesNewRecord(DataSet: TDataSet);
    procedure dxmdPendientesCantidadChange(Sender: TField);
    procedure adoqryPendientesCalcFields(DataSet: TDataSet);
  private
    FIdDocumentoEntrada: Integer;
    FIdPersona: Integer;
    FOrden: Integer;
    { Private declarations }
    procedure SetDetalles;
    procedure SetIdDocumentoEntrada(const Value: Integer);
    procedure SetIdPersona(const Value: Integer);
    procedure CargaPendientes;
    procedure SetOrden(const Value: Integer);
  public
    { Public declarations }
    property IdDocumentoEntrada: Integer read FIdDocumentoEntrada write SetIdDocumentoEntrada;
    property IdPersona: Integer read FIdPersona write SetIdPersona;
    property Orden: Integer read FOrden write SetOrden;
    function Execute: Boolean;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses VerificarForm, DocumentosEntradasDetalleAnteriorForm;

{$R *.dfm}

{ TdmDocumentosEntradasDetalleAnterior }

procedure TdmDocumentosEntradasDetalleAnterior.adoqryPendientesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //Mar 28/17
 // adoqryPendientesrestante.AsInteger:=adoqryPendientesCantidadPendiente.AsInteger- adoqryPendientesSeleccionados.AsInteger;
  ADOQrySumaSeleccionados.Close; //Mar 28/17
  ADOQrySumaSeleccionados.Parameters.ParamByName('IDDocumentoEntrada').Value:=  IdDocumentoEntrada;
  ADOQrySumaSeleccionados.Parameters.ParamByName('IDDocumentoEntradaDetalleAnterior').Value:= adoqryPendientesIdDocumentoEntradaDetalle.Value;
  ADOQrySumaSeleccionados.Open;
  if ADOQrySumaSeleccionados.EOF or ADOQrySumaSeleccionados.fieldbyname('Suma').Isnull then
    adoqryPendientesseleccionados.Value:= 0
  else
    adoqryPendientesseleccionados.Value:= ADOQrySumaSeleccionados.fieldbyname('Suma').AsInteger;

 adoqryPendientesRestantes.Asinteger:= adoqryPendientesCantidadPendiente.AsInteger- adoqryPendientesseleccionados.AsInteger;



end;

procedure TdmDocumentosEntradasDetalleAnterior.CargaPendientes;
begin
//  ADOQrySumaSeleccionados.Close; //Mar 28/17
//  ADOQrySumaSeleccionados.Parameters.ParamByName('IDDocumentoEntrada').Value:=  IdDocumentoEntrada;
//  ADOQrySumaSeleccionados.Open;

  adoqryPendientes.Close;
  adoqryPendientes.Parameters.ParamByName('IdPersona').Value := IdPersona;
  adoqryPendientes.Open;
  dxmdPendientes.Close;
  dxmdPendientes.Open;
  try
    dxmdPendientes.LoadFromDataSet(adoqryPendientes);
  finally
    adoqryPendientes.Close
  end;
end;

procedure TdmDocumentosEntradasDetalleAnterior.DataModuleCreate(
  Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmDocumentosEntradasDetalleAnterior.Create(Self);
  gGridForm.DataSet:= dxmdPendientes;
end;

procedure TdmDocumentosEntradasDetalleAnterior.dxmdPendientesCantidadChange(
  Sender: TField);
begin
  inherited;
  if dxmdPendientesCantidad.AsInteger>dxmdPendientesRestantes.asinteger then    //Mar 28/17
    showMessage('Cantidad mayor que Cantidad Restante');

  if (Sender.OldValue = 0) and (Sender.Value <> 0) then
  begin
    Inc(FOrden);
    dxmdPendientesOrden.Value:= Orden;
  end;
end;

procedure TdmDocumentosEntradasDetalleAnterior.dxmdPendientesNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  dxmdPendientesOrden.Value := 0;
end;

function TdmDocumentosEntradasDetalleAnterior.Execute: Boolean;
var
  frmVerificar: TfrmVerificar;
begin
  Result:= False;
  CargaPendientes;
  frmVerificar := TfrmVerificar.Create(Self);
  try
    frmVerificar.Info:= StrSelectInfo;
    ShowModule(frmVerificar.pnlMaster,'');
    if frmVerificar.ShowModal = mrOk then
    begin
      if dxmdPendientes.state=dsEdit then //ABAN Oct 12/16
         dxmdPendientes.post;

      SetDetalles;
      Result:= True;
    end;
  finally
    frmVerificar.Free;
  end;
end;

procedure TdmDocumentosEntradasDetalleAnterior.SetDetalles;
begin
  dxmdPendientes.SortedField:= 'Orden';
  dxmdPendientes.First;
  while not dxmdPendientes.Eof do
  begin
    if dxmdPendientesCantidad.Value > 0 then
    begin
      adopSetDocumentosEntradasDetalles.Parameters.ParamByName('@IdDocumentoEntrada').Value:= IdDocumentoEntrada;
      adopSetDocumentosEntradasDetalles.Parameters.ParamByName('@IdProducto').Value:= dxmdPendientesIdProducto.Value;
      adopSetDocumentosEntradasDetalles.Parameters.ParamByName('@IdDocumentoEntradaDetalleAnterior').Value:= dxmdPendientesIdDocumentoEntradaDetalle.Value;
      adopSetDocumentosEntradasDetalles.Parameters.ParamByName('@Cantidad').Value:= dxmdPendientesCantidad.Value;
      adopSetDocumentosEntradasDetalles.ExecProc;
    end;
    dxmdPendientes.Next;
  end;
end;

procedure TdmDocumentosEntradasDetalleAnterior.SetIdDocumentoEntrada(
  const Value: Integer);
begin
  FIdDocumentoEntrada := Value;
end;

procedure TdmDocumentosEntradasDetalleAnterior.SetIdPersona(
  const Value: Integer);
begin
  FIdPersona := Value;
end;

procedure TdmDocumentosEntradasDetalleAnterior.SetOrden(const Value: Integer);
begin
  FOrden := Value;
end;

end.
