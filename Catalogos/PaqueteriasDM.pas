unit PaqueteriasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TDMPaqueterias = class(T_dmStandar)
    adodsMasterIdPaqueteria: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPaqueterias: TDMPaqueterias;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PaqueteriasEdit;

{$R *.dfm}

procedure TDMPaqueterias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmPaqueteriasEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
