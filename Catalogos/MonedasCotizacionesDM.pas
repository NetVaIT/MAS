unit MonedasCotizacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmMonedasCotizaciones = class(T_dmStandar)
    adodsMasterIdMonedaCotizacion: TAutoIncField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterImporte: TFMTBCDField;
    adodsMonedas: TADODataSet;
    adodsMonedasIdMoneda: TAutoIncField;
    adodsMonedasDescripcion: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterFecha: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MonedasCotizacionesEdit;

{$R *.dfm}

procedure TdmMonedasCotizaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmMonedasCotizacionesEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
