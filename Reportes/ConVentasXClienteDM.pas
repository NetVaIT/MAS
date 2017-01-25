unit ConVentasXClienteDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmConVentasXCliente = class(T_dmStandar)
    adodsMasterIdPersonaReceptor: TIntegerField;
    adodsMasterRazonSocial: TStringField;
    adodsMasteridcfditipodocumento: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterSumaTotal: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConVentasXCliente: TdmConVentasXCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses rptVentasXClienteForm;

{$R *.dfm}

procedure TdmConVentasXCliente.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TRptVentasXCliente.Create(Self);    //Ene 24/17
  gGridForm.DataSet:= adodsMaster;
  gGridForm.ReadOnlyGrid:= True;
end;

end.
