unit FacturasFormGrid;

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
  cxNavigator, Data.DB, cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Shellapi, Vcl.StdCtrls,Data.Win.ADODB, Vcl.CheckLst, math,
  Vcl.Menus, cxContainer, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFacturasGrid = class(T_frmStandarGFormGrid)
    tvMasterTipoComp: TcxGridDBColumn;
    tvMasterSerie: TcxGridDBColumn;
    tvMasterFolio: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterTotalImpuestoTrasladado: TcxGridDBColumn;
    tvMasterSaldoDocumento: TcxGridDBColumn;
    tvMasterFechaCancelacion: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterUUID_TB: TcxGridDBColumn;
    tvMasterFechaTimbrado_TB: TcxGridDBColumn;
    tvMasterSubTotal: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterTipoDocumento: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    ToolButton11: TToolButton;
    TlBtnPrefactura: TToolButton;
    TlBtnRegPDF: TToolButton;
    TlBtnConsulta: TToolButton;
    RdGrpSeleccion: TRadioGroup;
    ChckLstImpresion: TCheckListBox;
    LblImpresion: TLabel;
    tvMasterEstatus: TcxGridDBColumn;
    ToolButton12: TToolButton;
    TlBtnEnvioCorreo: TToolButton;
    TlBtnGenFactDiaria: TToolButton;
    ToolButton14: TToolButton;
    RdGrpNotasVentas: TRadioGroup;
    TlBtnImpNotaVenta: TToolButton;
    cxDtEdtDia: TcxDateEdit;
    PnlFechas: TPanel;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnConsultaFecha: TSpeedButton;
    PnlBusqueda: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    ChckBxXFecha: TCheckBox;
    ChckBxFactVivas: TCheckBox;
    TlBtnReporteUtilidad: TToolButton;
    TlBtnReporteDiarioFacturas: TToolButton;
    TlBtnGuia: TToolButton;
    ToolButton15: TToolButton;
    TlBtnArchivos: TToolButton;
    DSVerificaExistenciaGuia: TDataSource;
    PnlDocumentos: TPanel;
    DsVerificaDocumentos: TDataSource;
    DBGrdDocs: TDBGrid;
    BtBtnCerrar: TBitBtn;
    BtBtnMostrar: TBitBtn;
    TlBtnAplicaOSPendiente: TToolButton;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterIdCFDIFormaPago: TcxGridDBColumn;
    tvMasterIdMetodoPago: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdPersonaEmisor: TcxGridDBColumn;
    tvMasterIdPersonaReceptor: TcxGridDBColumn;
    tvMasterIdCFDITipoDocumento: TcxGridDBColumn;
    tvMasterIdDocumentoCBB: TcxGridDBColumn;
    tvMasterIdDocumentoXML: TcxGridDBColumn;
    tvMasterIdDocumentoPDF: TcxGridDBColumn;
    tvMasterIdCFDIEstatus: TcxGridDBColumn;
    tvMasterIdCFDIFacturaGral: TcxGridDBColumn;
    tvMasterCuentaCte: TcxGridDBColumn;
    tvMasterTipoCambio: TcxGridDBColumn;
    tvMasterLugarExpedicion: TcxGridDBColumn;
    tvMasterSello: TcxGridDBColumn;
    tvMasterCondPago: TcxGridDBColumn;
    tvMasterNoCertificado: TcxGridDBColumn;
    tvMasterCertificado: TcxGridDBColumn;
    tvMasterDescto: TcxGridDBColumn;
    tvMasterMotivoDescto: TcxGridDBColumn;
    tvMasterNumCtaPago: TcxGridDBColumn;
    tvMasterCadenaOriginal: TcxGridDBColumn;
    tvMasterTotalImpuestoRetenido: TcxGridDBColumn;
    tvMasterPorcentajeIVA: TcxGridDBColumn;
    tvMasterEmailCliente: TcxGridDBColumn;
    tvMasterSelloCFD_TB: TcxGridDBColumn;
    tvMasterSelloSAT_TB: TcxGridDBColumn;
    tvMasterCertificadoSAT_TB: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    tvMasterIdClienteDomicilio: TcxGridDBColumn;
    tvMasterRFC: TcxGridDBColumn;
    tvMasterFormaPago: TcxGridDBColumn;
    tvMasterIdentificadorCte: TcxGridDBColumn;
    tvMasterIdOrdenSalida: TcxGridDBColumn;
    tvMasterRFCEmisor: TcxGridDBColumn;
    tvMasterTipoComprobante: TcxGridDBColumn;
    tvMasterDirCompletaCte: TcxGridDBColumn;
    tvMasterTotalEnLetra: TcxGridDBColumn;
    tvMasterMetPagoClaveSAT: TcxGridDBColumn;
    tvMasterClaveMoneda: TcxGridDBColumn;
    procedure tbarGridClick(Sender: TObject);
    procedure RdGrpSeleccionClick(Sender: TObject);
    procedure TlBtnConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChckLstImpresionClick(Sender: TObject);
    procedure TlBtnRegPDFMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RdGrpNotasVentasClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure cxDtEdtDiaPropertiesChange(Sender: TObject);
    procedure SpdBtnConsultaFechaClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure TlBtnReporteUtilidadClick(Sender: TObject);
    procedure TlBtnReporteDiarioFacturasClick(Sender: TObject);
    procedure TlBtnArchivosClick(Sender: TObject);
    procedure BtBtnCerrarClick(Sender: TObject);
    procedure BtBtnMostrarClick(Sender: TObject);
  private
    PreFacturas: TBasicAction;
    RegeneraPDF: TBasicAction;
    Consulta: TBasicAction;  //Dic 29/15
    EnvioCorreo: TBasicAction;//Feb 17/16
    ffiltro: String;
    fImpresionGD: Integer; //Dic 29/15
    ftipoDoc:Integer;
    FCFDIDiario: TBasicAction;   //Mar 30/16
    ImprimeNotaVenta: TBasicAction;
    ffiltroFecha: String;
    fOrden: String;
    ffiltroNombre: String;
    ffiltrovivas: String;
    FDocCotizacion: TBasicAction;
    FDocGuia: TBasicAction;
    FAplicaOSPendientes: TBasicAction;  //Abr 4/16
    procedure SetPreFacturas(const Value: TBasicAction);
    procedure SetRegeneraPDF(const Value: TBasicAction);
    procedure SetConsulta(const Value: TBasicAction);
    procedure setfimpresionGD(const Value: Integer); //Dic 29/15

    procedure SetEnvioCorreo(const Value: TBasicAction);
    procedure SetFCFDIDiario(const Value: TBasicAction);

    procedure SetImprimeNotaVenta(const Value: TBasicAction);
    procedure PoneRangoFechas;
    function GetFFiltroNombre: String; //Feb 17/16

    procedure ImprimeUtilidades(Fini,FFin:TDateTime; Tipo: Integer);
    procedure SETFDocCotizacion(const Value: TBasicAction);
    procedure SETFDocGuia(const Value: TBasicAction);
    procedure SETFAplicaOSPendientes(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }

     property ActPreFacturas : TBasicAction read PreFacturas write SetPreFacturas;
     property ActRegPDF : TBasicAction read RegeneraPDF write SetRegeneraPDF;
     property ActBusqueda : TBasicAction read Consulta write SetConsulta; //Dic 29/15
     property FiltroCon:String read ffiltro write ffiltro; //Dic 29/15
     property GRImpresion:Integer read fImpresionGD write setfimpresionGD;
     property ActEnvioCorreo : TBasicAction read EnvioCorreo write SetEnvioCorreo; //Dic 29/15
     property tipoDocumento:Integer read ftipoDoc write fTipoDoc;  //Mar 30/16
     function SacaValor:Integer;
     property ActFacturaDiaria : TBasicAction read FCFDIDiario write SetFCFDIDiario; //Mar 31/16
     Property ActImprimeNotaVenta: TBasicAction read ImprimeNotaVenta write SetImprimeNotaVenta;  //Abr 4/16
     property FiltroFecha: String read ffiltroFecha write ffiltroFecha;   //Abr 19/16
     Property ElOrden :String read fOrden write fOrden;
     property FiltroNombre:String read GetFFiltroNombre write ffiltroNombre;    //May 26/16
     property FiltroVivas:String read ffiltrovivas write ffiltrovivas; //May 30/16

    property ActDocsCotizacion: TBasicAction read FDocCotizacion  write SETFDocCotizacion;  //Ago 2/16
    property ActDocGuia: TBasicAction read FDocGuia  write SETFDocGuia; //Ago 2 /16
    property ActAplicaOSPendientes: TBasicAction read FAplicaOSPendientes  write SETFAplicaOSPendientes; //Dic28 /16
  end;

