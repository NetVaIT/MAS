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
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,Data.Win.ADODB,
  cxPCdxBarPopupMenu, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Imaging.jpeg,
  cxPC, shellapi;

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
    BtBtnFotosNotasyEspecificacion: TBitBtn;
    cxPgCntrlEspecifica: TcxPageControl;
    cxTbShtFotosYDocs: TcxTabSheet;
    PnlFotos: TPanel;
    ImgFoto: TImage;
    Label9: TLabel;
    ImgVacio: TImage;
    Label11: TLabel;
    DBText1: TDBText;
    SpdBtnVerArchivo: TSpeedButton;
    DBNavigatorFotos: TDBNavigator;
    cxTbShtEspecifica: TcxTabSheet;
    DBGrid1: TDBGrid;
    BtBtnCerrar: TBitBtn;
    DBText2: TDBText;
    DSDocumento: TDataSource;
    datasourceFotos: TDataSource;
    dsEspecificaciones: TDataSource;
    BitBtn1: TBitBtn;
    LblSinfotosDoctos: TLabel;
    procedure tvMasterDblClick(Sender: TObject);
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtBtnFotosNotasyEspecificacionClick(Sender: TObject);
    procedure BtBtnCerrarClick(Sender: TObject);
    procedure DBNavigatorFotosClick(Sender: TObject; Button: TNavigateBtn);
    procedure SpdBtnVerArchivoClick(Sender: TObject);
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

procedure TfrmListaProductos.BtBtnCerrarClick(Sender: TObject);
begin
  cxPgCntrlEspecifica.Visible:=False;
end;

procedure TfrmListaProductos.BtBtnFotosNotasyEspecificacionClick(
  Sender: TObject);
begin
  dsEspecificaciones.DataSet.Close;
  TADODataSet(dsEspecificaciones.DataSet).Parameters.ParamByName('IdProducto').Value:=idProducto;
  dsEspecificaciones.DataSet.Open;

  datasourceFotos.DataSet.Close;
  TADODataSet(datasourceFotos.DataSet).Parameters.ParamByName('IdProducto').Value:=idProducto;
  datasourceFotos.DataSet.Open;

  LblSinfotosDoctos.Visible:= datasourceFotos.DataSet.Eof;

  if datasourceFotos.DataSet.Eof and dsEspecificaciones.DataSet.Eof then   //Dic 17/16
  begin
    Showmessage('No hay información disponible para este producto');
  end
  else
    cxPgCntrlEspecifica.Visible:=True;

end;

procedure TfrmListaProductos.DBNavigatorFotosClick(Sender: TObject;
  Button: TNavigateBtn);      //Dic 2/16 Copiado desde edicionprod
var
  NombreA:  TFileName;
begin
  inherited;
  if fileExists( dsDocumento.DataSet.FieldByName('NombreArchivo').AsString) then
  begin                  //DataSourceFotos .
    NombreA:=dsDocumento.DataSet.FieldByName('NombreArchivo').AsString;
    SpdBtnVerArchivo.Visible:= (upperCase(ExtractFileExt(NombreA))='.PDF') or (upperCase(ExtractFileExt(NombreA))='.DOC') or (upperCase(ExtractFileExt(NombreA))='.DOCX'); //Feb 3/16
    try
      ImgFoto.Picture.LoadFromFile(NombreA);
    Except
      ImgFoto.Picture:=ImgVacio.Picture;
    end;
  end;
end;

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
     if not ChckBxMostrarAplicacion.Checked then                                     //Jun 8 se agrego '%' al inicio para buscar codigo en cualquier lugar
         TAdoDataset(DataSource.DataSet).commandText:='Select * '+ParteAp+ 'from Productos where (Identificador1 Like ''%'+IDProd+
                                 '%'' or Identificador2 like ''%'+IDProd+'%'' or Identificador3 Like ''%'+IDProd+
                                 '%'')'
     else
     begin
       TAdoDataset(DataSource.DataSet).commandText:='Select P.* '+ParteAp+ 'from Productos P '+
                                          ' left join ProductosAplicaciones PA on (P.IdProducto=PA.IdProducto)  '+
                                          ' where(Identificador1 Like ''%'+IDProd+'%'' or Identificador2 like ''%'+IDProd+
                                          '%'' or Identificador3 Like ''%'+IDProd+'%'')';    //Ajuste para que busque parcial  //Dic 2/16
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

procedure TfrmListaProductos.SpdBtnVerArchivoClick(Sender: TObject);
Var
  nombreA:String;  //Dic 2/16 Copiado desde edicionprod
begin
  inherited;
  if fileExists(dsDocumento.DataSet.FieldByName('NombreArchivo').AsString) then
  begin
    NombreA:=dsDocumento.DataSet.FieldByName('NombreArchivo').AsString;
    if (upperCase(ExtractFileExt(NombreA))='.PDF') or (upperCase(ExtractFileExt(NombreA))='.DOC') or (upperCase(ExtractFileExt(NombreA))='.DOCX') then
      ShellExecute(application.Handle, 'open', PChar(NombreA), nil, nil, SW_SHOWNORMAL)
    else
      ShowMessage('No se puede mostrar el archivo de  extension'+ ExtractFileExt(NombreA) ) ;
  end;

end;

procedure TfrmListaProductos.tvMasterCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
   texto:String;   //May 13/16
   i:integer;
begin
  texto:=ACellViewInfo.Item.Name;
  I:= Pos('Identificador',Texto);
  if i>0 then
  begin
    texto:= copy(texto,i + 13, 1);
  end
  else
    Texto:='';
  if Texto <>'' then
  begin
   // ShowMessage(Texto);
    i:=strToInt(Texto);
    RdGrpUsoIdentificador.ItemIndex:=i-1;
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
  if not Datasource.DataSet.eof then
  begin
    Acepto:=True;
    Close;
  end
  else
  begin
    Acepto:=False;
    Close;
  end;

end;

end.
