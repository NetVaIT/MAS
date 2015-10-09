unit MetodosPagosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmMetodosPagos = class(T_dmStandar)
    adodsMasterIdMetodoPago: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterExigeCuenta: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MetodosPagosEdit;

{$R *.dfm}

procedure TdmMetodosPagos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmMetodosPagosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
