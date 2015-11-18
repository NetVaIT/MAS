unit BancosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmBancos = class(T_dmStandar)
    adodsMasterIdBanco: TAutoIncField;
    adodsMasterIdentificador: TStringField;
    adodsMasterNombre: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterSiglas: TStringField;
    adodsPaises: TADODataSet;
    adodsPaisesIdPais: TAutoIncField;
    adodsPaisesDescripcion: TStringField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterPais: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses BancosEdit;

{$R *.dfm}

procedure TdmBancos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmBancosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
