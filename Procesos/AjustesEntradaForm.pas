 unit AjustesEntradaForm;

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
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, cxContainer, dxCore, cxDateUtils, Vcl.StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons, Data.Win.ADODB, ShellApi;

type
  TfrmAjustesEntradasGrid = class(T_frmStandarGFormGrid)
    tvMasterIdOrdenEntrada: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterTipoCambio: TcxGridDBColumn;
    tvMasterSubTotal: TcxGridDBColumn;
    tvMasterIVA: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasteralmacen: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterTipoOrden: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    TlBtnImpresion: TToolButton;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnConsultaFecha: TSpeedButton;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    tvMasterIdDocumentoEntrada: TcxGridDBColumn;
    tvMasterIdAlmacen: TcxGridDBColumn;
    tvMasterIdOrdenEstatus: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdUsuario: TcxGridDBColumn;
    tvMasterIdOrdenEntradaTipo: TcxGridDBColumn;
    procedure TlBtnImpresionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnConsultaFechaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAjustesEntradasGrid: TfrmAjustesEntradasGrid;

implementation

{$R *.dfm}

uses AjustesEntradaDM, rptAjustesEntradasDM;

procedure TfrmAjustesEntradasGrid.FormCreate(Sender: TObject);
var A,m,d:Word;
FechaAux:TdateTime;
begin
  inherited;
  decodedate(date,a,m,d);

  cxDtEdtDesde.date:= date;//encodedate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  fechaAux:=encodedate(a,m,1);
  cxDtEdtHasta.date :=Date+1;//fechaAux-1;

end;

procedure TfrmAjustesEntradasGrid.SpdBtnConsultaFechaClick(Sender: TObject);
begin
  inherited;
//Consulta                                                                TAdoDAtaSet(rptAjusteEntrada.dsReport.Dataset)
  datasource.dataset.Close;
  TAdoDAtaSet(datasource.dataset).Parameters.ParamByName('Fini').Value:=cxDtEdtDesde.Date;
  TAdoDAtaSet(datasource.dataset).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  datasource.dataset.Open;
end;

procedure TfrmAjustesEntradasGrid.TlBtnImpresionClick(Sender: TObject);
var ArchiPDF: TFileName;                      //Ene 23/17
   rptAjusteEntrada: TdmRptAjustesEntrada;
begin
  inherited;

  ArchiPDF:='AjusteEntrada.PDF';
  rptAjusteEntrada:= TdmRptAjustesEntrada.Create(Self);
  try
    rptAjusteEntrada.Title:= 'AJUSTE DE ENTRADA DESDE ' + DateTostr(cxDtEdtDesde.Date)+' HASTA ' + DateTostr(cxDtEdtHasta.Date);
    TAdoDAtaSet(rptAjusteEntrada.dsReport.Dataset).Parameters.ParamByName('Fini').Value:=cxDtEdtDesde.Date;
    TAdoDAtaSet(rptAjusteEntrada.dsReport.Dataset).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
    rptAjusteEntrada.PDFFileName:= ArchiPDF;
    rptAjusteEntrada.Execute
  finally
    rptAjusteEntrada.Free;
  end;
  if FileExists(ArchiPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);

end;

end.
