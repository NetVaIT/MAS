unit KardexMovimientosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmKardexMovimientos = class(T_dmStandar)
    adodsProductos: TADODataSet;
    adodsMasterIdProductoKardex: TAutoIncField;
    adodsMasterIdAlmacen: TIntegerField;
    adodsMasterIdProducto: TIntegerField;
    adodsMasterIdProductoKardexEstatus: TIntegerField;
    adodsMasterIdOrdenEntradaItem: TIntegerField;
    adodsMasterIdOrdenSalidaItem: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterFecha: TDateTimeField;
    adodsMasterMovimiento: TStringField;
    adodsMasterCantidad: TFloatField;
    adodsMasterImporte: TFMTBCDField;
    adodsMasterPrecioUnitario: TFMTBCDField;
    adodsMasterCostoUnitario: TFMTBCDField;
    DSProductos: TDataSource;
    adodsProductosIdProducto: TAutoIncField;
    adodsProductosDescripcion: TStringField;
    adodsProductosIdentificador1: TStringField;
    adodsProductosIdentificador2: TStringField;
    adodsProductosIdentificador3: TStringField;
    adodsMasterProducto: TStringField;
    procedure adodsMasterBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmKardexMovimientos: TdmKardexMovimientos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses KardexMovimientosEdit;

{$R *.dfm}

procedure TdmKardexMovimientos.adodsMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  adodsProductos.Open;
end;

procedure TdmKardexMovimientos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmKardexMovimientosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmKardexMovimientosEdit(gGridEditForm).DSProductos.DataSet:=adodsProductos;
end;

procedure TdmKardexMovimientos.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsProductos.close;
end;

end.
