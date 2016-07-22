unit rptVentasProyeccionDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, dxmdaset;

const
  PROYECCION_MESES = 6;
type
  TdmrptVentasProyeccion = class(T_dmStandar)
    adodsMasterIdProducto: TAutoIncField;
    adodsMasterIdentificador1: TStringField;
    adodsMasterIdentificador2: TStringField;
    adodsMasterIdentificador3: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterExistencia: TFloatField;
    adodsMasterCantidadAnual: TFloatField;
    adodsMasterCantidadMensual: TFloatField;
    adodsMasterCantidadPromedio: TFloatField;
    adodsMasterCantidadFuturo: TFloatField;
    actExecute: TAction;
    dxmdProyeccion: TdxMemData;
    dxmdProyeccionIdProducto: TIntegerField;
    dxmdProyeccionIdentificador1: TStringField;
    dxmdProyeccionIdentificador2: TStringField;
    dxmdProyeccionIdentificador3: TStringField;
    dxmdProyeccionDescripcion: TStringField;
    dxmdProyeccionMeses: TIntegerField;
    dxmdProyeccionCantidadPromedio: TFloatField;
    dxmdProyeccionExistencia: TFloatField;
    dxmdProyeccionCantidadAnual: TFloatField;
    dxmdProyeccionCantidadMensual: TFloatField;
    dxmdProyeccionCantidadFuturo: TFloatField;
    dxmdProyeccionCantidadComprar: TFloatField;
    dxmdProyeccionCantidadRequerida: TFloatField;
    adodsMasterCantidadBackorder: TFloatField;
    adodsMasterBackorder: TStringField;
    dxmdProyeccionCantidadBackorder: TFloatField;
    dxmdProyeccionBackorder: TStringField;
    dxmdProyeccionIdPersona1: TIntegerField;
    dxmdProyeccionComprar1: TFloatField;
    dxmdProyeccionIdPersona2: TIntegerField;
    dxmdProyeccionComprar2: TFloatField;
    dxmdProyeccionIdPersona3: TIntegerField;
    dxmdProyeccionComprar3: TFloatField;
    adodsPersonas1: TADODataSet;
    adodsPersonas2: TADODataSet;
    adodsPersonas3: TADODataSet;
    dxmdProyeccionProveedor1: TStringField;
    dxmdProyeccionProveedor2: TStringField;
    dxmdProyeccionProveedor3: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dxmdProyeccionCalcFields(DataSet: TDataSet);
    procedure actExecuteExecute(Sender: TObject);
    procedure dxmdProyeccionNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CargaCantidades;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptVentasProyeccionForm;

{$R *.dfm}

procedure TdmrptVentasProyeccion.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmrptVentasProyeccion.Create(Self);
  gGridForm.DataSet:= dxmdProyeccion;
  TfrmrptVentasProyeccion(gGridForm).Meses := PROYECCION_MESES;
  TfrmrptVentasProyeccion(gGridForm).actExecute := actExecute;
  dxmdProyeccion.Open;
  CargaCantidades;
end;

procedure TdmrptVentasProyeccion.dxmdProyeccionCalcFields(DataSet: TDataSet);
begin
  inherited;
  dxmdProyeccionCantidadRequerida.Value := (dxmdProyeccionMeses.Value * dxmdProyeccionCantidadPromedio.Value);
  dxmdProyeccionCantidadComprar.Value := (dxmdProyeccionCantidadRequerida.Value - dxmdProyeccionExistencia.Value - dxmdProyeccionCantidadBackorder.Value);
end;

procedure TdmrptVentasProyeccion.dxmdProyeccionNewRecord(DataSet: TDataSet);
begin
  inherited;
//  dxmdProyeccionExistencia.Value := 0;
//  dxmdProyeccionCantidadAnual.Value := 0;
//  dxmdProyeccionCantidadMensual.Value := 0;
//  dxmdProyeccionCantidadPromedio.Value := 0;
//  dxmdProyeccionCantidadFuturo.Value := 0;
//  dxmdProyeccionCantidadBackorder.Value := 0;
  dxmdProyeccionMeses.Value := PROYECCION_MESES;
end;

procedure TdmrptVentasProyeccion.actExecuteExecute(Sender: TObject);
var
  Meses: Integer;
begin
  inherited;
  Meses := TfrmrptVentasProyeccion(gGridForm).Meses;
  dxmdProyeccion.DisableControls;
  try
    dxmdProyeccion.First;
    while not dxmdProyeccion.Eof do
    begin
      dxmdProyeccion.Edit;
      dxmdProyeccionMeses.Value := Meses;
      dxmdProyeccion.Post;
      dxmdProyeccion.Next;
    end;
  finally
    dxmdProyeccion.EnableControls;
  end;
end;

procedure TdmrptVentasProyeccion.CargaCantidades;
begin
  adodsMaster.Open;
  try
    dxmdProyeccion.LoadFromDataSet(adodsMaster);
  finally
    adodsMaster.Close
  end;
  dxmdProyeccion.First;
//  try
//    while not adodsMaster.Eof do
//    begin
//      dxmdProyeccion.Insert;
//      dxmdProyeccionIdProducto.Value := adodsMasterIdProducto.Value;
//      dxmdProyeccionIdentificador1.Value := adodsMasterIdentificador1.Value;
//      dxmdProyeccionIdentificador2.Value := adodsMasterIdentificador2.Value;
//      dxmdProyeccionIdentificador3.Value := adodsMasterIdentificador3.Value;
//      dxmdProyeccionDescripcion.Value := adodsMasterDescripcion.Value;
//      dxmdProyeccionExistencia.Value := adodsMasterExistencia.Value;
//      dxmdProyeccionCantidadAnual.Value := adodsMasterCantidadAnual.Value;
//      dxmdProyeccionCantidadMensual.Value := adodsMasterCantidadMensual.Value;
//      dxmdProyeccionCantidadPromedio.Value := adodsMasterCantidadPromedio.Value;
//      dxmdProyeccionCantidadFuturo.Value := adodsMasterCantidadFuturo.Value;
////      dxmdProyeccionBackorder.Value := 0;
//      dxmdProyeccion.Post;
//      adodsMaster.Next;
//    end;
//  finally
//    adodsMaster.Close
//  end;
end;

end.
