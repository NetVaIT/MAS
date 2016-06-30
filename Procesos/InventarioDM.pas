unit InventarioDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmInventario = class(T_dmStandar)
    adodsMasterIdInventario: TAutoIncField;
    adodsMasterIdAlmacen: TIntegerField;
    adodsMasterIdProducto: TIntegerField;
    adodsMasterExistencia: TFloatField;
    adodsMasterTransito: TFloatField;
    adodsMasterPedidoXSurtir: TFloatField;
    adodsMasterApartado: TFloatField;
    adodsMasterCostoPromedio: TFloatField;
    adodsMasterPrecioVenta: TFloatField;
    adodsMasterVirtual: TFloatField;
    adodsMasterDescripcion: TStringField;
    adodsMasteridentificador1: TStringField;
    adodsMasterPrecioUnitario: TFloatField;
    adodsMasterIdentificador2: TStringField;
    adodsMasterIdentificador3: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmInventario: TdmInventario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses InventarioEdit;

{$R *.dfm}

procedure TdmInventario.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmInventarioedit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
