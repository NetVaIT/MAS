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
    procedure FormCreate(Sender: TObject);
    procedure TlBtnBorraClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure SpdBtnCambioEstatusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure TlBtnEnvioCorreoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtBtnAdjuntosClick(Sender: TObject);
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
  , ProductosFotosMostrar;    //    ,GeneraOrdenSalida

function TfrmCotizaciones.ActualizaPedidoXSurtirEnInventario(
  IdProducto: Integer; Cantidad: Double): Boolean; //Ene 12/16
begin
  dsQryBorrar.DataSet.Close;
  TAdoQuery(DSQryBorrar.DataSet).Sql.Clear;
  TAdoQuery(DSQryBorrar.DataSet).Sql.Add('Update Inventario SET PedidoXSurtir=PedidoXSurtir +'+floatToStr(Cantidad)+' where IDProducto='+intToStr(idProducto) );//Pendiente de agregar almacen feb 2/16
  TAdoQuery(DSQryBorrar.DataSet).ExecSQL;
end;

procedure TfrmCotizaciones.BtBtnAdjuntosClick(Sender: TObject);
begin
  inherited;
  CrearArchivos(LstBxAdjuntosMail,'AdjCorreo\');
  btbtnAdjuntos.Font.Color:=clGreen;
  LstBxAdjuntosMail.Clear;
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
end;

procedure TfrmCotizaciones.DataSourceStateChange(Sender: TObject);
begin
  inherited;                                                      //Agregado edit verificar ene28/16
  DBLkupCmbBxDirAuxiliar.Visible:= (DataSource.State in [dsInsert,dsEdit] ) and(SpdBtnCambioEstatus.Enabled);  //  SpdBtnCambioEstatus

end;

procedure TfrmCotizaciones.DBGrid1DblClick(Sender: TObject);
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
end;

procedure TfrmCotizaciones.DBGrid1EditButtonClick(Sender: TObject);
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

procedure TfrmCotizaciones.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
  //Para que abra la de direcciones //ene11/2016
   if DataSource.State in [dsInsert,dsEdit] then //Por si cambia de cliente
   begin
     dsDireccionCliente.dataset.close;
     TadoDataset(dsDireccionCliente.dataset).Parameters.ParamByName('IdPersona').value:= DBLookupComboBox1.KeyValue; //DEberia Funcionar
     dsDireccionCliente.dataset.Open;
     if dsDireccionCliente.dataset.RecordCount >=1 then
        DataSource.DataSet.FieldByName('IdDomicilioCliente').AsInteger:= dsDireccionCliente.dataset.Fieldbyname('IDPersonaDomicilio').AsInteger;

   end;
end;

procedure TfrmCotizaciones.FormCreate(Sender: TObject);
begin
  inherited;

  gFormGrid := TfrmCotizacionesGrid.Create(Self);
 // TfrmCotizacionesGrid(gFormGrid).CerrarGrid := actCloseGrid;  //Se vaa acolocar en el estandar hay que quitarlo de aca Ene 13/16
  DataSource.DataSet.open;
  DataSourceDetail.DataSet.Open;

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
      end;
    2:begin
        SpdBtnCambioEstatus.Caption:='Genera Orden Salida';   //
        //   TlBtnCambioEstatus.Hint:= 'Generar Orden Salida';  //Feb 9/16
        LblNoCotiza.Caption:='No.Pedido';
//       LblDirCliente.Visible:=True;
//       DBLkpCmbBxDirCliente.Visible:=True;
      end;
    3:SpdBtnCambioEstatus.Visible:=False; //SpdBtnCambioEstatus
  end;
 // TlBtnGenCotizaPDF.visible:= TlBtnCambioEstatus.Hint='Acepta Cotización'; //Feb 9/16    SpdBtnCambioEstatus.Caption
  SpdBtnGenPDFCotiza .visible:= SpdBtnCambioEstatus.Caption= 'Acepta Cotización';
  TlBtnEnvioCorreo.Visible:=SpdBtnGenPDFCotiza .visible;
  LstBxAdjuntosMail.Visible:=SpdBtnGenPDFCotiza .visible;

end;

function TfrmCotizaciones.GenerarOrdenSalida(idDocumento: Integer): Boolean; //Nov 18/15
//var
//  id:integer;
begin
//  Result:=False;

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

//  id:= dsordenSalida.DataSet.FieldByName('IDOrdenSalida').asInteger;

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
  DSQryBorrar.DataSet.Close;
  TAdoQuery(DSQryBorrar.DataSet).Sql.Clear;  //Poner ceros en cada elemento de la tabla de documentosalidadetalle
  TAdoQuery(DSQryBorrar.DataSet).Sql.Add('Update DocumentosSalidasDetalles SET CantidadPendiente=0 where IDDocumentoSalida='+intToStr(idDocumento));
  TAdoQuery(DSQryBorrar.DataSet).ExecSQL;

  //Actualizar en un sólo paso los n detales
  REsult:=True;
  (*   //Se genera pero se no se permite cambiar aca

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

  //Si se ven deberia ubicarse en la modificada

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
