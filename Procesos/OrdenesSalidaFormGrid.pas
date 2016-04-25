unit OrdenesSalidaFormGrid;

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
  Vcl.ExtCtrls, Vcl.Menus, cxContainer, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons, Vcl.StdCtrls,Data.Win.ADODB;

type
  TFrmOrdenesSalidaGrid = class(T_frmStandarGFormGrid)
    tvMasterFechaRegistro: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterPersonaRecolecta: TcxGridDBColumn;
    tvMasterPersonaRevisa: TcxGridDBColumn;
    tvMasterPersonaEmpaca: TcxGridDBColumn;
    tvMasterSubtotal: TcxGridDBColumn;
    tvMasterIVA: TcxGridDBColumn;
    tvMasteridOrdenSalida: TcxGridDBColumn;
    tvMasterNombreCliente: TcxGridDBColumn;
    tvMasterIdentificadorCte: TcxGridDBColumn;
    tvMasterIdDocumentoSalida: TcxGridDBColumn;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnConsulta: TSpeedButton;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    TlBtn: TToolButton;
    RdGrpEstado: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnConsultaClick(Sender: TObject);
    procedure RdGrpEstadoClick(Sender: TObject);
  private
    ffiltro: String;
    ffiltroEstado: String;
    procedure PoneFiltro;//Abr 19/16
    { Private declarations }
  public
    { Public declarations }
    property FiltroCon:String read ffiltro write ffiltro; //Abr 19/16
    Property FiltroEst:String read ffiltroEstado write ffiltroEstado;//abr 20/16
  end;

var
  FrmOrdenesSalidaGrid: TFrmOrdenesSalidaGrid;

implementation

{$R *.dfm}

uses OrdenesSalidasDM;

procedure TFrmOrdenesSalidaGrid.FormCreate(Sender: TObject);
var         //Aban Abr 19/16
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  DEcodeDate(Date,a,m,d);
  ffiltroEstado:='';
  cxDtEdtDesde.Date:=EncodeDate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //Día anterior
  cxDtEdtHasta.Date:=FechaAux;
  SpdBtnConsultaClick(SpdBtnConsulta);
end;

procedure TFrmOrdenesSalidaGrid.SpdBtnConsultaClick(Sender: TObject);
const
    TxtSQL='select idOrdenSalida, IdDocumentoSalida, IdOrdenEstatus, IdPersonaRecolecta,'
 +'IdPersonaRevisa, IdPersonaEmpaca, FechaRegistro, Total, FechaIniRecolecta, FechaFinRecolecta,'
 +'FechaIniRevisa, FechaFinRevisa, FechaIniEmpaca, FechaFinEmpaca, IdPersonaAutoriza, FechaAutoriza,'
 +'IdGeneraCFDITipoDoc, Acumula, Subtotal, IVA from OrdenesSalidas ';

  orden=' Order by IdOrdenEstatus,FechaRegistro Desc';
begin
  inherited;
  PoneFiltro;
  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ffiltro+ffiltroEstado+orden;
  if ffiltro <>''then                                        //Abr.20/16
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;

  end;

  Tadodataset(datasource.DataSet).open;

end;
procedure TFrmOrdenesSalidaGrid.PoneFiltro;
begin
  //Ver si existe un todos o alguna restriccion
  ffiltro:='where fechaRegistro >:Fini and FechaRegistro<:FFin';

end;
procedure TFrmOrdenesSalidaGrid.RdGrpEstadoClick(Sender: TObject);
begin
  inherited;
  ffiltroEstado:='';
  if RdGrpEstado.ItemIndex >0then
    ffiltroEstado:=' and IdOrdenEstatus='+ IntToSTR(RdGrpEstado.ItemIndex)+' ';
  SpdBtnConsultaClick(SpdBtnConsulta);
end;

end.
