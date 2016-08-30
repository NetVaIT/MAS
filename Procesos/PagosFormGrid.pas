unit PagosFormGrid;

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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons,Data.Win.ADODB;

type
  TFrmPagosGrid = class(T_frmStandarGFormGrid)
    tvMasterFolioPago: TcxGridDBColumn;
    tvMasterSeriePago: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterSaldo: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterNombreCliente: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    tvMasterBanco: TcxGridDBColumn;
    tvMasterIdentificador: TcxGridDBColumn;
    PnlBusqueda: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpdBtnConsulta: TSpeedButton;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    ToolButton11: TToolButton;
    ChckBxFechaPago: TCheckBox;
    ChckBxConSaldo: TCheckBox;
    procedure SpdBtnConsultaClick(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtNombreChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FfiltroNombre: String;
    ffiltro: String;
    ffiltroFec: String;
    function GetFFiltroNombre: String;
    procedure PoneFiltro;
    { Private declarations }
  public
    { Public declarations }
    property FiltroCon:String read ffiltro write ffiltro; //May 30/16
    property FiltroFecha:String read ffiltroFec write ffiltroFec; //May 30/16
    Property AFiltroNombre:String read GetFFiltroNombre write FfiltroNombre; //May 30/16

  end;

var
  FrmPagosGrid: TFrmPagosGrid;

implementation

{$R *.dfm}

uses PagosDM;

procedure TFrmPagosGrid.EdtNombreChange(Sender: TObject);
begin
  inherited;
  if  edtNombre.Text<>'' then
  begin
    FfiltroNombre:=' inner join Personas P On P.IdPersona=IdPersonaCliente and P.RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TFrmPagosGrid.EdtNombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=13 then
  begin
    key:=0;
    SpdBtnConsulta.Click;
  end;
end;

procedure TFrmPagosGrid.FormCreate(Sender: TObject);
var         //Aban Abr 19/16
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;
  DEcodeDate(Date,a,m,d);
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
//  PoneFiltro; //May 30/16    DEshabilitado de aca
//  SpdBtnConsultaClick(SpdBtnConsulta);
end;

procedure TFrmPagosGrid.FormShow(Sender: TObject);
begin
  inherited;
  PoneFiltro;//  colocado aca ago 23/16
  SpdBtnConsultaClick(SpdBtnConsulta);
end;

function TFrmPagosGrid.GetFFiltroNombre: String;
begin
  Result := FfiltroNombre;
end;

procedure TFrmPagosGrid.SpdBtnConsultaClick(Sender: TObject);
const
   TxtSQL='select IdPagoRegistro, IdBanco, IdMetodoPago, IdPersonaCliente, '+
   'IdCuentaBancariaEstadoCuenta, Fecha, Referencia, Importe, Saldo, Observaciones,'+
   'IdDomicilioCliente, FolioPago, SeriePago from PagosRegistros ';

begin
  inherited;
   PoneFiltro;
  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltroNombre+ffiltro;
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro);
  if ffiltroFec <>''then                                                //Abr.20/16
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;

  end;

  Tadodataset(datasource.DataSet).open;

end;

procedure TFrmPagosGrid.PoneFiltro;
var
Aux:string;
begin
  Aux:='where';
  if ChckBxFechaPago.Checked then
    ffiltroFec:=' Fecha >:Fini and Fecha<:FFin '
  else
    ffiltroFec:='';
  Aux:=Aux+ffiltroFec;
  if ChckBxConSaldo.Checked then
    Ffiltro:=' Saldo > 0 '
  else
    Ffiltro:='';

  if ffiltro<>'' then
  begin
    if Aux='where'then
     FFiltro:=Aux+FFiltro
    else
      FFiltro:= Aux+ 'and'+FFiltro;
  end
  else
    if Aux<>'where'then
      ffiltro:=Aux;
end;

end.
