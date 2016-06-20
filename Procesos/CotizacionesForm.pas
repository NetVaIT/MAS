unit CotizacionesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.UITypes, _StandarGFormEdit, dxSkinsCore,
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
  Vcl.DBGrids, Vcl.Buttons, cxLabel, cxDBLabel,Data.Win.ADODB, cxGroupBox,
  cxRadioGroup;

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
    DBLkpCmbBxCliente: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
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
    DBGrdDetalles: TDBGrid;
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
    DBLkpCmbBxDirCliente: TDBLookupComboBox;
    LblDirCliente: TLabel;
    DSDireccioncliente: TDataSource;
    DBLkupCmbBxDirAuxiliar: TDBLookupComboBox;
    SpdBtnGenPDFCotiza: TSpeedButton;
    cxDBLabel2: TcxDBLabel;
    LblNoCotiza: TLabel;
    Label11: TLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    ToolButton5: TToolButton;
    TlBtnCambioEstatus: TToolButton;
    TlBtnGenCotizaPDF: TToolButton;
    TlBtnEnvioCorreo: TToolButton;
    cxDBLabel5: TcxDBLabel;
    DSDocumentoAux: TDataSource;
    dsFotosAux: TDataSource;
    LstBxAdjuntosMail: TListBox;
    ChckBxAdjuntar: TCheckBox;
    BtBtnAdjuntos: TBitBtn;
    PnlTitulo: TPanel;
    cxDBLabel6: TcxDBLabel;
    Label12: TLabel;
    Label13: TLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    PnlSumasSaldos: TPanel;
    cxDBLabel9: TcxDBLabel;
    DSAntSaldos: TDataSource;
    Label15: TLabel;
    cxDBLabel10: TcxDBLabel;
    Label14: TLabel;
    Label16: TLabel;
    cxDBLabel11: TcxDBLabel;
    Label17: TLabel;
    cxDBLabel12: TcxDBLabel;
    Label18: TLabel;
    cxDBLabel13: TcxDBLabel;
    Label19: TLabel;
    BtBtnOcultar: TBitBtn;
    cxDBDateEdit2: TcxDBDateEdit;
    SpdBtnBuscaParte: TSpeedButton;
    DSCotizacionArchivo: TDataSource;
    SpdBtnAdjuntarArchivos: TSpeedButton;
    Label20: TLabel;
    cxDBMemo2: TcxDBMemo;
    Label21: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBRadioGroup1: TcxDBRadioGroup;
    Label22: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DSDireccionenvios: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure TlBtnBorraClick(Sender: TObject);
    procedure DBGrdDetallesEditButtonClick(Sender: TObject);
    procedure SpdBtnCambioEstatusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure DBLkpCmbBxClienteClick(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure DBGrdDetallesDblClick(Sender: TObject);
    procedure TlBtnEnvioCorreoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtBtnAdjuntosClick(Sender: TObject);
    procedure BtBtnOcultarClick(Sender: TObject);
    procedure cxDBLabel7Click(Sender: TObject);
    procedure DBGrdDetallesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpdBtnBuscaParteClick(Sender: TObject);
    procedure SpdBtnAdjuntarArchivosClick(Sender: TObject);
  private
    FTipoDoc: Integer;
    GenPDFCotiza: TBasicAction; //Feb4/16
    EnviaCotizacion:TBasicAction; //Feb 18/16
    procedure SetTipoDoc(const Value: Integer);
    function GenerarOrdenSalida(IDDocumento:Integer):Boolean;
    function RevisaFaltantes(IDDocumento:Integer):Boolean; //si se partio el pedido en varias ordenes de salida //Nov 23/15
    function ActualizaPedidoXSurtirEnInventario(IdProducto:Integer; Cantidad:Double):Boolean;
    procedure SetGenPDFCotiza(const Value: TBasicAction);
    procedure SetEnviaCotizacion(const Value: TBasicAction); // Ene12/16
    procedure CrearArchivos(ListaAdj: TListBox; RutaAdj: String); //Feb 22/16

    { Private declarations }
  public
    { Public declarations }

    Property TipoDocumento:Integer read FTipoDoc write SetTipoDoc;

    property ActGenPDFCotiza : TBasicAction read GenPDFCotiza write SetGenPDFCotiza; //Feb 4/16
    property ActEnviaCotizacion : TBasicAction read EnviaCotizacion write SetEnviaCotizacion; //Feb 18/16

end;

implementation

{$R *.dfm}

uses CotizacionesDM, CotizacionesFormGrid, _Utils, ListaProductosForm
  , ProductosFotosMostrar, ListaClientesForm, CotizacionesArchivosDM;    //    ,GeneraOrdenSalida

function TfrmCotizaciones.ActualizaPedidoXSurtirEnInventario(
  IdProducto: Integer; Cantidad: Double): Boolean; //Ene 12/16
begin
  dsQryBorrar.DataSet.Close;
  TAdoQuery(DSQryBorrar.DataSet).Sql.Clear;                                                                                                                      //SE agrego lo del Almacen en 1 //Abr 11/16
  TAdoQuery(DSQryBorrar.DataSet).Sql.Add('Update Inventario SET PedidoXSurtir=PedidoXSurtir +'+floatToStr(Cantidad)+' where IDProducto='+intToStr(idProducto) + ' and IdAlmacen= 1' );//Pendiente de agregar almacen feb 2/16
  TAdoQuery(DSQryBorrar.DataSet).ExecSQL;
end;

procedure TfrmCotizaciones.BtBtnAdjuntosClick(Sender: TObject);
begin
  inherited;
  CrearArchivos(LstBxAdjuntosMail,'AdjCorreo\');
  btbtnAdjuntos.Font.Color:=clGreen;
  LstBxAdjuntosMail.Clear;
  BtBtnAdjuntos.Enabled:= LstBxAdjuntosMail.Count>0;
end;


procedure TfrmCotizaciones.BtBtnOcultarClick(Sender: TObject);
begin
  inherited;
  PnlSumasSaldos.Visible:=False;
   PnlSumasSaldos.Repaint;
   DSAntSaldos.DataSet.Close;
end;

procedure TfrmCotizaciones.CrearArchivos(ListaAdj:TListBox;RutaAdj:String);
var
  Base:String;
  i:Integer;

  id:Integer;
  parte:String;
  NombreA: String;
begin
  Base:=ExtractFilePath(Application.ExeName)+Rutaadj;
  if not DirectoryExists(Base) then
  begin
    ForceDirectories(Base);
  end
  else
  begin
    //Limpiar
    BorraSoloArchivos(Base);
    //Crear
    for I := 0 to ListaAdj.Count-1 do
    begin
       Parte:=  ListaAdj.Items[I];
       id:=pos('\',Parte);
       if id>0  then
          Parte:=Copy(Parte, id+1, length(Parte)-id);
       Id:=StrToInt(Parte);
       if dsFotosAux.DataSet.Locate('IDProductoFoto',ID,[]) then
       begin
         if fileExists( dsDocumentoaux.DataSet.FieldByName('NombreArchivo').AsString) then
         begin                  //DataSourceFotos .
           NombreA:=dsDocumentoaux.DataSet.FieldByName('NombreArchivo').AsString;
           copyFile(Pchar(NombreA), Pchar(Base+ ExtractFileName(NombreA)),False);
         end;
       end;
    end;
  end;
end;
procedure TfrmCotizaciones.cxDBLabel7Click(Sender: TObject);
begin
  inherited;
   DSAntSaldos.DataSet.Close;       //May 2/16
  TAdoDataSet(DSAntSaldos.DataSet).Parameters.ParamByName('IdPersonaReceptor').Value:= datasource.DataSet.FieldByName('IdPersona').asInteger;
  DSAntSaldos.DataSet.Open;
  PnlSumasSaldos.Visible:=True;
  PnlSumasSaldos.Repaint;
end;

procedure TfrmCotizaciones.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if DataSource.DataSet.FieldByName('IDDocumentoSalidaTipo').AsInteger=2  then
    SpdBtnCambioEstatus.Enabled:=RevisaFaltantes(DataSource.DataSet.FieldByName('IDDocumentoSalida').AsInteger);// TlBtnCambioEstatus //Feb 9/16   SpdBtnCambioEstatus;
                                                        //Feb 9/16
  pnlMaster.Enabled:=  SpdBtnCambioEstatus.Enabled and SpdBtnCambioEstatus.visible;// SpdBtnCambioEstatus.Enabled and SpdBtnCambioEstatus.Visible;  // ene 11/16
  toolbutton10.enabled:= pnlMaster.Enabled;
  toolbutton12.Enabled:=pnlMaster.Enabled;
  LstBxAdjuntosMail.Clear;

  DSDireccionenvios.dataset.Close;  //Jun 16/16
  TadoDataset(DSDireccionenvios.dataset).Parameters.ParamByName('IdPersona').value:= DataSource.DataSet.FieldByName('IdPersona').AsInteger; //DEberia Funcionar
  DSDireccionenvios.dataset.Open;
end;

procedure TfrmCotizaciones.DataSourceStateChange(Sender: TObject);
begin
  inherited;                                                      //Agregado edit verificar ene28/16
  DBLkupCmbBxDirAuxiliar.Visible:= (DataSource.State in [dsInsert,dsEdit] ) and(SpdBtnCambioEstatus.Enabled);  //  SpdBtnCambioEstatus

  SpdBtnBuscaParte.Enabled:= (DataSource.State in [dsInsert,dsEdit] ) and(SpdBtnCambioEstatus.Enabled); //May 12/16
end;

procedure TfrmCotizaciones.DBGrdDetallesDblClick(Sender: TObject);
var
  i:Integer;
begin
  inherited;
  if LstBxAdjuntosMail.Visible then  //Para que  no se muestre en Pedido
  begin
    dsFotosAux.DataSet.first;
    if  (not dsFotosAux.DataSet.eof) then
    begin
      FrmMostrarForosProd:=TFrmMostrarForosProd.Create(Self);
      FrmMostrarForosProd.datasourceFotos.DataSet:=dsFotosAux.DataSet;
      FrmMostrarForosProd.DSDocumento.DataSet:=DSDocumentoAux.DataSet;
      FrmMostrarForosProd.ChckLstBxProdFotos.Items.Clear;
      FrmMostrarForosProd.datasourceFotos.DataSet.open;
      FrmMostrarForosProd.DSDocumento.DataSet.Open;
      while not FrmMostrarForosProd.datasourceFotos.DataSet.Eof do
      begin
        FrmMostrarForosProd.ChckLstBxProdFotos.Items.Add(FrmMostrarForosProd.DSDocumento.DataSet.FieldByName('NombreArchivo').asString+ ' \'+FrmMostrarForosProd.datasourceFotos.DataSet.FieldByName('IdProductoFoto').asString);
        FrmMostrarForosProd.datasourceFotos.DataSet.next;
      end;
      FrmMostrarForosProd.ShowModal;
      if FrmMostrarForosProd.UsarDatos then
      begin
        for i := 0 to FrmMostrarForosProd.ListaArc.Count-1 do
        begin
          if LstBxAdjuntosMail.Items.IndexOf(FrmMostrarForosProd.ListaArc.Strings[i])=-1 then
            LstBxAdjuntosMail.Items.Add(FrmMostrarForosProd.ListaArc.Strings[i]);  //Verificar si ponerlos en carpeta o sacarlos justo antes de envair el correo.
        end;
        btbtnAdjuntos.Font.Color:=clRed;
      end;
      FrmMostrarForosProd.Free;
    end
    else
      ShowMessage('El producto no tiene archivos asociados');
  end;
  BtBtnAdjuntos.Enabled:= LstBxAdjuntosMail.Count>0;
end;

procedure TfrmCotizaciones.DBGrdDetallesEditButtonClick(Sender: TObject);
var
  FrmListaProductos:TFrmListaProductos;
begin
  inherited;
  FrmListaProductos:=TFrmListaProductos.Create(Self);
  FrmListaProductos.DataSet:=DSAuxiliar.DataSet;
  FrmListaProductos.DataSet.Close;  //Adicional par evitar consulta anterior
  if DataSourceDetail.State=dsEdit then
  begin
    FrmListaProductos.Clave:=DataSourceDetail.DataSet.FieldByName('ClaveProducto').asString;
//      FrmListaProductos.EdtBuscar.Text:=FrmListaProductos.Identificador;
    FrmListaProductos.SpdBtnBuscarClick(FrmListaProductos.SpdBtnBuscar);
  end;
  FrmListaProductos.ShowModal;
  if FrmListaProductos.Acepto then
  begin
    //Tomar datos y colocar
    if DataSourceDetail.DataSet.State=dsBrowse then
       DataSourceDetail.DataSet.Edit;
    DataSourceDetail.DataSet.FieldByName('PrecioUnitario').AsFloat:=FrmListaProductos.Precio;
    DataSourceDetail.DataSet.FieldByName('IDProducto').AsInteger:=FrmListaProductos.IDProducto;
  //  DataSourceDetail.DataSet.FieldByName('Producto').AsInteger:=FrmListaProductos.Descripcion;
    DataSourceDetail.DataSet.FieldByName('ClaveProducto').asString:=FrmListaProductos.Identificador;

  end
  else
    if DataSourceDetail.State in [dsEdit, dsInsert] then
      DataSourceDetail.DataSet.Cancel;

  FrmListaProductos.Free;


  //ShowMessage('Entro al evento');
end;

procedure TfrmCotizaciones.DBGrdDetallesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  if Key=13 then
  begin
    key:=9;
    //Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TfrmCotizaciones.DBLkpCmbBxClienteClick(Sender: TObject);
begin
  inherited;
  //Para que abra la de direcciones //ene11/2016
   if DataSource.State in [dsInsert,dsEdit] then //Por si cambia de cliente
   begin
     dsDireccionCliente.dataset.close;
     TadoDataset(dsDireccionCliente.dataset).Parameters.ParamByName('IdPersona').value:= DBLkpCmbBxCliente.KeyValue; //DEberia Funcionar
     dsDireccionCliente.dataset.Open;

     DSDireccionenvios.dataset.Close;
     TadoDataset(DSDireccionenvios.dataset).Parameters.ParamByName('IdPersona').value:= DBLkpCmbBxCliente.KeyValue; //DEberia Funcionar
     DSDireccionenvios.dataset.Open;


     if dsDireccionCliente.dataset.RecordCount >=1 then
        DataSource.DataSet.FieldByName('IdDomicilioCliente').AsInteger:= dsDireccionCliente.dataset.Fieldbyname('IDPersonaDomicilio').AsInteger;
     TAdoDataSet(DSAntSaldos.DataSet).Parameters.ParamByName('IdPersonaReceptor').Value:=DBLkpCmbBxCliente.KeyValue;
     if not dsDireccionCliente.dataset.Fieldbyname('IDEnvioTipo').IsNull then //May18/16
       DataSource.DataSet.FieldByName('IDPaqueteria').AsInteger:=dsDireccionCliente.dataset.Fieldbyname('IDEnvioTipo').asInteger;  //May18/16
   end;
end;

procedure TfrmCotizaciones.FormCreate(Sender: TObject);
begin
  inherited;

  gFormGrid := TfrmCotizacionesGrid.Create(Self);
 // TfrmCotizacionesGrid(gFormGrid).CerrarGrid := actCloseGrid;  //Se vaa acolocar en el estandar hay que quitarlo de aca Ene 13/16
  DataSource.DataSet.open;
  DataSourceDetail.DataSet.Open;
  dmCotizacionesArchivos := TdmCotizacionesArchivos.Create(nil); //Pa ARchivos asociados

end;

procedure TfrmCotizaciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key = #13 then                                                 { if it's an enter key }
  begin
     if not (ActiveControl is TDBGrid) then
     begin       { if not on a TDBGrid }
       Key := #0;                                                        { eat enter key }
       Perform(WM_NEXTDLGCTL, 0, 0);                 { move to next control }
     end
     else if (ActiveControl is TDBGrid) then                { if it is a TDBGrid }
     with TDBGrid(ActiveControl) do
       if selectedindex < (fieldcount -1) then             { increment the field }
         selectedindex := selectedindex +1
       else
         selectedindex := 0;
  end;
end;

procedure TfrmCotizaciones.FormShow(Sender: TObject);
begin
  inherited;
//  LblDirCliente.Visible:=False;
//  DBLkpCmbBxDirCliente.Visible:=false;
  case FTipoDoc of
    1:begin
        SpdBtnCambioEstatus.Caption:='Acepta Cotización';
     //   TlBtnCambioEstatus.Hint:='Aceptar Cotización' ;   //Feb 9/16
        LblNoCotiza.Caption:='No.Cotización';
        PnlTitulo.Caption:='    Cotizaciones';
     (*   DBGrdDetalles.Columns[9].ReadOnly:=False;   //Abr 13/16
        DBGrdDetalles.Columns[10].ReadOnly:=True;*)
      end;
    2:begin
        SpdBtnCambioEstatus.Caption:='Genera Orden Salida';   //
        //   TlBtnCambioEstatus.Hint:= 'Generar Orden Salida';  //Feb 9/16
        LblNoCotiza.Caption:='No.Pedido';
        PnlTitulo.Caption:='    Pedidos';
     (*   DBGrdDetalles.Columns[9].ReadOnly:=true; //???  //Abr 13/16
        DBGrdDetalles.Columns[10].ReadOnly:=false;     *)
//       LblDirCliente.Visible:=True;
//       DBLkpCmbBxDirCliente.Visible:=True;
      end;
    3:SpdBtnCambioEstatus.Visible:=False; //SpdBtnCambioEstatus
  end;
 // TlBtnGenCotizaPDF.visible:= TlBtnCambioEstatus.Hint='Acepta Cotización'; //Feb 9/16    SpdBtnCambioEstatus.Caption
  SpdBtnGenPDFCotiza .visible:= SpdBtnCambioEstatus.Caption= 'Acepta Cotización';

 // TlBtnEnvioCorreo.Visible:=SpdBtnGenPDFCotiza .visible; //Para que desde el pedido tambien se pueda?? May 2/16
//  LstBxAdjuntosMail.Visible:=SpdBtnGenPDFCotiza .visible;    //May 2/16

end;

function TfrmCotizaciones.GenerarOrdenSalida(idDocumento: Integer): Boolean; //Nov 18/15
var
  id:integer;//Habilitado may 18/16 para usarse en InformacionEntregas
begin
//  Result:=False;

  dsordenSalida.DataSet.Open;
  DSOrdenSalidaItems.DataSet.Open;

  dsordenSalida.DataSet.Insert;
  dsordenSalida.DataSet.FieldByName('IDDocumentoSalida').asInteger:= idDocumento;
  dsordenSalida.DataSet.FieldByName('IDPersonaDomicilio').asInteger:=DataSource.DataSet.FieldByName('IDDomicilioCliente').asInteger;//may 20/16
  dsordenSalida.DataSet.FieldByName('FechaRegistro').AsDateTime:=Now;
  dsordenSalida.DataSet.FieldByName('Subtotal').AsFloat:=DataSource.DataSet.FieldByName('Subtotal').asFloat;

  dsordenSalida.DataSet.FieldByName('IVA').asFloat:=DataSource.DataSet.FieldByName('IVA').asFloat;
  dsordenSalida.DataSet.FieldByName('Total').asFloat:=DataSource.DataSet.FieldByName('Total').asFloat;
  dsordenSalida.DataSet.FieldByName('IDOrdenEstatus').asInteger:= 1;
  dsordenSalida.DataSet.Post;

//deshabilitado no usado  id:= dsordenSalida.DataSet.FieldByName('IDOrdenSalida').asInteger;//Habilitado may 18/16 para usarse en InformacionEntregas

  DataSourceDetail.DataSet.first; //Para aseguarase que ponga todos //Abr 13/16
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

      if  DataSourceDetail.DataSet.FieldByName('CantidadPendiente').AsFloat=  DataSourceDetail.DataSet.FieldByName('Cantidad').AsFloat then //Es la primera vez Ene 12/16
      begin
        //Actualizar todo para que se aparte en inventario// no se sabe quien lo tiene
        ActualizaPedidoXSurtirEnInventario(DataSourceDetail.DataSet.FieldByName('IDProducto').AsInteger,DataSourceDetail.DataSet.FieldByName('CantidadPendiente').AsFloat)
      end;

    end;
    DataSourceDetail.DataSet.next;
  end;
(*  //Crea información entregas    May 18/16   //No se creará desde aca... Mayo 20/16
  DSQryBorrar.DataSet.Close;
  TAdoQuery(DSQryBorrar.DataSet).Sql.Clear;  //Poner ceros en cada elemento de la tabla de documentosalidadetalle
  TAdoQuery(DSQryBorrar.DataSet).Sql.Add('Insert into InformacionEntregas (IdPersonaCliente, IdPersonaDomicilio, CondicionEntrega,'+
                                         'Observaciones, Conducto,Servicio,valor) '+
                                         'Values ('+DataSource.DataSet.FieldByName('IDPersona').asString+','+
                                         DataSource.DataSet.FieldByName('IDDomicilioCliente').asString+','+
                                         DataSource.DataSet.FieldByName('NotasInternas').asString+','''','+
                                         DataSource.DataSet.FieldByName('EnviarPor').asString+','+ DataSource.DataSet.FieldByName('Servicio').asString+','+
                                         DataSource.DataSet.FieldByName('Total').asString);
  TAdoQuery(DSQryBorrar.DataSet).ExecSQL;

  //HAsta aca May 18/16  *)


  DSQryBorrar.DataSet.Close;
  TAdoQuery(DSQryBorrar.DataSet).Sql.Clear;  //Poner ceros en cada elemento de la tabla de documentosalidadetalle
  TAdoQuery(DSQryBorrar.DataSet).Sql.Add('Update DocumentosSalidasDetalles SET CantidadPendiente=0 where IDDocumentoSalida='+intToStr(idDocumento));
  TAdoQuery(DSQryBorrar.DataSet).ExecSQL;

  //Actualizar en un sólo paso los n detales
  REsult:=True;

end;

function TfrmCotizaciones.RevisaFaltantes(IDDocumento: Integer): Boolean;
begin //Nov 23/15
  TADODataset(dsAuxiliar.dataset).Close;
  TADODataset(dsAuxiliar.dataset).CommandText:='Select Sum(CantidadPendiente) Pendiente, count (*) cant From DocumentosSalidasDetalles where IdDocumentoSalida='+intTosTR(IDDocumento);
  dsAuxiliar.dataset.Open;

  Result:=(dsAuxiliar.DataSet.FieldByName('Pendiente').AsFloat >0) or (dsAuxiliar.DataSet.FieldByName('cant').AsInteger=0); //May 2/16 Para evitar q  ue los que estan dando de alta se bloqueen




end;

procedure TfrmCotizaciones.SetEnviaCotizacion(const Value: TBasicAction);
begin
  EnviaCotizacion:=Value;
  TlBtnEnvioCorreo.Action:=Value;
  TlBtnEnvioCorreo.ImageIndex:=24;

end;

procedure TfrmCotizaciones.SetGenPDFCotiza(const Value: TBasicAction);
begin
  GenPDFCotiza:=Value;

 (* deshabilitado no funciona
  TlBtnGenCotizaPDF.Action:=Value;
  TlBtnGenCotizaPDF.ImageIndex:=23;
  TlBtnGenCotizaPDF.Hint:='Genera Cotización en PDF';*)
  SpdBtnGenPDFCotiza.Action:=Value;
end;

procedure TfrmCotizaciones.SetTipoDoc(const Value: Integer);
begin
  FTipoDoc := Value;
  TfrmCotizacionesGrid(gFormGrid).TipoDocumento:=Value;
end;

procedure TfrmCotizaciones.SpdBtnAdjuntarArchivosClick(Sender: TObject);
begin //Siempre que exista un doc de salida //Movido de posición.. May 18/16
  inherited;
  //LLamar Crear y mostrar
  dmCotizacionesArchivos.dsMaster.DataSet:=DSCotizacionArchivo.DataSet;
  dmCotizacionesArchivos.MasterSource := DataSource;
  dmCotizacionesArchivos.MasterFields := 'IdDocumentoSalida';
  dmCotizacionesArchivos.ShowModule(nil,'');
 // DataSourceFotos.DataSet.Close;
 // DataSourceFotos.DataSet.Open;

end;

procedure TfrmCotizaciones.SpdBtnBuscaParteClick(Sender: TObject);
begin
  inherited;
  FrmbuscaCliente:= TFrmBuscaCliente.Create(self);
  FrmbuscaCliente.DSBuscarCliente.DataSet:=DSAuxiliar.DataSet;

  FrmBuscaCliente.ShowModal;
 // DBLkpCmbBxCliente.KeyValue:=  FrmBuscaCliente.AIdPersona;
  datasource.DataSet.FieldByName('IDPersona').AsInteger:= FrmBuscaCliente.AIdPersona;
  DBLkpCmbBxClienteClick(DBLkpCmbBxCliente);
  DBLkupCmbBxDirAuxiliar.KeyValue:= FrmBuscaCliente.AIdPersonaDomicilio;
   FrmBuscaCliente.Free;
end;

procedure TfrmCotizaciones.SpdBtnCambioEstatusClick(Sender: TObject);
var
 res:Boolean;
 id:Integer; //Ene14/16
begin
  inherited;

  if (DataSource.DataSet.FieldByName('IDDocumentoSalidaTipo').AsInteger<3)then
  begin
    if DataSource.DataSet.FieldByName('IDDocumentoSalidaTipo').AsInteger=2  then
    begin
      if RevisaFaltantes(DataSource.DataSet.FieldByName('idDocumentoSalida').AsInteger)then
      begin
        res:=GenerarOrdenSalida(DataSource.DataSet.FieldByName('idDocumentoSalida').AsInteger);
        if res then
        begin
          if (DataSource.DataSet.State =dsBrowse) then //para Cambiar Estatus No Tipo
            DataSource.DataSet.Edit;
           DataSource.DataSet.FieldByName('idDocumentoSalidaEstatus').AsInteger:=4; //Nov 18/15 En proceso.. se cambiará luego a Cerrado si se surte todo
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
      DataSource.DataSet.FieldByName('IDDocumentoSalidaTipo').AsInteger:=DataSource.DataSet.FieldByName('IDDocumentoSalidaTipo').AsInteger+1;
      DataSource.DataSet.Post;
    end;
  end;

  id:=DataSource.DataSet.FieldByName('idDocumentoSalida').AsInteger; //Ene 14/16

  //rehacer consulta
  Datasource.dataset.close;
  Datasource.dataset.Open;
  Datasource.dataset.Locate('idDocumentoSalida',id,[]); //Ene 14/16

  DataSourceDetail.DataSet.Close;
  DataSourceDetail.DataSet.Open; // se cambio el refresh porque mostraba todo ..Jun 17/16
  //Si se ven deberia ubicarse en la modificada
 (* if res then // Abr 18/16
  begin
    if application.MessageBox('¿Ubicarse en la Orden de Salida Generada?') =idyes then


  end;*)
end;

procedure TfrmCotizaciones.TlBtnBorraClick(Sender: TObject);
begin

 //   inherited;
  //Porque borra nin confirmar si no se tiene
   if MessageDlg(strAllowDelete, mtConfirmation, mbYesNo, 0) = mrYes then
     DataSourceDetail.DataSet.Delete;
end;

procedure TfrmCotizaciones.TlBtnEnvioCorreoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if ChckBxAdjuntar.Checked then
  begin
    ShowMessage('Crear Archivos');

  end;
end;

end.
