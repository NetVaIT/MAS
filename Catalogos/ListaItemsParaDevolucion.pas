unit ListaItemsParaDevolucion;

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
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons,Data.Win.ADODB;

type
  TFrmSeleccionItemsDevolucion = class(TForm)
    Panel1: TPanel;
    EdtBuscar: TEdit;
    SpdBtnBuscar: TBitBtn;
    RdGrpSeleccion: TRadioGroup;
    cxGrid: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DataSource: TDataSource;
    tvMasterIdCFDIConcepto: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterIdUnidadMedida: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    tvMasterUnidad: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterNoIdentifica: TcxGridDBColumn;
    tvMasterValorUnitario: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterIdCfdi: TcxGridDBColumn;
    tvMasterFolio: TcxGridDBColumn;
    tvMasterserie: TcxGridDBColumn;
    tvMasterIdCFDIEstatus: TcxGridDBColumn;
    tvMasterIdClienteDomicilio: TcxGridDBColumn;
    tvMasterIdPersonaReceptor: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tvMasterDblClick(Sender: TObject);
    procedure SpdBtnBuscarClick(Sender: TObject);
  private
    fAcepto: Boolean;
    FDataSet: TDataSet;
    fTipoExtraccion: integer;
    function GetIdentificador: string;
    function GetIdProducto: Integer;
    function GetPrecio: Double;
    procedure SetDataSet(const Value: TDataSet);
    function GetCantidad: Double;
    function GetIdCFDIConcepto: Integer;
    function GetFTipoExtraccion: integer;
    function GetIdCFDINotaC: Integer;

    { Private declarations }
  public
    { Public declarations }

    property Acepto:Boolean read fAcepto write fAcepto;  //Jun 27/16
    property IdProducto: Integer read GetIdProducto;
    property Identificador: string read GetIdentificador;
    property Precio: Double read GetPrecio;
    property Cantidad: Double read GetCantidad;
    property DataSet: TDataSet read FDataSet write SetDataSet;
    property AIDCFDIConcepto:Integer read  GetIdCFDIConcepto;
    property AIDCFDINotaC:Integer read  GetIdCFDINotaC;         //Jun 28/16
    Property ATipoExtraccion: integer read GetFTipoExtraccion write fTipoExtraccion;
  end;

var
  FrmSeleccionItemsDevolucion: TFrmSeleccionItemsDevolucion;

implementation

{$R *.dfm}

uses DevolucionesDM;

{ TFrmSeleccionItemsDevolucion }



procedure TFrmSeleccionItemsDevolucion.FormCreate(Sender: TObject);
begin
  FAcepto:=False;
  FTipoExtraccion:=-1;
end;

function TFrmSeleccionItemsDevolucion.GetCantidad: Double;
begin
   Result:= DataSet.FieldByName('Cantidad').AsFloat;
end;

function TFrmSeleccionItemsDevolucion.GetFTipoExtraccion: integer;
begin
  Result := fTipoExtraccion;
end;

function TFrmSeleccionItemsDevolucion.GetIdCFDIConcepto: Integer;
begin
  Result:= DataSet.FieldByName('IDCFDIConcepto').asinteger;
end;

function TFrmSeleccionItemsDevolucion.GetIdCFDINotaC: Integer;
begin
    Result:= DataSet.FieldByName('IdCFDI').AsInteger; //Jun 28/16
end;

function TFrmSeleccionItemsDevolucion.GetIdentificador: string;
begin
  Result:= DataSet.FieldByName('NoIdentifica').AsString;

end;

function TFrmSeleccionItemsDevolucion.GetIdProducto: Integer;
begin
  Result:= DataSet.FieldByName('IdProducto').AsInteger;
end;

function TFrmSeleccionItemsDevolucion.GetPrecio: Double;
begin
  Result:= DataSet.FieldByName('ValorUnitario').AsFloat;
end;


procedure TFrmSeleccionItemsDevolucion.SetDataSet(const Value: TDataSet);
begin
  FDataSet := Value;
end;

procedure TFrmSeleccionItemsDevolucion.SpdBtnBuscarClick(Sender: TObject);
Const TextSQL='Select Co.IdCFDIConcepto, Co.IdProducto, Co.IdUnidadMedida,'
+' Co.Cantidad, Co.Unidad, Co.Descripcion,Co.NoIdentifica,  co.ValorUnitario,'
+' Co.Importe,Ci.IdCfdi, CI.Folio, Ci.serie,Ci.IdCFDIEstatus, Ci.IdClienteDomicilio,'
+' CI.IdPersonaReceptor  from CFDIConceptos Co inner join CFDI CI  '
+' on Co.IdCFDI =CI.IdCFDI ' ;
      TextWHERE=' where CI.IdCFDITipoDocumento=2 and not Exists'
 +'(SElect * from  OrdenesEntradasItems OEI where OEI .IdCfdiConceptoDEV=Co.IdCFDIConcepto)'
 +' and Ci.IdPersonaReceptor=:IdPersona';
var TxtResto:String;
  ValorParam:Integer;
begin
  ValorParam:=TAdoDataset(DataSource.DataSet).Parameters.ParamByName('IdPersona').Value;
  TxtResto:='';
  if edtBuscar.Text<>'' then
    TxtResto:=' and (Co.NoIdentifica Like''%'+edtBuscar.Text+'%'' or Co.Descripcion like''%'+edtBuscar.Text+'%'')' ;

  DataSource.DataSet.Close;
  TAdoDataset(DataSource.DataSet).commandText:= TextSQL+TextWHERE+TxtResto;
  TAdoDataset(DataSource.DataSet).Parameters.ParamByName('IdPersona').Value:= ValorParam;
  DataSource.DataSet.open;

end;

procedure TFrmSeleccionItemsDevolucion.tvMasterDblClick(Sender: TObject);
begin    //Jun 27/16
 if not Datasource.DataSet.eof then
  begin
    Acepto:=True;
    fTipoExtraccion:=RdGrpSeleccion.ItemIndex;
    Close;
  end
  else
  begin
    Acepto:=False;
    Close;
  end;

end;

end.
