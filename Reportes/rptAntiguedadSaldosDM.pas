unit rptAntiguedadSaldosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmRptAntiguedadSaldos = class(T_dmStandar)
    adodsMasterTipoComp: TStringField;
    adodsMasterSerie: TStringField;
    adodsMasterFolio: TLargeintField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterSubTotal: TFloatField;
    adodsMasterTotal: TFloatField;
    adodsMasterTotalImpuestoRetenido: TFloatField;
    adodsMasterTotalImpuestoTrasladado: TFloatField;
    adodsMasterSaldoDocumento: TFloatField;
    adodsMasterUUID_TB: TStringField;
    adodsMasterCliente: TStringField;
    adodsMasterDias: TIntegerField;
    adodsMasterVigentes: TFloatField;
    adodsMasterVencidosa30días: TFloatField;
    adodsMasterVencidosa60días: TFloatField;
    adodsMasterVencidosa90días: TFloatField;
    adodsMasterVencidosmásde90días: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRptAntiguedadSaldos: TdmRptAntiguedadSaldos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptAntiguedadSaldosForm;

{$R *.dfm}

procedure TdmRptAntiguedadSaldos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmrptantiguedadSaldos.Create(Self);
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
end;

end.
