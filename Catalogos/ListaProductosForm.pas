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
    ChckBxBuscaXAp: TCheckBox;
    ChckBxMostrarAplicacion: TCheckBox;
    tvMasterAplicacion: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    procedure tvMasterDblClick(Sender: TObject);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FDataSet: TDataSet;
    FactBuscar: TBasicAction;
    fAcepto: Boolean;
    procedure SetDataSet(const Value: TDataSet);
    function GetIdentificador: string;
    function GetIdProducto: Integer;
    function GetPrecio: Double;
    function GetClave: string;
    procedure SetClave(const Value: string);
    procedure SetactBuscar(const Value: TBasicAction);
  public
    { Public declarations }
//    Identificador:String;
    Descripcion:String;
    property DataSet: TDataSet read FDataSet write SetDataSet;
    property Clave: string read GetClave write SetClave;
    property IdProducto: Integer read GetIdProducto;
    property Identificador: string read GetIdentificador;
    property Precio: Double read GetPrecio;
    property actBuscar: TBasicAction read FactBuscar write SetactBuscar;
    property Acepto:Boolean read fAcepto write fAcepto;
  end;

implementation

{$R *.dfm}

uses ProductosDM, CotizacionesDM;

procedure TfrmListaProductos.FormCreate(Sender: TObject);
begin
  FAcepto:=False;
end;

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
var        //May 11/16
   idProd, ParteAp:String;
begin
  inherited;
  idProd:=EdtBuscar.Text;
  if not ChckBxMostrarAplicacion.Checked then  //May 11/16
    ParteAp:=  ', '' as Aplicacion, '' as IdentificadorAplica '
  else
    ParteAp:=',PA.Aplicacion, PA.Identificador ';

  if ChckBxBuscaXAp.Checked then
  begin
    DataSource.DataSet.Close;                                   //May 11/16
    TAdoDataset(DataSource.DataSet).commandText:='Select P.*, PA.Aplicacion, PA.Identificador IdentificadorAplica from Productos P '+
                                                 ' inner join ProductosAplicaciones PA on (P.IdProducto=PA.IdProducto'+
                                                  ' and  PA.Aplicacion like''%'+IDProd +'%'') ';
   DataSource.DataSet.open;
  end
  else  //Sin filtro por aplicacion
  begin

    DataSource.DataSet.Close;                                   //May 11/16
     if not ChckBxMostrarAplicacion.Checked then
         TAdoDataset(DataSource.DataSet).commandText:='Select * '+ParteAp+ 'from Productos where (Identificador1 Like '''+IDProd+
                                 '%'' or Identificador2 like '''+IDProd+'%'' or Identificador3 Like '''+IDProd+
                                 '%'')'
     else
     begin
       TAdoDataset(DataSource.DataSet).commandText:='Select P.* '+ParteAp+ 'from Productos P '+
                                          ' left join ProductosAplicaciones PA on (P.IdProducto=PA.IdProducto)  '+
                                          ' where(Identificador1 Like '''+IDProd+'%'' or Identificador2 like '''+IDProd+
                                          '%'' or Identificador3 Like '''+IDProd+'%'')';
     end;
    DataSource.DataSet.open;
    if DataSource.DataSet.Eof then
    begin
      DataSource.DataSet.Close;
      if not ChckBxMostrarAplicacion.Checked then
         TAdoDataset(DataSource.DataSet).commandText:='Select P.* '+ParteAp+' from Productos P where P.Descripcion like ''%'+IDProd+ '%'''
      else
         TAdoDataset(DataSource.DataSet).commandText:='Select P.* '+ParteAp+' from Productos P'+
           ' left join ProductosAplicaciones PA on P.IdProducto=PA.IdProducto' +
           ' where P.Descripcion like ''%'+IDProd+ '%''';
      DataSource.DataSet.open;
    end;
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
  Acepto:=True;
  Close;
end;

end.
