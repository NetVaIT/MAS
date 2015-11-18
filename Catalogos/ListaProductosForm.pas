unit ListaProductosForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,Data.Win.ADODB;

type
  TFrmListaProductos = class(TForm)
    pnlMaster: TPanel;
    cxGrid: TcxGrid;
    tvMaster: TcxGridDBTableView;
    tvMasterIdentificador1: TcxGridDBColumn;
    tvMasterIdentificador2: TcxGridDBColumn;
    tvMasterIdentificador3: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterPrecioUnitario: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    RdGrpUsoIdentificador: TRadioGroup;
    EdtBuscar: TEdit;
    DataSource: TDataSource;
    SpdBtnBuscar: TBitBtn;
    procedure tvMasterDblClick(Sender: TObject);
    procedure SpdBtnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Identificador:String; //Verificar cual?
    IDProducto:Integer;
    Descripcion:String;
    Precio:Double;
  end;

var
  FrmListaProductos: TFrmListaProductos;

implementation

{$R *.dfm}

uses ProductosDM, CotizacionesDM;

procedure TFrmListaProductos.SpdBtnBuscarClick(Sender: TObject);
var
   idProd:String;
begin
  inherited;
  idProd:=EdtBuscar.Text;
  DataSource.DataSet.Close;
    TAdoDataset(DataSource.DataSet).commandText:='Select * from Productos where (Identificador1 Like '''+IDProd+
                               '%'' or Identificador2 like '''+IDProd+'%'' or Identificador3 Like '''+IDProd+
                               '%'')';
  DataSource.DataSet.open;
  if DataSource.DataSet.Eof then
  begin
    DataSource.DataSet.Close;
    TAdoDataset(DataSource.DataSet).commandText:='Select * from Productos where Descripcion like '''+IDProd+ '%''';
    DataSource.DataSet.open;
  end;
end;

procedure TFrmListaProductos.tvMasterDblClick(Sender: TObject);
var Identi:String;
begin
  Identi:=RdGrpUsoIdentificador.Items[RdGrpUsoIdentificador.ItemIndex];
  Identificador:= Datasource.DataSet.FieldByName(Identi).AsString;
  IDProducto:=Datasource.DataSet.FieldByName('IdProducto').AsInteger;
  Descripcion:=Datasource.DataSet.FieldByName('Descripcion').AsString;
  Precio:=Datasource.DataSet.FieldByName('PrecioUnitario').AsFloat;

  Close;
end;

end.
