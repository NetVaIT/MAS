unit ListaPreciosGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, cxGridLevel, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, cxContainer, cxTextEdit,
  cxCurrencyEdit,Data.Win.ADODB, RxLookup;

type
  TFrmListaPreciosGrid = class(T_frmStandarGFormGrid)
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterIdProductoTipo: TcxGridDBColumn;
    tvMasterIdUnidadMedida: TcxGridDBColumn;
    tvMasterIdProductoEstatus: TcxGridDBColumn;
    tvMasterIdentificador1: TcxGridDBColumn;
    tvMasterIdentificador2: TcxGridDBColumn;
    tvMasterIdentificador3: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterPrecioUnitario: TcxGridDBColumn;
    tvMasterUnidadMedida: TcxGridDBColumn;
    PnlBusqueda: TPanel;
    LblEtiqueta: TLabel;
    EdtNombre: TEdit;
    ToolButton11: TToolButton;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnConsulta: TSpeedButton;
    ChckBxXRango: TCheckBox;
    cxEdtValFin: TcxCurrencyEdit;
    cxEdtValIni: TcxCurrencyEdit;
    SpdBtnCambiarPrecio: TSpeedButton;
    PnlProveedor: TPanel;
    RdGrpFiltro: TRadioGroup;
    RxDBLkpCmbProveedor: TRxDBLookupCombo;
    Label4: TLabel;
    DSProveedor: TDataSource;
    procedure SpdBtnConsultaClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpdBtnCambiarPrecioClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure RdGrpFiltroClick(Sender: TObject);
    procedure RxDBLkpCmbProveedorClick(Sender: TObject);
  private
    fFiltroProducto: String;      //Jul 4/16
    ffiltroRango: String;
    fFiltroProveedor: String;

    procedure CambiarPrecio(Tipo: Integer;Valor:Double);     //Jul 4/16
    { Private declarations }
  public
    { Public declarations }
    Property FiltroProducto:String read fFiltroProducto Write ffiltroProducto;   //Jul 4/16
    Property FiltroRango :String read ffiltroRango write ffiltroRango;   //Jul 4/16
    Property FiltroProveedor:String read fFiltroProveedor Write fFiltroProveedor;   //Jul 5/16

  end;

var
  FrmListaPreciosGrid: TFrmListaPreciosGrid;

implementation

{$R *.dfm}

uses ListaPreciosDM, CambioPreciosEdt, _Utils;

procedure TFrmListaPreciosGrid.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SpdBtnCambiarPrecio.Enabled:=datasource.DataSet.RecordCount>0;
end;

procedure TFrmListaPreciosGrid.EdtNombreChange(Sender: TObject);
begin
  inherited;
  ffiltroproducto:='';
  if edtNombre.Text<>'' then
  begin
    ffiltroProducto:='(Descripcion Like ''%'+ edtNombre.Text+'%'' or Identificador1 like ''%'
                    +edtNombre.Text+'%'' or Identificador2 like ''%'+edtNombre.Text
                    +'%'' or Identificador3 like ''%'+edtNombre.Text+'%'' )';

  end;
end;

procedure TFrmListaPreciosGrid.EdtNombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=13 then
  begin
    key:=0;
    SpdBtnConsulta.Click;
  end;
end;

procedure TFrmListaPreciosGrid.RdGrpFiltroClick(Sender: TObject);
begin
  inherited;
  PnlProveedor.Visible:= RdGrpFiltro.itemindex=1;
  LblEtiqueta.Visible:= RdGrpFiltro.itemindex=0;
  if RdGrpFiltro.itemindex=1 then
  begin
    EdtNombre.Clear;
  end
  else
    RxDBLkpCmbProveedor.KeyValue:=-1; //quitar

end;

