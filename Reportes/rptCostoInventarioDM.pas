unit rptCostoInventarioDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TDMrptCostoInventario = class(T_dmStandar)
    adodsPeriodo: TADODataSet;
    adodsPeriodoIdPeriodo: TAutoIncField;
    adodsPeriodoDescripcion: TStringField;
    adodsPeriodoMes: TIntegerField;
    adodsPeriodoAnio: TIntegerField;
    adodsMasterIdentificador1: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterExistencia: TFloatField;
    adodsMastercosto: TFloatField;
    adodsMasterImporte: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMrptCostoInventario: TDMrptCostoInventario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptCostoInventarioForm;

{$R *.dfm}

procedure TDMrptCostoInventario.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TrptCostoInventario.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
end;

end.
