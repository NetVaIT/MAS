unit MonedasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmMonedas = class(T_dmStandar)
    adodsMasterIdMoneda: TAutoIncField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsPaises: TADODataSet;
    adodsPaisesIdPais: TAutoIncField;
    adodsPaisesDescripcion: TStringField;
    adodsMasterPais: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MonedasEdit;

{$R *.dfm}

procedure TdmMonedas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmMonedasEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