procedure TFrmListaPreciosGrid.RxDBLkpCmbProveedorClick(Sender: TObject);
begin
  inherited;
  ffiltroproducto:='';
  if RxDBLkpCmbProveedor.KeyValue <>'' then
  begin
    ffiltroProducto:=' inner join ProductosProveedores Pp on PP.IdProducto =P.IdProducto'
                    +' and PP.IDPersonaProveedor ='+RxDBLkpCmbProveedor.KeyValue;

  end;
end;

procedure TFrmListaPreciosGrid.SpdBtnCambiarPrecioClick(Sender: TObject);
var
  TextoAux:String;
begin
  inherited;
  Datasource.DataSet.Tag:= 0;
  //Asegurarse de quitar filtros adicionales sobre el grid
  FrmCambioPrecios:= TFrmCambioPrecios.Create(Self);
  FrmCambioPrecios.ShowModal;
  if FrmCambioPrecios.ModalResult=mrok then
  begin
    //verificar
     TextoAux:=FrmCambioPrecios.ATextoAux+'('+Floattostr(FrmCambioPrecios.AValor) +')';
     Datasource.DataSet.Filter:='('+TextoAux+')';
     if (FrmCambioPrecios.AOpcionCambio<>-1) and (application.MessageBox(pchar('¿Está seguro de hacer el cambio de precios, a través de '+TextoAux+'?'), 'Confirmación', MB_YESNO )=idYES)then
     begin
       //Verificar si hacer respaldo de datos actual, perdir que se hacga respaldo antes de...
       CambiarPrecio(FrmCambioPrecios.AOpcionCambio,FrmCambioPrecios.AValor);
     end;
  end;

end;
procedure TFrmListaPreciosGrid.CambiarPrecio(Tipo:Integer;Valor:Double);
var cont,i,x:Integer;
begin
  cont:= datasource.dataset.recordcount;
  i:=1;
  datasource.dataset.first;
  while not datasource.dataset.eof do
  begin
    X:= i*100 div cont ;
    ShowProgress(i,cont,'Actualizando precios..' + IntToStr(x) + '%');
    datasource.dataset.Edit;
    case tipo of
    0:datasource.dataset.FieldByName('PrecioUnitario').AsFloat:=datasource.dataset.FieldByName('PrecioUnitario').AsFloat*(1+valor/100);  //Incrementa un porcentaje
    1:datasource.dataset.FieldByName('PrecioUnitario').AsFloat:=datasource.dataset.FieldByName('PrecioUnitario').AsFloat+valor;  //Incrementa un monto
    2:datasource.dataset.FieldByName('PrecioUnitario').AsFloat:=valor; //Sustituye
    end;
    datasource.dataset.Post;
    i:=i+1;
    datasource.dataset.next;
  end;
  ShowProgress(100,100);
end;

procedure TFrmListaPreciosGrid.SpdBtnConsultaClick(Sender: TObject);
Const SQLText='select P.IdProducto, IdProductoTipo, IdUnidadMedida, '
+'IdProductoEstatus, Identificador1, Identificador2, Identificador3,'
+' Descripcion, PrecioUnitario from Productos P inner  join Inventario I on P.IdProducto = I.IdProducto ';
var WhereSQL:String;
begin
  inherited;
  Tadodataset(datasource.DataSet).Close;
  WhereSQL:='';
  filtroRango:='';

  if FiltroProducto<>'' then
   if pos('inner',FiltroProducto)>0 then   //Jul 6/16
     whereSQl:= FiltroProducto
   else
     whereSQl:=' where '+FiltroProducto;

  if ChckBxXRango.Checked then
  begin
    filtroRango:=' PrecioUnitario>= '+ cxEdtValIni.TExt+' and PrecioUnitario<= ' +floatToStr(cxEdtValFin.Value);
    if whereSQL<>'' then
      whereSQL:=whereSQL+' and '+filtroRango
    else
       whereSQL:=' where '+FiltroRAngo;
  end;
   Tadodataset(datasource.DataSet).CommandText:=SQLText+ whereSQL;
  // ShowMessage(SQLText+ whereSQL);

  Tadodataset(datasource.DataSet).open;

end;

end.
