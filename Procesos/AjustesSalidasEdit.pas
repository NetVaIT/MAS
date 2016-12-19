unit AjustesSalidasEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, Vcl.StdCtrls,
  cxStyles, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Data.DB, Vcl.ComCtrls, Vcl.ToolWin, cxScrollBox, cxPC,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxMemo, cxLabel, cxDBLabel, Vcl.Buttons, Data.Win.ADODB;

type
  TfrmAjustesSalidasEdit = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    pnlDetail: TPanel;
    Pnlencabezado: TPanel;
    Label4: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    PnlPie: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cxDBLabel1: TcxDBLabel;
    btnAplicarsalida: TSpeedButton;
    PgCntrlAjustesSalida: TcxPageControl;
    tsProductosXSalir: TcxTabSheet;
    tsSalidasUbicaciones: TcxTabSheet;
    DSSalidasUbicaciones: TDataSource;
    DSItemsSalida: TDataSource;
    DSQryAuxiliar: TDataSource;
    DSProductosXEspacio: TDataSource;
    PnlTitulo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure PgCntrlAjustesSalidaChange(Sender: TObject);
    procedure DSSalidasUbicacionesUpdateData(Sender: TObject);
    procedure DSSalidasUbicacionesDataChange(Sender: TObject; Field: TField);
  private
    FactAplicaSalida: TBasicAction;
    procedure SetactAplicaSalida(const Value: TBasicAction);
    procedure CrearSalidasUbicacion;
    function ExisteCompleto(idOrdenSalidaItem: Integer;
      var Falta: Double): Boolean;
    function SacaIdProducto(idOrdenSalidaItem: integer): integer;
    { Private declarations }
  public
    { Public declarations }
     property actAplicaSalida: TBasicAction read FactAplicaSalida write SetactAplicaSalida;

  end;

implementation

{$R *.dfm}

uses AjustesSalidasDM, AjustesSalidasForm;

procedure TfrmAjustesSalidasEdit.PgCntrlAjustesSalidaChange(Sender: TObject);
begin
  inherited;
  if datasource.DataSet.FieldByName('IdOrdenEstatus').asinteger=1 then  //Solo para generadas

  if (DSItemsSalida.DataSet.RecordCount>0) and (PgCntrlAjustesSalida.ActivePageIndex=1)then
  begin
    //CrearSalidas ubicacion , si no existen para los productos
    CrearSalidasUbicacion;
    //Ver donde se crea productos Kardex
    //Verificar existencia de productos..
    //Crear de lo que hay .. mostrar todo s los registros de la orden de salida..
   // btnAplicarsalida.Enabled:=Verificar Estatus deSalidas ubicacion

//    btnAplicarsalida condicionar a si ya esta asignada la salida de los productos ....
  end;

end;

procedure TfrmAjustesSalidasEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmAjustesSalidasForm.Create(Self);
  ContainerDetail1:= tsProductosXSalir;
  ContainerDetail2:= tsSalidasUbicaciones;


end;

procedure TfrmAjustesSalidasEdit.SetactAplicaSalida(const Value: TBasicAction);
begin
  FactAplicaSalida := Value;
  btnAplicarSalida.Action:=Value;
end;


procedure TfrmAjustesSalidasEdit.CrearSalidasUbicacion;   //Jul 14/16
var
  Faltante:Double;
begin
  DSsalidasUbicaciones.dataset.Open;
  while not dsItemsSalida.dataset.eof do
  begin
  //  DSProductosXEspacio.dataset.close;// desde Ene 29/16
   // TAdoDataset(DSProductosXEspacio.dataset).Parameters.ParamByName('IdProducto').Value:= DtSrcOrdenSalItem.dataset.fieldbyname('IdProducto').asinteger;

    Faltante:=dsItemsSalida.dataset.fieldbyname('CantidadDespachada').asFloat;
    if not ExisteCompleto(dsItemsSalida.dataset.fieldbyname('IdOrdenSalidaItem').asinteger,Faltante) then
    begin
      if Faltante>0.000001  then
      begin
        //Crear adicional e ingresar
        DSsalidasUbicaciones.dataset.insert;
        DSsalidasUbicaciones.dataset.fieldbyname('IdOrdenSalida').asinteger:= dsItemsSalida.dataset.fieldbyname('IdOrdenSalida').asinteger;
        DSsalidasUbicaciones.dataset.fieldbyname('IdOrdenSalidaItem').asinteger:= dsItemsSalida.dataset.fieldbyname('IdOrdenSalidaItem').asinteger;
        DSsalidasUbicaciones.dataset.fieldbyname('IdProducto').asinteger:= dsItemsSalida.dataset.fieldbyname('idproducto').asInteger;//Oct 28/16;
        DSsalidasUbicaciones.dataset.fieldbyname('Cantidad').ASFloat:= Faltante;
        DSsalidasUbicaciones.dataset.fieldbyname('IdSalidaUbicacionEstatus').asinteger:= 1;//Registrado, cuando el usuario coloque el dato de ProductoEspacio --> En Proceso
