unit AjustesSalidasForm;

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
  cxGrid, Vcl.ExtCtrls,Data.Win.ADODB, ShellApi, cxContainer, dxCore,
  cxDateUtils, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.Buttons;

type
  TfrmAjustesSalidasForm = class(T_frmStandarGFormGrid)
    tvMasteridOrdenSalida: TcxGridDBColumn;
    tvMasterIdOrdenEstatus: TcxGridDBColumn;
    tvMasterIdPersonaRecolecta: TcxGridDBColumn;
    tvMasterFechaRegistro: TcxGridDBColumn;
    tvMasterSubtotal: TcxGridDBColumn;
    tvMasterIVA: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterIdGeneraCFDITipoDoc: TcxGridDBColumn;
    tvMasterAcumula: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIDOrdenSalidaTipo: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterIdAlmacen: TcxGridDBColumn;
    tvMasterordenSalidaTipo: TcxGridDBColumn;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnConsultaFecha: TSpeedButton;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    TlBtnReporteAjusteSalida: TToolButton;
    tvMasterOrdenEstatus: TcxGridDBColumn;
    tvMasterIdUsuario: TcxGridDBColumn;
    procedure SpdBtnConsultaFechaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TlBtnReporteAjusteSalidaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses AjustesSalidasDM, rptAjustesSalidasDM;

procedure TfrmAjustesSalidasForm.FormCreate(Sender: TObject);
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

procedure TfrmAjustesSalidasForm.SpdBtnConsultaFechaClick(Sender: TObject);
begin
  inherited;
  datasource.dataset.Close;
  TAdoDAtaSet(datasource.dataset).Parameters.ParamByName('Fini').Value:=cxDtEdtDesde.Date;
  TAdoDAtaSet(datasource.dataset).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  datasource.dataset.Open;
end;

procedure TfrmAjustesSalidasForm.TlBtnReporteAjusteSalidaClick(Sender: TObject);
var ArchiPDF: TFileName;                      //Ene 23/17
   rptAjusteSalida: TdmRptAjusteSalida;
begin
  inherited;

  ArchiPDF:='AjusteSalida.PDF';
  rptAjusteSalida:= TdmRptAjusteSalida.Create(Self);
  try
    rptAjusteSalida.Title:= 'AJUSTE DE SALIDA DESDE ' + DateTostr(cxDtEdtDesde.Date)+' HASTA ' + DateTostr(cxDtEdtHasta.Date);
    TAdoDAtaSet(rptAjusteSalida.dsReport.Dataset).Parameters.ParamByName('Fini').Value:=cxDtEdtDesde.Date;
    TAdoDAtaSet(rptAjusteSalida.dsReport.Dataset).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
    rptAjusteSalida.PDFFileName:= ArchiPDF;
    rptAjusteSalida.Execute
  finally
    rptAjusteSalida.Free;
  end;
  if FileExists(ArchiPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);


end;

end.
