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
    DSOrdenSalidaItems: TDataSource;
    DSOrdenSalida: TDataSource;
    DSQryBorrar: TDataSource;
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
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    FTipoDoc: Integer;
    procedure SetTipoDoc(const Value: Integer);
    function GenerarOrdenSalida(IDDocumento:Integer):Boolean;
    function RevisaFaltantes(IDDocumento:Integer):Boolean; //si se partio el pedido en varias ordenes de salida //Nov 23/15

    { Private declarations }
  public
    { Public declarations }

    Property TipoDocumento:Integer read FTipoDoc write SetTipoDoc;
  end;

implementation

{$R *.dfm}

uses CotizacionesDM, CotizacionesFormGrid, _Utils, ListaProductosForm,
  GeneraOrdenSalida;

procedure TfrmCotizaciones.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if DataSource.DataSet.FieldByName('IDTipoDocumentoSalida').AsInteger=2  then
     SpdBtnCambioEstatus.Enabled:=RevisaFaltantes(DataSource.DataSet.FieldByName('IDDocumentoSalida').AsInteger);
end;

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
    1:SpdBtnCambioEstatus.Caption:='Acepta Cotizaci�n';
    2:SpdBtnCambioEstatus.Caption:='Genera Orden Salida';   //
    3:SpdBtnCambioEstatus.Visible:=False;
  end;
end;

function TfrmCotizaciones.GenerarOrdenSalida(idDocumento: Integer): Boolean; //Nov 18/15
var
  id:integer;
begin
  Result:=False;

  dsordenSalida.DataSet.Open;
  DSOrdenSalidaItems.DataSet.Open;

  dsordenSalida.DataSet.Insert;
  dsordenSalida.DataSet.FieldByName('IDDocumentoSalida').asInteger:= idDocumento;
  dsordenSalida.DataSet.FieldByName('FechaRegistro').AsDateTime:=Now;
  dsordenSalida.DataSet.FieldByName('Subtotal').AsFloat:=DataSource.DataSet.FieldByName('Subtotal').asFloat;

  dsordenSalida.DataSet.FieldByName('IVA').asFloat:=DataSource.DataSet.FieldByName('IVA').asFloat;
  dsordenSalida.DataSet.FieldByName('Total').asFloat:=DataSource.DataSet.FieldByName('Total').asFloat;
  dsordenSalida.DataSet.FieldByName('IDOrdenEstatus').asInteger:= 1;
  dsordenSalida.DataSet.Post;

  id:= dsordenSalida.DataSet.FieldByName('IDOrdenSalida').asInteger;

  while not DataSourceDetail.DataSet.eof do
  begin
    if DataSourceDetail.DataSet.FieldByName('CantidadPendiente').AsFloat>0 then
    begin
      DSOrdenSalidaItems.DataSet.Insert;
      DSOrdenSalidaItems.DataSet.FieldByName('IDDocumentoSalidaDetalle').AsInteger:= DataSourceDetail.DataSet.FieldByName('IDDocumentoSalidaDetalle').AsInteger;
      DSOrdenSalidaItems.DataSet.FieldByName('IdProducto').AsInteger:= DataSourceDetail.DataSet.FieldByName('IDProducto').AsInteger;
      DSOrdenSalidaItems.DataSet.FieldByName('ClaveProducto').asString:= DataSourceDetail.DataSet.FieldByName('ClaveProducto').AsString;
      DSOrdenSalidaItems.DataSet.FieldByName('CantidadSolicitada').asFloat:= DataSourceDetail.DataSet.FieldByName('CantidadPendiente').AsFloat; //Verificar comportamiento
      DSOrdenSalidaItems.DataSet.FieldByName('CantidadDespachada').asFloat:= DataSourceDetail.DataSet.FieldByName('CantidadPendiente').AsFloat;
      DSOrdenSalidaItems.DataSet.FieldByName('Precio').asFloat:= DataSourceDetail.DataSet.FieldByName('PrecioUnitario').AsFloat;
      DSOrdenSalidaItems.DataSet.FieldByName('Importe').asFloat:= DataSourceDetail.DataSet.FieldByName('CantidadPendiente').AsFloat
                                                                  *DataSourceDetail.DataSet.FieldByName('PrecioUnitario').AsFloat;//DataSourceDetail.DataSet.FieldByName('Importe').AsFloat;
                                                                   //Por que pude habae varias salidas por Pedido.

      DSOrdenSalidaItems.DataSet.Post;
    end;
    DataSourceDetail.DataSet.next;
  end;
  DSQryBorrar.DataSet.Close;
  TAdoQuery(DSQryBorrar.DataSet).Sql.Clear;  //Poner ceros en cada elemento de la tabla de documentosalidadetalle
  TAdoQuery(DSQryBorrar.DataSet).Sql.Add('Update DocumentosSalidasDetalles SET CantidadPendiente=0 where IDDocumentoSalida='+intToStr(idDocumento));
  TAdoQuery(DSQryBorrar.DataSet).ExecSQL;

  //Actualizar en un s�lo paso los n detales
  REsult:=True;
  (*   //Se genera pero se no se permite cabiar aca

  FrmGeneraOrdenSalida:=TFrmGeneraOrdenSalida.Create(Self);
  FrmGeneraOrdenSalida.IdOrden:=id;
  FrmGeneraOrdenSalida.DSOrdenSalida.DataSet:=DSOrdenSalida.DataSet;
  FrmGeneraOrdenSalida.DSOrdenSalidaItems.DataSet:=DSOrdenSalidaItems.DataSet;
  FrmGeneraOrdenSalida.ShowModal;
  if FrmGeneraOrdenSalida.ModalResult=mrCancel then
  begin
    //Eliminar y regresar FAlso

    DSQryBorrar.DataSet.Close;
    TAdoQuery(DSQryBorrar.DataSet).Sql.Clear;
    TAdoQuery(DSQryBorrar.DataSet).Sql.Add('Delete From OrdenesSalidasItems where IDOrdenSalida='+intToStr(ID));
    TAdoQuery(DSQryBorrar.DataSet).ExecSQL;

    TAdoQuery(DSQryBorrar.DataSet).Sql.Clear;
    TAdoQuery(DSQryBorrar.DataSet).Sql.Add('Delete From OrdenesSalidas where IDOrdenSalida='+intToStr(ID));
    TAdoQuery(DSQryBorrar.DataSet).ExecSQL;
    Result:=False;

  end
  else
  begin
    //Verificar Cambios y ajustar estatus  de docSalida
    Result:=True;
  end;
  FrmGeneraOrdenSalida.Free;
  *)
