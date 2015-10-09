unit UnidadMedidaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmUnidadMedida = class(T_dmStandar)
    adodsMasterIdUnidadMedida: TIntegerField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnidadMedidaEdit;

{$R *.dfm}

procedure TdmUnidadMedida.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmUnidadMedidaEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
