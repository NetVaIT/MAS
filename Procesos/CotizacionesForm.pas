unit CotizacionesForm;

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
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxClasses, Vcl.StdActns,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls,
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit,
  Vcl.DBCtrls, cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxMemo,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, cxLabel, cxDBLabel,Data.Win.ADODB;

type
  TfrmCotizaciones = class(T_frmStandarGFormEdit)
    pnlDetail: TPanel;
    tbarGrid: TToolBar;
    TlBtnInserta: TToolButton;
    ToolButton4: TToolButton;
    TlBtnBorra: TToolButton;
    ToolButton6: TToolButton;
    TlBtnFirst: TToolButton;
    TlBtnPrior: TToolButton;
    TlBtnNext: TToolButton;
    TlBtnLasT: TToolButton;
    ToolButton22: TToolButton;
    DataSourceDetail: TDataSource;
    PnlEncabezado: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBMemo1: TcxDBMemo;
    TlBtnEdita: TToolButton;
    ToolButton3: TToolButton;
    TlBtnGuarda: TToolButton;
    TlBtnCancela: TToolButton;
    DBGrid1: TDBGrid;
    DatasetDetalleFirst: TDataSetFirst;
    DatasetDetallePrior: TDataSetPrior;
    DatasetDetalleNext: TDataSetNext;
    DatasetDetalleLast: TDataSetLast;
    SpdBtnCambioEstatus: TSpeedButton;
    DSAuxiliar: TDataSource;
    cxDBLabel1: TcxDBLabel;
    DatasetDetalleInsert: TDataSetInsert;
    DatasetDetalleDelete: TDataSetDelete;
    DatasetDetalleEdit: TDataSetEdit;
    DatasetDetallePost: TDataSetPost;
    DatasetDetalleCancel: TDataSetCancel;
    procedure FormCreate(Sender: TObject);
    procedure TlBtnInsertaClick(Sender: TObject);
    procedure TlBtnEditaClick(Sender: TObject);
    procedure TlBtnGuardaClick(Sender: TObject);
    procedure TlBtnCancelaClick(Sender: TObject);
    procedure DataSourceDetailStateChange(Sender: TObject);
    procedure TlBtnBorraClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpdBtnCambioEstatusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FTipoDoc: Integer;
    procedure SetTipoDoc(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }

    Property TipoDocumento:Integer read FTipoDoc write SetTipoDoc;
  end;

implementation

{$R *.dfm}

uses CotizacionesDM, CotizacionesFormGrid, _Utils, ListaProductosForm;

procedure TfrmCotizaciones.DataSourceDetailStateChange(Sender: TObject);
begin
  inherited;
 (* TlbtnInserta.Enabled:= DataSourceDetail.State=dsBrowse;
  TlbtnEdita.Enabled:= (DataSourceDetail.State=dsBrowse) and (DataSourceDetail.DataSet.RecordCount>0) ;
  TlbtnBorra.Enabled:= (DataSourceDetail.State=dsBrowse) and (DataSourceDetail.DataSet.RecordCount>0) ;
  TlbtnGuarda.Enabled:= DataSourceDetail.State in [dsinsert,dsedit];
  TlbtnCancela.Enabled:= DataSourceDetail.State in [dsinsert,dsedit];       *)

  //DBGrid1EditButtonClick(nil);


end;

procedure TfrmCotizaciones.DBGrid1DblClick(Sender: TObject);
begin
  inherited;

  if DataSourceDetail.State in [dsinsert,dsedit] then
  begin
    FrmListaProductos:=TFrmListaProductos.Create(Self);
    FrmListaProductos.DataSource:=DSAuxiliar;
    if DataSourceDetail.State=dsEdit then
    begin
      FrmListaProductos.Identificador:=DataSourceDetail.DataSet.FieldByName('ClaveProducto').asString;
      FrmListaProductos.EdtBuscar.Text:=FrmListaProductos.Identificador;
      FrmListaProductos.SpdBtnBuscarClick(FrmListaProductos.SpdBtnBuscar);
    end;
    FrmListaProductos.ShowModal;
    //Tomar datos y colocar
    DataSourceDetail.DataSet.FieldByName('IDProducto').AsInteger:=FrmListaProductos.IDProducto;
  //  DataSourceDetail.DataSet.FieldByName('Producto').AsInteger:=FrmListaProductos.Descripcion;
    DataSourceDetail.DataSet.FieldByName('ClaveProducto').asString:=FrmListaProductos.Identificador;
    DataSourceDetail.DataSet.FieldByName('PrecioUnitario').AsFloat:=FrmListaProductos.Precio;


    FrmListaProductos.Free;
  end;
