unit ProductosXEspacioDm;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, dxmdaset, Vcl.Dialogs, System.UITypes;

const
  IdAlmacenPrincipal = 1;

resourcestring
  strAllowChange = '¿Desea cambiar la ubicación del producto?';
  strAviableSpace = 'Debe asignar algun espacio.';

type
  TdmProductosXEspacio = class(T_dmStandar)
    adodsMasterIdProductoXEspacio: TAutoIncField;
    adodsMasterIdAlmacen: TIntegerField;
    adodsMasterIdProducto: TIntegerField;
    adodsMasterIdEspacio: TIntegerField;
    adodsMasterIdCategoria: TIntegerField;
    adodsMasterAlmacen: TStringField;
    adodsMasterIdentificador1: TStringField;
    adodsMasterIdentificador2: TStringField;
    adodsMasterIdentificador3: TStringField;
    adodsMasterProducto: TStringField;
    adodsMasterEspacio: TStringField;
    adodsMasterCantidad: TFloatField;
    adodsAlmacenes: TADODataSet;
    adodsEspacios: TADODataSet;
    dsAlamcenes: TDataSource;
    mdCambio: TdxMemData;
    mdCambioIdAlmacen: TIntegerField;
    mdCambioIdEspacio: TIntegerField;
    mdCambioAlamacen: TStringField;
    mdCambioEspacio: TStringField;
    actCambiar: TAction;
    adospSetProductosXEspacio: TADOStoredProc;
    mdCambioCantidad: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCambiarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ProductosXEspacioForm, _Utils;

{$R *.dfm}

procedure TdmProductosXEspacio.actCambiarExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg(strAllowChange, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if (not mdCambioIdAlmacen.IsNull) and (not mdCambioIdEspacio.IsNull) then
    begin
      adospSetProductosXEspacio.Parameters.ParamByName('@IdProductoXEspacioO').Value:= adodsMasterIdProductoXEspacio.Value;
      adospSetProductosXEspacio.Parameters.ParamByName('@IdEspacioD').Value:= mdCambioIdEspacio.Value;
      adospSetProductosXEspacio.Parameters.ParamByName('@CantidadD').Value:= mdCambioCantidad.Value;
      adospSetProductosXEspacio.ExecProc;
      RefreshADODS(adodsMaster, adodsMasterIdProductoXEspacio);
      mdCambioIdEspacio.Clear;
      mdCambioCantidad.Value:= 0;
    end
    else
      MessageDlg(strAviableSpace, mtWarning, [mbOK], 0);
  end;
end;

procedure TdmProductosXEspacio.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmProductosXEspacio.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmProductosXEspacio(gGridEditForm).Cambio:= mdCambio;
  TfrmProductosXEspacio(gGridEditForm).actCambiar:= actCambiar;
  //
  mdCambio.Open;
  mdCambio.Insert;
  mdCambioIdAlmacen.Value := IdAlmacenPrincipal;
  mdCambioCantidad.Value:= 0;
end;

end.
