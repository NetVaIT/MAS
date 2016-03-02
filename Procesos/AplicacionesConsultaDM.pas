unit AplicacionesConsultaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmAplicacionesConsulta = class(T_dmStandar)
    adodsMasterFechaAplicacion: TDateTimeField;
    adodsMasterimporte: TFloatField;
    adodsMasterFechaPago: TDateTimeField;
    adodsMasterFolioPago: TIntegerField;
    adodsMasterSeriePago: TStringField;
    adodsMasterFolioFactura: TLargeintField;
    adodsMasterSerieFactura: TStringField;
    adodsMasterFechaFactura: TDateTimeField;
    adodsMasterRazonSocial: TStringField;
    adodsMasterIdentificador: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAplicacionesConsulta: TdmAplicacionesConsulta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AplicacionesConsultaInd;

{$R *.dfm}

procedure TdmAplicacionesConsulta.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TFrmAplicacionesConsultaInd.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  adodsMaster.open;
end;

end.