end;

procedure TfrmCotizaciones.DBGrid1EditButtonClick(Sender: TObject);

begin
  inherited;
(*  FrmListaProductos:=TFrmListaProductos.Create(Self);
  FrmListaProductos.DataSource:=DSAuxiliar;
  FrmListaProductos.ShowModal;
  //Tomar datos y colocar
  if DataSourceDetail.DataSet.State=dsBrowse then
     DataSourceDetail.DataSet.Edit;
  DataSourceDetail.DataSet.FieldByName('IDProducto').AsInteger:=FrmListaProductos.IDProducto;
//  DataSourceDetail.DataSet.FieldByName('Producto').AsInteger:=FrmListaProductos.Descripcion;
  DataSourceDetail.DataSet.FieldByName('ClaveProducto').asString:=FrmListaProductos.Identificador;
  DataSourceDetail.DataSet.FieldByName('PrecioUnitario').AsFloat:=FrmListaProductos.Precio;


  FrmListaProductos.Free;

  *)
  //ShowMessage('Entro al evento');
end;

procedure TfrmCotizaciones.FormCreate(Sender: TObject);
begin
  inherited;

  gFormGrid := TfrmCotizacionesGrid.Create(Self);
  TfrmCotizacionesGrid(gFormGrid).CerrarGrid := actCloseGrid;
  DataSource.DataSet.open;
  DataSourceDetail.DataSet.Open;
end;

procedure TfrmCotizaciones.FormShow(Sender: TObject);
begin
  inherited;
  case FTipoDoc of
    1:SpdBtnCambioEstatus.Caption:='Acepta Cotización';
    2:SpdBtnCambioEstatus.Caption:='Genera Orden Salida';
    3:SpdBtnCambioEstatus.Visible:=False;
  end;
end;

procedure TfrmCotizaciones.SetTipoDoc(const Value: Integer);
begin
  FTipoDoc := Value;

end;

procedure TfrmCotizaciones.SpdBtnCambioEstatusClick(Sender: TObject);
begin
  inherited;
  if (DataSource.DataSet.FieldByName('IDTipoDocumentoSalida').AsInteger<3)then
  begin
    if DataSource.DataSet.FieldByName('IDTipoDocumentoSalida').AsInteger=2 then
    begin
      //Mostrar Orden de Salida, permitir ajustes por cantidades
      //Verificar si se completo, se cierra

    end;


    if (DataSource.DataSet.State =dsBrowse) then
      DataSource.DataSet.Edit;
    DataSource.DataSet.FieldByName('IDTipoDocumentoSalida').AsInteger:=DataSource.DataSet.FieldByName('IDTipoDocumentoSalida').AsInteger+1;
    DataSource.DataSet.Post;

  end;



  //rehacer consulta
  Datasource.dataset.close;
  Datasource.dataset.Open;
end;

procedure TfrmCotizaciones.TlBtnEditaClick(Sender: TObject);
begin
  inherited;
  DataSourceDetail.DataSet.Edit;
end;

procedure TfrmCotizaciones.TlBtnInsertaClick(Sender: TObject);
begin
  inherited;
  if Datasource.DataSet.State in[dsInsert,dsEdit] then
    Datasource.DataSet.post;
  DataSourceDetail.DataSet.Insert;
end;

procedure TfrmCotizaciones.TlBtnBorraClick(Sender: TObject);
begin
  inherited;
   if MessageDlg(strAllowDelete, mtConfirmation, mbYesNo, 0) = mrYes then
     DataSourceDetail.DataSet.Delete;
end;

procedure TfrmCotizaciones.TlBtnCancelaClick(Sender: TObject);
begin
  inherited;
  DataSourceDetail.DataSet.Cancel;
end;

procedure TfrmCotizaciones.TlBtnGuardaClick(Sender: TObject);
begin
  inherited;
  DataSourceDetail.DataSet.Post;
end;

end.
