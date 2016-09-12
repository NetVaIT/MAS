unit DocumentosEntradasDetalleAnteriorDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  System.UITypes, Data.DB, Data.Win.ADODB, dxmdaset;

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
    procedure DataModuleCreate(Sender: TObject);
  private
    FIdDocumentoEntrada: Integer;
    FIdPersona: Integer;
    { Private declarations }
    procedure SetDetalles;
    procedure SetIdDocumentoEntrada(const Value: Integer);
    procedure SetIdPersona(const Value: Integer);
    procedure CargaPendientes;
  public
    { Public declarations }
    property IdDocumentoEntrada: Integer read FIdDocumentoEntrada write SetIdDocumentoEntrada;
    property IdPersona: Integer read FIdPersona write SetIdPersona;
    function Execute: Boolean;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses VerificarForm, DocumentosEntradasDetalleAnteriorForm;

{$R *.dfm}

{ TdmDocumentosEntradasDetalleAnterior }

procedure TdmDocumentosEntradasDetalleAnterior.CargaPendientes;
begin
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
      SetDetalles;
      Result:= True;
    end;
  finally
    frmVerificar.Free;
  end;
end;

procedure TdmDocumentosEntradasDetalleAnterior.SetDetalles;
begin
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

end.
