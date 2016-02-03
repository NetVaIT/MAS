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
  TfrmListaProductos = class(TForm)
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
    FDataSet: TDataSet;
    FactBuscar: TBasicAction;
    procedure SetDataSet(const Value: TDataSet);
    function GetIdentificador: string;
    function GetIdProducto: Integer;
    function GetPrecio: Double;
    function GetClave: string;
    procedure SetClave(const Value: string);
    procedure SetactBuscar(const Value: TBasicAction);
  public
    { Public declarations }
//    Identificador:String; //Verificar cual?
    Descripcion:String;
    property DataSet: TDataSet read FDataSet write SetDataSet;
    property Clave: string read GetClave write SetClave;
    property IdProducto: Integer read GetIdProducto;
    property Identificador: string read GetIdentificador;
    property Precio: Double read GetPrecio;
    property actBuscar: TBasicAction read FactBuscar write SetactBuscar;
  end;

implementation

{$R *.dfm}

uses ProductosDM, CotizacionesDM;

function TfrmListaProductos.GetClave: string;
begin
  Result:= EdtBuscar.Text;
end;

function TfrmListaProductos.GetIdentificador: string;
var
  Identi: string;
begin
  Identi:=RdGrpUsoIdentificador.Items[RdGrpUsoIdentificador.ItemIndex];
  Result:= DataSet.FieldByName(Identi).AsString;
end;

function TfrmListaProductos.GetIdProducto: Integer;
begin
  Result:= DataSet.FieldByName('IdProducto').AsInteger;
end;

function TfrmListaProductos.GetPrecio: Double;
begin
  Result:= DataSet.FieldByName('PrecioUnitario').AsFloat;
end;

procedure TfrmListaProductos.SetactBuscar(const Value: TBasicAction);
begin
  FactBuscar := Value;
  SpdBtnBuscar.Action:= Value;
end;

procedure TfrmListaProductos.SetClave(const Value: string);
begin
  EdtBuscar.Text:= Value;
end;

procedure TfrmListaProductos.SetDataSet(const Value: TDataSet);
begin
  FDataSet := Value;
  DataSource.DataSet:= Value;
end;

procedure TfrmListaProductos.SpdBtnBuscarClick(Sender: TObject);
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

procedure TfrmListaProductos.tvMasterDblClick(Sender: TObject);
//var Identi:String;
begin
//  Identi:=RdGrpUsoIdentificador.Items[RdGrpUsoIdentificador.ItemIndex];
//  Identificador:= Datasource.DataSet.FieldByName(Identi).AsString;
//  IDProducto:=Datasource.DataSet.FieldByName('IdProducto').AsInteger;
//  Descripcion:=Datasource.DataSet.FieldByName('Descripcion').AsString;
//  Precio:=Datasource.DataSet.FieldByName('PrecioUnitario').AsFloat;
  Close;
end;

end.
