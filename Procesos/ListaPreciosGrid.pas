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
  cxCurrencyEdit,Data.Win.ADODB, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCtrls;

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
    Label4: TLabel;
    DSProveedor: TDataSource;
    tvMasterPrecioNuevo: TcxGridDBColumn;
    SpdBtnListaPrecios: TSpeedButton;
    TlBtnImpresion: TToolButton;
    SpdBtnAplicacionPrecios: TSpeedButton;
    DSVerificaActualiza: TDataSource;
    RxDBLkpCmbProveedor: TDBLookupComboBox;
    RdGrpTipoImp: TRadioGroup;
    procedure SpdBtnConsultaClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpdBtnCambiarPrecioClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure RdGrpFiltroClick(Sender: TObject);
    procedure RxDBLkpCmbProveedorxClick(Sender: TObject);
    procedure SpdBtnListaPreciosClick(Sender: TObject);
    procedure SpdBtnAplicacionPreciosClick(Sender: TObject);
    procedure DataSourceUpdateData(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
  private
    fFiltroProducto: String;      //Jul 4/16
    ffiltroRango: String;
    fFiltroProveedor: String;
    FImprimelista: TBasicAction;
    FActualizaPrecios: TBasicAction;
    FImprimeMayoreo: TBasicAction;
    FImprimelistaNva: TBasicAction;

    procedure CambiarPrecio(Tipo: Integer;Valor:Double);
    procedure SetFImprimeLista(const Value: TBasicAction);
    procedure SetFActualizaPrecios(const Value: TBasicAction);     //Jul 4/16

    Function ActualizandoPrecios:Boolean;
    procedure SetFImprimeMayoreo(const Value: TBasicAction);
    procedure SetFImprimeListaNva(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    Property FiltroProducto:String read fFiltroProducto Write ffiltroProducto;   //Jul 4/16
    Property FiltroRango :String read ffiltroRango write ffiltroRango;   //Jul 4/16
    Property FiltroProveedor:String read fFiltroProveedor Write fFiltroProveedor;   //Jul 5/16

     property actImprimeLista: TBasicAction read FImprimelista write SetFImprimeLista; //Jul 18/16
     property actActualizaPrecios: TBasicAction read FActualizaPrecios write SetFActualizaPrecios; //Jul 18/16
     property actImprimeMayoreo: TBasicAction read FImprimeMayoreo write SetFImprimeMayoreo; //Jul 18/16
     property actImprimeListaNva: TBasicAction read FImprimelistaNva write SetFImprimeListaNva; //Jul 18/16
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

procedure TFrmListaPreciosGrid.DataSourceStateChange(Sender: TObject);
begin
  inherited;

  SpdBtnAplicacionPrecios.Enabled:=ActualizandoPrecios;
end;

procedure TFrmListaPreciosGrid.DataSourceUpdateData(Sender: TObject);
begin
  inherited;
 SpdBtnAplicacionPrecios.Enabled:=ActualizandoPrecios;

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

procedure TFrmListaPreciosGrid.RxDBLkpCmbProveedorxClick(Sender: TObject);
begin
  inherited;
  ffiltroproducto:='';
  if RxDBLkpCmbProveedor.KeyValue <>-1then
  begin

    ffiltroProducto:=' inner join ProductosProveedores Pp on PP.IdProducto =P.IdProducto'
                    +' and PP.IDPersonaProveedor ='+intToStr(RxDBLkpCmbProveedor.KeyValue);

  end;
end;

procedure TFrmListaPreciosGrid.SetFActualizaPrecios(const Value: TBasicAction);
begin
  FActualizaPrecios := Value;
end;

procedure TFrmListaPreciosGrid.SetFImprimeLista(const Value: TBasicAction);
begin
  FImprimelista := Value;
  TlBtnImpresion.action:=Value;
  TlBtnImpresion.ImageIndex:=13;
  TlBtnImpresion.Visible:=False;
end;

procedure TFrmListaPreciosGrid.SetFImprimeListaNva(const Value: TBasicAction);
begin
  FImprimelistaNva := Value;
end;

procedure TFrmListaPreciosGrid.SetFImprimeMayoreo(const Value: TBasicAction);
begin
  FImprimeMayoreo := Value;

end;

procedure TFrmListaPreciosGrid.SpdBtnAplicacionPreciosClick(Sender: TObject);
begin
  inherited;
  actActualizaPrecios.Execute;
  SpdBtnConsulta.Click;
  SpdBtnAplicacionPrecios.Enabled:=ActualizandoPrecios;
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
       //Se cambio para que se modifique en el PrecioNuevo.
       CambiarPrecio(FrmCambioPrecios.AOpcionCambio,FrmCambioPrecios.AValor);
     end;
  end;

end;
function TFrmListaPreciosGrid.ActualizandoPrecios: Boolean;
begin
  DSVerificaActualiza.DataSet.Close;
  TAdoQuery(DSVerificaActualiza.DataSet).Sql.clear;
  TAdoQuery(DSVerificaActualiza.DataSet).Sql.Add('Select count(*) cant from Productos where PrecioNuevo<>PrecioUnitario');
  TAdoQuery(DSVerificaActualiza.DataSet).open;
  result:= DSVerificaActualiza.DataSet.fieldbyname('Cant').AsInteger>0;
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
    ShowProgress(i,cont,'Actualizando precios preliminares..' + IntToStr(x) + '%');
    datasource.dataset.Edit;
    case tipo of
    0:datasource.dataset.FieldByName('PrecioNuevo').AsFloat:=datasource.dataset.FieldByName('PrecioNuevo').AsFloat*(1+valor/100);  //Incrementa un porcentaje
    1:datasource.dataset.FieldByName('PrecioNuevo').AsFloat:=datasource.dataset.FieldByName('PrecioNuevo').AsFloat+valor;  //Incrementa un monto
    2:datasource.dataset.FieldByName('PrecioNuevo').AsFloat:=valor; //Sustituye
    end;
    datasource.dataset.Post;
    i:=i+1;
    datasource.dataset.next;
  end;
  ShowProgress(100,100);
end;

procedure TFrmListaPreciosGrid.SpdBtnConsultaClick(Sender: TObject);          //  , PA.Aplicacion
Const SQLText='select P.IdProducto, IdProductoTipo, IdUnidadMedida, '
+'IdProductoEstatus, Identificador1, Identificador2, Identificador3,'                                                                  //Jul 22/16
+' Descripcion, PrecioUnitario, PrecioNuevo from Productos P inner  join Inventario I on P.IdProducto = I.IdProducto and P.IDProductoEstatus=1'
//+' left join ProductosAplicaciones Pa on  PA.IdProducto=P.IDProducto'   //Jul 22/16
; //Jul 21/16   (verificar si asi)
orden=' order by P.orden'; //Ene 24/17
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
   Tadodataset(datasource.DataSet).CommandText:=SQLText+ whereSQL+ orden;
  // ShowMessage(SQLText+ whereSQL);

  Tadodataset(datasource.DataSet).open;

end;




procedure TFrmListaPreciosGrid.SpdBtnListaPreciosClick(Sender: TObject);
begin
  inherited;
  case RdGrpTipoImp.itemindex of
  0: TlBtnImpresion.Click;
  1: actImprimeMayoreo.Execute;
   2: actImprimeListaNva.Execute;
  end;
end;

end.
