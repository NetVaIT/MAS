unit BackorderEntradasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmBackorderEntradas = class(T_dmStandar)
    adodsMasterIdBackorderEntrada: TAutoIncField;
    adodsMasterIdPersona: TIntegerField;
    adodsMasterIdProducto: TIntegerField;
    adodsMasterProvedor: TStringField;
    adodsMasterIdentificador1: TStringField;
    adodsMasterProducto: TStringField;
    adodsMasterOrdenada: TFloatField;
    adodsMasterPendiente: TFloatField;
    dsMaster: TDataSource;
    adodsDetalle: TADODataSet;
    adodsDetalleIdBackorderEntradaDetalle: TAutoIncField;
    adodsDetalleIdBackorderEntrada: TIntegerField;
    adodsDetalleIdDocumentoEntradaDetalle: TIntegerField;
    adodsDetalleIdDocumentoEntradaTipo: TIntegerField;
    adodsDetalleIdProducto: TIntegerField;
    adodsDetalleIdDocumentoEntrada: TAutoIncField;
    adodsDetalleFecha: TDateTimeField;
    adodsDetalleTipo: TStringField;
    adodsDetalleCantidad: TFloatField;
    adodsDetalleIdentificador1: TStringField;
    adodsDetalleProducto: TStringField;
    adodsMasterFacturada: TFloatField;
    adodsMasterTransito: TFloatField;
    adodsMasterEntrada: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses BackorderEntradasForm, BackorderEntradasDetallesForm;

{$R *.dfm}

procedure TdmBackorderEntradas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  adodsDetalle.Open;
  gGridForm:= TfrmBackorderEntradas.Create(Self);
  gGridForm.ReadOnlyGrid:= True;
  gGridForm.DataSet:= adodsMaster;
  gFormDeatil1:= TfrmBackorderEntradasDetalles.Create(Self);
  gFormDeatil1.ReadOnlyGrid:= True;
  gFormDeatil1.DataSet:= adodsDetalle;
end;

end.
