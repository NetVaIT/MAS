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
  Vcl.Menus;

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
    Label1: TLabel;
    tvMasterEstatus: TcxGridDBColumn;
    ToolButton12: TToolButton;
    TlBtnEnvioCorreo: TToolButton;
    procedure tbarGridClick(Sender: TObject);
    procedure RdGrpSeleccionClick(Sender: TObject);
    procedure TlBtnConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChckLstImpresionClick(Sender: TObject);
    procedure TlBtnRegPDFMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    PreFacturas: TBasicAction;
    RegeneraPDF: TBasicAction;
    Consulta: TBasicAction;  //Dic 29/15
    EnvioCorreo: TBasicAction;//Feb 17/16
    ffiltro: String;
    fImpresionGD: Integer; //Dic 29/15
    procedure SetPreFacturas(const Value: TBasicAction);
    procedure SetRegeneraPDF(const Value: TBasicAction);
    procedure SetConsulta(const Value: TBasicAction);
    procedure setfimpresionGD(const Value: Integer); //Dic 29/15

    procedure SetEnvioCorreo(const Value: TBasicAction); //Feb 17/16


    { Private declarations }
  public
    { Public declarations }

     property ActPreFacturas : TBasicAction read PreFacturas write SetPreFacturas;
     property ActRegPDF : TBasicAction read RegeneraPDF write SetRegeneraPDF;
     property ActBusqueda : TBasicAction read Consulta write SetConsulta; //Dic 29/15
     property FiltroCon:String read ffiltro write ffiltro; //Dic 29/15
     property GRImpresion:Integer read fImpresionGD write setfimpresionGD;
     property ActEnvioCorreo : TBasicAction read EnvioCorreo write SetEnvioCorreo; //Dic 29/15

     function SacaValor:Integer;
  end;

var
  frmFacturasGrid: TfrmFacturasGrid;

implementation

{$R *.dfm}

uses FacturasDM;

{ TfrmFacturasGrid }


procedure TfrmFacturasGrid.ChckLstImpresionClick(Sender: TObject);
begin
  inherited;
  fImpresionGD:=SacaValor;
end;



procedure TfrmFacturasGrid.FormShow(Sender: TObject);
var i :integer;
begin
  inherited;
  for i:=0 to ChckLstImpresion.Count-1 do
  begin
    ChckLstImpresion.Checked[i]:=true;
  end;
  RdGrpSeleccion.Repaint;
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
end;

procedure TfrmFacturasGrid.setfimpresionGD(const Value: Integer);
begin

  fImpresionGD := Value;
    //Ver si aca saca valor

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

procedure TfrmFacturasGrid.tbarGridClick(Sender: TObject);
begin
  inherited;
  //Llama al regenerar
end;

procedure TfrmFacturasGrid.TlBtnConsultaClick(Sender: TObject);
const TxtSQL='select  IdCFDI, IdCFDITipoDocumento, IdCFDIFormaPago, IdMetodoPago, IdMoneda, IdPersonaEmisor, IdPersonaReceptor,'+
'IdDocumentoCBB, IdDocumentoXML, IdDocumentoPDF,IdOrdenSalida, IdCFDIEstatus, IdCFDIFacturaGral, IdClienteDomicilio,'+
'CuentaCte, TipoCambio, TipoComp, Serie, Folio, Fecha, LugarExpedicion, Sello, CondPago, NoCertificado, Certificado,'+
'SubTotal, Descto, MotivoDescto, Total, NumCtaPago,CadenaOriginal, TotalImpuestoRetenido, TotalImpuestoTrasladado,'+
'SaldoDocumento, FechaCancelacion, Observaciones,PorcentajeIVA, EmailCliente, UUID_TB,'+
'SelloCFD_TB, SelloSAT_TB,CertificadoSAT_TB,FechaTimbrado_TB  from CFDI ';
begin
  inherited;
  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ffiltro;
  Tadodataset(datasource.DataSet).open;

end;

procedure TfrmFacturasGrid.TlBtnRegPDFMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  fImpresionGD:=SacaValor;
end;

end.