end;

function TfrmCotizaciones.RevisaFaltantes(IDDocumento: Integer): Boolean;
begin //Nov 23/15
  TADODataset(dsAuxiliar.dataset).Close;
  TADODataset(dsAuxiliar.dataset).CommandText:='Select Sum(CantidadPendiente) Pendiente From DocumentosSalidasDetalles where IdDocumentoSalida='+intTosTR(IDDocumento);
  dsAuxiliar.dataset.Open;
  Result:=dsAuxiliar.DataSet.FieldByName('Pendiente').AsFloat >0;

end;

procedure TfrmCotizaciones.SetTipoDoc(const Value: Integer);
begin
  FTipoDoc := Value;

end;

procedure TfrmCotizaciones.SpdBtnCambioEstatusClick(Sender: TObject);
var
 res:Boolean;
begin
  inherited;
  if (DataSource.DataSet.FieldByName('IDTipoDocumentoSalida').AsInteger<3)then
  begin
    if DataSource.DataSet.FieldByName('IDTipoDocumentoSalida').AsInteger=2  then
    begin
      if RevisaFaltantes(DataSource.DataSet.FieldByName('idDocumentoSalida').AsInteger)then
      begin
        res:=GenerarOrdenSalida(DataSource.DataSet.FieldByName('idDocumentoSalida').AsInteger);
        if res then
        begin
          if (DataSource.DataSet.State =dsBrowse) then //para Cambiar Estatus No Tipo
            DataSource.DataSet.Edit;
           DataSource.DataSet.FieldByName('idDocumentoSalidaEstatus').AsInteger:=4; //Nov 18/15 En proceso.. se cambiar� luego a Cerrado si se surte todo
          DataSource.DataSet.Post;//Mostrar Orden de Salida, permitir ajustes por cantidades
          //Verificar si se completo, se cierra
          //Cambiar y copiar en Orden de Salida
        end; // no
      end; //RevisaFaltantes
    end
    else   //Nov 18/15
    begin

      if (DataSource.DataSet.State =dsBrowse) then
        DataSource.DataSet.Edit;
      DataSource.DataSet.FieldByName('IDTipoDocumentoSalida').AsInteger:=DataSource.DataSet.FieldByName('IDTipoDocumentoSalida').AsInteger+1;
      DataSource.DataSet.Post;
    end;
  end;



  //rehacer consulta
  Datasource.dataset.close;
  Datasource.dataset.Open;
  //Si se ven deberia ubicarse en la modificada

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