var
  frmFacturasGrid: TfrmFacturasGrid;

implementation

{$R *.dfm}

uses FacturasDM, ImpresosSalidasDM, rptRegistroDiarioFacturasDM;

{ TfrmFacturasGrid }


procedure TfrmFacturasGrid.BtBtnCerrarClick(Sender: TObject);
begin
  inherited;
  PnlDocumentos.Visible:=false;
end;

procedure TfrmFacturasGrid.BtBtnMostrarClick(Sender: TObject);
begin
  inherited;
  ActDocsCotizacion.Execute;
  PnlDocumentos.Visible:=False;
end;

procedure TfrmFacturasGrid.ChckLstImpresionClick(Sender: TObject);
begin
  inherited;
  fImpresionGD:=SacaValor;
end;



procedure TfrmFacturasGrid.cxDtEdtDiaPropertiesChange(Sender: TObject);
begin
  inherited;  //Verificar que el rdg este en 0
  forden:= '';
  if (RdGrpNotasVentas.itemindex=0) and cxDtEdtDia.Visible then
  begin
    ffiltro:='where IdCFDITipoDocumento=4 and IDCFDIEstatus= 1 and IdCFDIFacturaGral is NULL and fecha >'''+DateToStr(cxDtEdtDia.Date -1)+''' and Fecha <'''+DateToStr(cxDtEdtDia.Date +1)+'''';
    TlBtnConsultaClick(TlBtnConsulta);
    TlBtnGenFactDiaria.Enabled:=(RdGrpNotasVentas.itemindex=0)and (datasource.dataset.RecordCount>0);
  end;
end;

procedure TfrmFacturasGrid.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  TlBtnRegPDF.Enabled:= DataSource.DataSet.FieldByName('IdCFDIEstatus').AsInteger=2;//Solo vigentes //ver si canceladasa tambien
  TlBtnEnvioCorreo.Enabled:= DataSource.DataSet.FieldByName('IdCFDIEstatus').AsInteger=2;

   //Ago 2/16 desde
  if not DataSource.DataSet.FieldByName('IdOrdenSalida').isNull then
  begin
    DSVerificaExistenciaGuia.DataSet.Close;
    TAdoDataset(DSVerificaExistenciaGuia.DataSet).Parameters.ParamByName('IdOrdenSalida').Value:= DataSource.DataSet.FieldByName('IdOrdenSalida').asinteger ;
    DSVerificaExistenciaGuia.DataSet.Open;
    TlBtnGuia.Enabled:= (not DSVerificaExistenciaGuia.DataSet.Eof) and (not DSVerificaExistenciaGuia.DataSet.FieldByName('IdDocumentoGuia').isNull);

    DsVerificaDocumentos.DataSet.Close;
    TAdoDataset(DsVerificaDocumentos.DataSet).Parameters.ParamByName('IdOrdenSalida').Value:= DataSource.DataSet.FieldByName('IdOrdenSalida').asinteger ;
    DsVerificaDocumentos.DataSet.Open;
    TlBtnArchivos.Enabled:= (not DsVerificaDocumentos.DataSet.Eof) and (not DsVerificaDocumentos.DataSet.FieldByName('IdDocumento').isNull);
  end
  else
  begin
    TlBtnGuia.Enabled:= False;
    TlBtnArchivos.Enabled:=False;
  end;
  //Ago 2/16 hasta
end;

procedure TfrmFacturasGrid.EdtNombreChange(Sender: TObject);
begin
  inherited;
 if edtNombre.Text<>'' then   //May 26/16
  begin
    FfiltroNombre:='inner join Personas P On P.IdPersona=IdPersonaReceptor and P.RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TfrmFacturasGrid.EdtNombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin           //May 26/16
  inherited;
  if key=13 then
  begin
    key:=0;
    SpdBtnConsultaFecha.Click;
  end;
end;

procedure TfrmFacturasGrid.FormCreate(Sender: TObject);
var
  fechaAux:TDateTime;  //Cambiado aca.. Jul 25/16   para mantener el filtro al regresar a la consulta
  a,m,d:Word;
begin
  inherited;
  decodeDate(date,a,m,d);   //D. Abr 19/16
  cxDtEdtDesde.date:= encodedate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  fechaAux:=encodedate(a,m,1);
  cxDtEdtHasta.date :=fechaAux-1;


end;

procedure TfrmFacturasGrid.FormShow(Sender: TObject);
var
  i :integer;
 (* fechaAux:TDateTime;  //Abr 19/16
  a,m,d:Word;*)
begin
  inherited;
  for i:=0 to ChckLstImpresion.Count-1 do
  begin
    ChckLstImpresion.Checked[i]:=true;
  end;
  RdGrpSeleccion.Repaint;

  RdGrpNotasVentas.Visible:= tipoDocumento=4; //Mar 30/16
  RdGrpSeleccion.Visible:= (tipoDocumento<>4)and  (tipoDocumento<>5); ;  //Mar 30/16         //5 Fletes Ago 30/16
  ChckLstImpresion.Visible:= (tipoDocumento<>4)and  (tipoDocumento<>5); //Mar 30/16   //5 Fletes Ago 30/16
  LblImpresion.Visible:= (tipoDocumento<>4)and  (tipoDocumento<>5);//Mar 30/16      //5 Fletes Ago 30/16
  TlBtnGenFactDiaria.Visible:= tipoDocumento=4; //Mar 30/16
  TlBtnGenFactDiaria.Enabled:=(RdGrpNotasVentas.itemindex=0)and (datasource.dataset.RecordCount>0);
  TlBtnImpNotaVenta.Enabled:=  tipoDocumento=4;

  TlBtnReporteUtilidad.visible:=(tipoDocumento=4)or(TipoDocumento=1);
  Case TipoDocumento of
  1:TlBtnReporteUtilidad.Hint:='Reporte Facturas Expedidas, vigentes y dentro del rango de fechas';
  4:TlBtnReporteUtilidad.Hint:='Reporte Presupuestos dentro del rango de fechas';

  end;

  tvMasterEstatus.Visible:=TipoDocumento<>5; //Es paraFletes
  cxDtEdtDia.Date:=date;

(*  decodeDate(date,a,m,d);   //D. Abr 19/16
  cxDtEdtDesde.date:= encodedate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  fechaAux:=encodedate(a,m,1);
  cxDtEdtHasta.date :=fechaAux-1;     *)
  forden:= '';
  PnlFechas.Visible:= (RdGrpNotasVentas.itemindex<>0);
  PoneRangoFechas;
  ffiltrovivas:=''; //Todas may 30/16
  TlBtnConsultaClick(TlBtnConsulta);
 //H Abr 19/16
end;
function TfrmFacturasGrid.GetFFiltroNombre: String;
begin
  Result := ffiltroNombre;
end;

procedure TfrmFacturasGrid.PoneRangoFechas; //Abr 19/16
begin
  ffiltroFecha:='';
  if RdGrpNotasVentas.ItemIndex<>0 then
  begin
    if ChckBxXFecha.checked then    //May 30/16
      ffiltroFecha:=' Fecha >:FIni and Fecha <:FFin';
  end;
end;


procedure TfrmFacturasGrid.RdGrpNotasVentasClick(Sender: TObject);
begin
  inherited; //Mar 30/16
  cxDtEdtDia.Date:=Date;
  forden:= '';
  case RdGrpNotasVentas.itemindex of
    0:begin   //Por aca no usar FiltroFecha
        if date=cxDtEdtDia.Date then
          ffiltro:='where IdCFDITipoDocumento=4 and IDCFDIEstatus= 1 and IdCFDIFacturaGral is NULL and fecha >(getDATE()-1)and Fecha <GETDATE()+1'
        else
          ffiltro:='where IdCFDITipoDocumento=4 and IDCFDIEstatus= 1 and IdCFDIFacturaGral is NULL and fecha >'''+DateToStr(cxDtEdtDia.Date -1)+''' and Fecha <'''+DateToStr(cxDtEdtDia.Date +1)+'''';
    end;
    1:begin
        ffiltro:='where IdCFDITipoDocumento=4 and IdCFDIFacturaGral is not NULL';
        forden:= ' order by IdCFDIFacturaGral'; ///Abar 19/16
    end;
    2:ffiltro:='where IdCFDITipoDocumento=4 ';//dehabilitado para que muestre TODO and IDCFDIEstatus<>5' ; //Ya que esos son presupuestos
    3:ffiltro:='where IdCFDITipoDocumento=4 and IDCFDIEstatus=5' ; //Presupuestos
   end;
  PoneRangoFechas;
  TlBtnConsultaClick(TlBtnConsulta);
  TlBtnGenFactDiaria.Enabled:=(RdGrpNotasVentas.itemindex=0)and (datasource.dataset.RecordCount>0);
  cxDtEdtDia.Visible:= (RdGrpNotasVentas.itemindex=0);

end;

procedure TfrmFacturasGrid.RdGrpSeleccionClick(Sender: TObject);
begin
  inherited;
  case RdGrpSeleccion.itemindex of
    0:ffiltro:='where idCFDIEstatus=1';// ' Where idCFDIEstatus=1'
    1:ffiltro:='Where idCFDIEstatus=2' ;
    2:ffiltro:='Where idCFDIEstatus=3' ;
    3:ffiltro:='' ;    //Todos
  end;
  TlBtnConsulta.hint:=ffiltro;
  TlBtnConsultaClick(TlBtnConsulta);  //Ver si algo másAbr 12/16

end;

function TfrmFacturasGrid.SacaValor: Integer;
var i, val :Integer;
begin
  val:=0;
  for i:=0 to ChckLstImpresion.Count-1 do
  begin
    if ChckLstImpresion.Checked[i] then
      val:=Val+ Trunc(power(2.0,i));
  end;
  result:=Val;
end;

procedure TfrmFacturasGrid.SetConsulta(const Value: TBasicAction);
begin
//  Consulta:=Value;
//  TlBtnConsulta.Action:=Value;
//  TlBtnConsulta.ImageIndex:=14; //Dic 30/15

end;





procedure TfrmFacturasGrid.SetEnvioCorreo(const Value: TBasicAction);
begin //Feb 17/16
  EnvioCorreo:=Value;
  TlBtnEnvioCorreo.Action:=Value;
  TlBtnEnvioCorreo.ImageIndex:=15;
  TlBtnEnvioCorreo.Hint:='Enviar '+Caption+' por Correo';
end;

procedure TfrmFacturasGrid.SETFAplicaOSPendientes(const Value: TBasicAction);
begin
  FAplicaOSPendientes := Value;
  TlBtnAplicaOSPendiente.Action:=value; //Poner boton
  TlBtnAplicaOSPendiente.Imageindex:=  21;
end;

procedure TfrmFacturasGrid.SetFCFDIDiario(const Value: TBasicAction);
begin
  FCFDIDiario := Value;
  TlBtnGenFactDiaria.Action:=Value;
  TlBtnGenFactDiaria.Imageindex:=16;
  TlBtnGenFactDiaria.Hint:='Genera Factura Diaria';
  TlBtnGenFactDiaria.ShowHint:=true;
end;

procedure TfrmFacturasGrid.SETFDocCotizacion(const Value: TBasicAction);
begin      //Ago 2/16
  FDocCotizacion := Value;
(*  TlBtnArchivos.Action:=VAlue;
  TlBtnArchivos.hint:='Mostrar Archivo Asociado';
  TlBtnArchivos.ImageIndex:=20;  deshabilitadopor la seleccion*)
end;

procedure TfrmFacturasGrid.SETFDocGuia(const Value: TBasicAction);
begin
  FDocGuia := Value;
  TlBtnGuia.Action:=Value;
  TlBtnGuia.ImageIndex:=12;
  TlBtnGuia.hint:='Mostrar Guia';
end;

procedure TfrmFacturasGrid.setfimpresionGD(const Value: Integer);
begin

  fImpresionGD := Value;
    //Ver si aca saca valor

end;

procedure TfrmFacturasGrid.SetImprimeNotaVenta(const Value: TBasicAction);   //Abr 4/16
begin
  ImprimeNotaVenta:=Value;
  TlBtnImpNotaVenta.Action:=Value;
  TlBtnImpNotaVenta.ImageIndex:=17;
  TlBtnImpNotaVenta.hint:='Imprimir Nota Venta';
end;

procedure TfrmFacturasGrid.SetPreFacturas(const Value: TBasicAction);
begin
 // PreFacturas:=Value;
 // TlBtnPrefactura.Action:=Value;
 // TlBtnPrefactura.ImageIndex:=12; //Dic 10/15
end;

procedure TfrmFacturasGrid.SetRegeneraPDF(const Value: TBasicAction);
begin //Dic 22/15
  RegeneraPDF:=Value;
  TlBtnRegPDF.Action:=Value;
  TlBtnRegPDF.Imageindex:=13;
  TlBtnRegPDF.Hint:='Impresión de Facturas por Departamento';
  TlBtnRegPDF.ShowHint:=true;
end;

procedure TfrmFacturasGrid.SpdBtnConsultaFechaClick(Sender: TObject);
begin
  inherited;
  if ChckBxFactVivas.Checked then // may 30/16
    ffiltrovivas:=' SaldoDocumento >0 '
  else
    ffiltrovivas:='';

  PoneRangoFechas;
  TlBtnConsultaClick(TlBtnConsulta);
end;

procedure TfrmFacturasGrid.tbarGridClick(Sender: TObject);
begin
  inherited;
  //Llama al regenerar
end;

procedure TfrmFacturasGrid.TlBtnArchivosClick(Sender: TObject);
begin
  inherited;
  PnlDocumentos.visible:= (not dsverificadocumentos.dataset.eof) and  (dsverificadocumentos.dataset.RecordCount>1);
 if not PnlDocumentos.Visible then
  begin
    if DsVerificaDocumentos.DataSet.RecordCount=1 then
      ActDocsCotizacion.Execute;

  end;

end;

procedure TfrmFacturasGrid.TlBtnConsultaClick(Sender: TObject);
const TxtSQL='select  IdCFDI, IdCFDITipoDocumento, IdCFDIFormaPago, IdMetodoPago, C.IdMoneda, IdPersonaEmisor, IdPersonaReceptor,'+
'IdDocumentoCBB, IdDocumentoXML, IdDocumentoPDF,IdOrdenSalida, IdCFDIEstatus, IdCFDIFacturaGral, IdClienteDomicilio,'+
'CuentaCte, TipoCambio, TipoComp, Serie, Folio, Fecha, LugarExpedicion, Sello, CondPago, NoCertificado, Certificado,'+
'SubTotal, Descto, MotivoDescto, Total,  NumCtaPago,CadenaOriginal, TotalImpuestoRetenido, TotalImpuestoTrasladado,'+
'SaldoDocumento, FechaCancelacion, Observaciones,PorcentajeIVA, EmailCliente, UUID_TB,'+
'SelloCFD_TB, SelloSAT_TB,CertificadoSAT_TB,FechaTimbrado_TB  from CFDI C ';
var AuxFiltro:String;
begin
  inherited;
  AuxFiltro:='';
  if FFiltroFecha<>'' then
  begin
    if ffiltro='' then
      AuxFiltro:=' where '+FFiltroFecha
    else
      AuxFiltro:=' and '+FFiltroFecha;
  end;
  //May 30/16
  if ffiltrovivas <>'' then
  begin
    if AuxFiltro<>'' then
      AuxFiltro:=AuxFiltro +' and '+ ffiltrovivas
    else
      if ffiltro='' then
        AuxFiltro:=' where '+ffiltrovivas
      else
        AuxFiltro:=' and '+ffiltrovivas;
  end;
 //Hasta aca May 30/16
  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ffiltroNombre+ffiltro+ AuxFiltro;
//  ShowMessage(TxtSQL+ffiltroNombre+ffiltro+ AuxFiltro);
  if ffiltroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;


  Tadodataset(datasource.DataSet).open;

end;

procedure TfrmFacturasGrid.TlBtnRegPDFMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  fImpresionGD:=SacaValor;
end;

procedure TfrmFacturasGrid.TlBtnReporteDiarioFacturasClick(Sender: TObject);
var ArchiPDF: TFileName;
   rptRegistroDiarioFact: TdmRPTRegistroDiarioFact;
begin
  inherited;

  ArchiPDF:='RegistroDiarioFacturas.PDF';
  rptRegistroDiarioFact:= TdmRPTRegistroDiarioFact.Create(Self);
  try
    rptRegistroDiarioFact.Title:= 'REGISTRO DIARIO FACTURAS ' + DateTostr(date);
    rptRegistroDiarioFact.PDFFileName:= ArchiPDF;
    rptRegistroDiarioFact.Execute
  finally
    rptRegistroDiarioFact.Free;
  end;
  if FileExists(ArchiPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmFacturasGrid.TlBtnReporteUtilidadClick(Sender: TObject);
begin
  inherited;
  //Sólo deberia usarse para presupuestos y Facturas vigentes
  ImprimeUtilidades(cxDtEdtDesde.Date, cxDtEdtHasta.Date,tipoDocumento );
end;

procedure TfrmFacturasGrid.ImprimeUtilidades(Fini,FFin:TDateTime; Tipo: Integer);
var                               //Jul 25/16
  DMImpresosSalidas:TDMImpresosSalidas;
  ArchiPDF:TFileName;
begin
  ArchiPDF:='ReporteFacturas.PDF';

  DMImpresosSalidas:=TDMImpresosSalidas.Create(Self);
  DMImpresosSalidas.ADODtStRepFactUtilidad.Close;
  DMImpresosSalidas.ADODtStCostoFactura.close;
  DMImpresosSalidas.ADODtStRepFactUtilidad.Parameters.ParamByName('IDTipoDoc').Value:=Tipo;  //Factura /Presupuesto
  DMImpresosSalidas.ADODtStRepFactUtilidad.Parameters.ParamByName('FIni').Value:=Fini;
  DMImpresosSalidas.ADODtStRepFactUtilidad.Parameters.ParamByName('FFin').Value:=FFin;
  DMImpresosSalidas.ADODtStRepFactUtilidad.Open;
  DMImpresosSalidas.ADODtStCostoFactura.Open;
  case Tipo of
   1: DMImpresosSalidas.TextoAuxiliar:='FACTURAS EXPEDIDAS DEL '+ DateTostr(Fini)+' AL '+ DateTostr(FFin) ;
   4: DMImpresosSalidas.TextoAuxiliar:='LISTADO DE CLIENTES (PEDIDOS) '+ DateTostr(Fini)+' AL '+ DateTostr(FFin)  ;
  end;

  DMImpresosSalidas.PrintPDFFile(4,1,False,ArchiPDF);
  DMImpresosSalidas.Free;
  if FileExists(ArchiPDF) then
    ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);
end;

end.