//        DSsalidasUbicaciones.dataset.fieldbyname('IdProductoXEspacio').asinteger:= BuscaProductoDisponible(DtSrcOrdenSalItem.dataset.fieldbyname('IdProducto').asinteger);

        DSsalidasUbicaciones.dataset.post;
      end;
    end;
    dsItemsSalida.dataset.next;
  end;

  DSsalidasUbicaciones.dataset.Refresh;

end;

procedure TfrmAjustesSalidasEdit.DSSalidasUbicacionesDataChange(Sender: TObject;
  Field: TField);
var idProducto:Integer;
begin        //Para que el siguiente quede filtrado..  Oct 3/16
  inherited;
  if (not (dsSalidasUbicaciones.dataset.eof)) and (dsSalidasUbicaciones.State =dsBrowse)  then
  begin
    //Saca IdProducto con IDordenSalidaItem
    if dssalidasUbicaciones.DataSet.fieldbyname('IDProducto').Isnull then //Oct 28/16
       idProducto:= SacaIdProducto(dssalidasUbicaciones.DataSet.fieldbyname('IDOrdenSalidaItem').AsInteger)   //Oct 24/16
    else
       idProducto:= dssalidasUbicaciones.DataSet.fieldbyname('IDProducto').asinteger;  //Oct 28/16
    dsProductosXEspacio.DataSet.Filtered:=False;                                                  // DtSrcOrdenSalItem     //No tiene datos
    dsProductosXEspacio.DataSet.Filter:='IDProducto='+intToStr(IdProducto);//dssalidasUbicaciones.DataSet.fieldbyname('IDProducto').AsString;
    dsProductosXEspacio.DataSet.Filtered:=True;
  end;
end;

function  TfrmAjustesSalidasEdit.SacaIdProducto(idOrdenSalidaItem:integer):integer; //Oct 24/16
begin
  Result:=-1;
  DSQryAuxiliar.DataSet.Close;
  TADOQuery(dSQryAuxiliar.DataSet).SQL.Clear;
  TADOQuery(dSQryAuxiliar.DataSet).SQL.Add('Select idProducto from OrdenesSalidasItems where IdOrdenSalidaItem='+inttostr(idOrdenSalidaItem));
  TADOQuery(dSQryAuxiliar.DataSet).Open;
  if not (DSQryAuxiliar.DataSet.eof) then
     Result:=DSQryAuxiliar.DataSet.fieldbyname('IdProducto').AsInteger;

end;

procedure TfrmAjustesSalidasEdit.DSSalidasUbicacionesUpdateData(
  Sender: TObject);
begin
  inherited;
  btnAplicarsalida.Enabled:=False;
end;

function TfrmAjustesSalidasEdit.ExisteCompleto(idOrdenSalidaItem:Integer; var Falta:Double):Boolean;     //Jul 14/16
begin
  TAdoQuery(DSQryAuxiliar.DataSet).Close;
  TAdoQuery(DSQryAuxiliar.DataSet).SQL.Clear;
  TAdoQuery(DSQryAuxiliar.DataSet).SQL.Add('Select count(IdSalidaUbicacion) reg, Sum(Cantidad) CantTotal from SalidasUbicaciones where IdOrdenSalidaItem= '+ intToSTR(idOrdenSalidaItem));
  TAdoQuery(DSQryAuxiliar.DataSet).Open;
  if DSQryAuxiliar.DataSet.Fieldbyname('CantTotal').AsFloat>0 then //No existe registrado
  begin
    Falta:=Falta-DSQryAuxiliar.DataSet.Fieldbyname('CantTotal').AsFloat;
  end;

  result:=  Falta=0; //Asegurarse que no tenga decimales  True , ya esta completo, si es diferente le falta

end;



end.
