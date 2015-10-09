unit ProductosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmProductos = class(T_dmStandar)
    ADODataSet1: TADODataSet;
    adodsMasterIdProducto: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdUnidadMedida: TIntegerField;
    adodsMasterPrecioUnitario: TFloatField;
    adodsMasterIdUbicacion: TIntegerField;
    adodsMasterMaximo: TFloatField;
    adodsMasterMinimo: TFloatField;
    adodsMasterPuntoReorden: TFloatField;
    adodsMasterIdProductoTipo: TIntegerField;
    adodsMasterIdProductoEstatus: TIntegerField;
    adodsMasterIdDocumentos: TIntegerField;
    adodsUnidadMedida: TADODataSet;
    adodsProductoTipo: TADODataSet;
    adodsProductoEstatus: TADODataSet;
    adodsMasterUnidadMedida: TStringField;
    adodsMasterProductoTipo: TStringField;
    adodsMasterProductoEstatus: TStringField;
    adodsProductoIdentificador: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ProductosEdit;

{$R *.dfm}

procedure TdmProductos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmProductosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
end;

end.
