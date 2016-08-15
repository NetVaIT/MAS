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
    PnlBusqueda: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    ChckBxXFecha: TCheckBox;
    tvMasternombreC: TcxGridDBColumn;
    tvMasterIdentificadorNvo: TcxGridDBColumn;
    tvMasterUsuarioCotiza: TcxGridDBColumn;
    tvMasterUsuarioPedido: TcxGridDBColumn;
    tvMasterFechaIniRecolecta: TcxGridDBColumn;
    tvMasterFechaFinRecolecta: TcxGridDBColumn;
    tvMasterFechaIniRevisa: TcxGridDBColumn;
    tvMasterFechaFinRevisa: TcxGridDBColumn;
    tvMasterFechaIniEmpaca: TcxGridDBColumn;
    tvMasterFechaFinEmpaca: TcxGridDBColumn;
    tvMasterFechaAutoriza: TcxGridDBColumn;
    tvMasterPersonaAutoriza: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnConsultaClick(Sender: TObject);
    procedure RdGrpEstadoClick(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    ffiltro: String;
    ffiltroEstado: String;
    FfiltroNombre: String;
    procedure PoneFiltro;
    function GetFFiltroNombre: String;//Abr 19/16
    { Private declarations }
  public
    { Public declarations }
    property FiltroCon:String read ffiltro write ffiltro; //Abr 19/16
    Property FiltroEst:String read ffiltroEstado write ffiltroEstado;//abr 20/16
    Property AFiltroNombre:String read GetFFiltroNombre write FfiltroNombre; //May 16/16

  end;

var
  FrmOrdenesSalidaGrid: TFrmOrdenesSalidaGrid;

implementation

{$R *.dfm}

uses OrdenesSalidasDM;

procedure TFrmOrdenesSalidaGrid.EdtNombreChange(Sender: TObject);
begin           //May 16/16
  inherited;
  if edtNombre.Text<>'' then
  begin
    FfiltroNombre:=' inner join DocumentosSalidas DS on DS.IdDocumentoSalida=OS.IDDocumentoSalida'
                  +' inner join Personas P On P.IdPersona=DS.IdPersona and P.RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TFrmOrdenesSalidaGrid.EdtNombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin             //May 16/16
  inherited;
  if key=13 then
  begin
    key:=0;
    SpdBtnConsulta.Click;
  end;
end;

procedure TFrmOrdenesSalidaGrid.FormCreate(Sender: TObject);
var         //Aban Abr 19/16
  a,m,d:Word;                            //Cambiará a sólo día actual    Jul 25/16
  FechaAux:TDAteTime;
begin
  inherited;
  DEcodeDate(Date,a,m,d);
  ffiltroEstado:='';
  cxDtEdtDesde.Date:=date;//EncodeDate(a,m,1);  Jul 25/16
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //Día anterior
  cxDtEdtHasta.Date:=date+1;//FechaAux;
  SpdBtnConsultaClick(SpdBtnConsulta);
end;

function TFrmOrdenesSalidaGrid.GetFFiltroNombre: String;
begin
  Result := FfiltroNombre;
end;

procedure TFrmOrdenesSalidaGrid.SpdBtnConsultaClick(Sender: TObject);
const
    TxtSQL='select idOrdenSalida, OS.IdDocumentoSalida, IdOrdenEstatus, IdPersonaRecolecta,'
 +'IdPersonaRevisa, IdPersonaEmpaca, IdPersonaEntrega, OS.FechaRegistro, Os.Total, FechaIniRecolecta, FechaFinRecolecta,'  //Se agrego persona entrega Jun 15/16
 +'FechaIniRevisa, FechaFinRevisa, FechaIniEmpaca, FechaFinEmpaca, IdPersonaAutoriza, FechaAutoriza,'
 +'IdGeneraCFDITipoDoc, Acumula, Os.Subtotal, OS.IVA , Os.IDPersonaDomicilio, OS.IDPersona, os.IdOrdenSalidaTipo, os.observaciones, Os.idAlmacen, os.IdUsuario from OrdenesSalidas OS ';
  CondTipo=' where  IdOrdenSalidaTipo=1 ' ; //Jul 1/16                        // campos  Jul 1/16                                                //Jul 26/16
  orden=' Order by IdOrdenEstatus,Os.FechaRegistro Desc';
begin
  inherited;
  PoneFiltro;
  Tadodataset(datasource.DataSet).Close;               //May 16/16   //Jul 1/16
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltroNombre+CondTipo+ffiltro+ffiltroEstado+orden;
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro+ffiltroEstado+orden);
  if ffiltro <>''then                                                //Abr.20/16
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;

  Tadodataset(datasource.DataSet).open;

end;
procedure TFrmOrdenesSalidaGrid.PoneFiltro;
begin
  ffiltro:=''; //Jun 30/16
  if ChckBxXFecha.checked then   //Jun 30/16
     ffiltro:=' and  OS.fechaRegistro >:Fini and Os.FechaRegistro<:FFin';  //Ajustado May 16/16
               //Se quito whereJul 1/16
end;
procedure TFrmOrdenesSalidaGrid.RdGrpEstadoClick(Sender: TObject);
begin
  inherited;
  ffiltroEstado:='';
  Tadodataset(datasource.DataSet).filtered:=True;//May 24/16
  if RdGrpEstado.ItemIndex >0then
  begin
    if RdGrpEstado.ItemIndex<>7 then //May 24/16
    begin
      ffiltroEstado:=' and IdOrdenEstatus='+ IntToSTR(RdGrpEstado.ItemIndex)+' ';
    end
    else
    begin
      ffiltroEstado:=' and IdOrdenEstatus=10 ';  //May 24/16
      Tadodataset(datasource.DataSet).filtered:=False;
    end;
  end;
  SpdBtnConsultaClick(SpdBtnConsulta);
end;

end.
