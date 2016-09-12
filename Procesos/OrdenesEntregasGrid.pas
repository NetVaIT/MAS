unit OrdenesEntregasGrid;

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
  cxGrid, Vcl.ExtCtrls, cxContainer, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons, Vcl.StdCtrls,Data.Win.ADODB;

type
  TfrmOrdenesEntregasGrid = class(T_frmStandarGFormGrid)
    tvMasterIDResponsableEntrega: TcxGridDBColumn;
    tvMasterFechaProgramadaEnt: TcxGridDBColumn;
    tvMasterFechaRealEnt: TcxGridDBColumn;
    tvMasterCondicionEntrega: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterEstatusEntrega: TcxGridDBColumn;
    tvMasterContenido: TcxGridDBColumn;
    tvMasterConducto: TcxGridDBColumn;
    tvMasterServicio: TcxGridDBColumn;
    tvMasterPagoFlete: TcxGridDBColumn;
    tvMasterAsegurado: TcxGridDBColumn;
    tvMasterCantidadCajas: TcxGridDBColumn;
    tvMasterIdPersonaEmpaca: TcxGridDBColumn;
    tvMasterFechaIniEmpaque: TcxGridDBColumn;
    tvMasterFechaFinEmpaque: TcxGridDBColumn;
    tvMasterTelefonoCompleto: TcxGridDBColumn;
    tvMasterDocGuia: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterDireccionEnvio: TcxGridDBColumn;
    PnlBusqueda: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    RdGrpEstado: TRadioGroup;
    tvMasterPersonaEmpaca: TcxGridDBColumn;
    tvMasterPersonaEnvia: TcxGridDBColumn;
    tvMasterEstatusOrden: TcxGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    ChckBxFactVivas: TCheckBox;
    SpdBtnConsulta: TSpeedButton;
    tvMasterEtiquetaImpresa: TcxGridDBColumn;
    tvMasterOrdenEmbImpresa: TcxGridDBColumn;
    procedure EdtNombreChange(Sender: TObject);
    procedure SpdBtnConsultaClick(Sender: TObject);
    procedure RdGrpEstadoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FFiltroNombre: String;
    ffiltro: String;   //Jun 13/16
    function GetFFiltroNombre: String;  //Jun 13/16
    { Private declarations }
  public
    { Public declarations }
    Property FiltroNombre:String read GetFFiltroNombre write FFiltroNombre; //Jun 13/16
    property FiltroCon:String read ffiltro write ffiltro;  //Jun 13/16
  end;

var
  frmOrdenesEntregasGrid: TfrmOrdenesEntregasGrid;

implementation

{$R *.dfm}

uses OrdenesEntregasDM;

procedure TfrmOrdenesEntregasGrid.EdtNombreChange(Sender: TObject);
begin
  inherited;
   if edtNombre.Text <>'' then
  begin                           //Cambiar
    FfiltroNombre:=' inner join Personas P On P.IdPersona=IE.IdPersonaCliente and P.RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TfrmOrdenesEntregasGrid.EdtNombreKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=13 then
  begin
    key:=0;
    SpdBtnConsulta.Click;
  end;
end;

procedure TfrmOrdenesEntregasGrid.FormCreate(Sender: TObject);
var
  fechaAux:TDateTime;  //Cambiado aca.. Jul 25/16   para mantener el filtro al regresar a la consulta
  a,m,d:Word;
begin
  inherited;   //Filtro día Jul 25/16
  decodeDate(date,a,m,d);   //D. Abr 19/16
  cxDtEdtDesde.date:= date;//encodedate(a,m,1);
  m:=m+1;
  if m=13 then
  begin
    m:=1;
    a:=a+1;
  end;
  fechaAux:=encodedate(a,m,1);
  cxDtEdtHasta.date :=Date+1;//fechaAux-1;

  ffiltro:=' where IE.IdEstatusOrdenEntrega= 4'; //Verifivar Jun 13/16
  SpdBtnConsulta.Click;
end;

function TfrmOrdenesEntregasGrid.GetFFiltroNombre: String;
begin
  Result := FFiltroNombre;
end;

procedure TfrmOrdenesEntregasGrid.RdGrpEstadoClick(Sender: TObject);
begin
  inherited;
  case RdGrpEstado.ItemIndex of
  0:ffiltro:=' where 1=1 '; //Todos
  1:ffiltro:=' where IE.IdEstatusOrdenEntrega= 4';//Autorizada
  2:ffiltro:=' where IE.IdEstatusOrdenEntrega= 5';// Empacada
  3:ffiltro:=' where IE.IdEstatusOrdenEntrega= 6';//Enviadas
  end;
  SpdBtnConsulta.Click;
end;

procedure TfrmOrdenesEntregasGrid.SpdBtnConsultaClick(Sender: TObject);
const                          //Cambiar
    TxtSQL='select IdInfoEntrega, IdCFDI, IDPersonaCliente, IDPersonaDomicilio,'
    +'IDResponsableEntrega, FechaProgramadaEnt, FechaRealEnt, CondicionEntrega,'
    +' Observaciones, EstatusEntrega, IdTelefono, IdDocumentoGuia, Contenido, '
    +'Conducto, Servicio, PagoFlete, Valor, Asegurado, CantidadCajas, IdPersonaEmpaca,'
    +'FechaIniEmpaque,FechaFinEmpaque, IdEstatusOrdenEntrega, EtiquetaImpresa, OrdenEmbImpresa from InformacionEntregas IE ';
                                                             //Sep 5/16 impresas
    TxtFiltroFecha='  and exists (Select * from InformacionEntregasDetalles IED '
    +' inner join OrdenesSalidas OS on IED.IdInfoEntrega= IE.IdInfoEntrega and IED.IdOrdenSalida=OS.idOrdenSalida '
    +' where OS.FechaRegistro>:FIni and  OS.FechaRegistro<:FFin )';

  //orden=' Order by IdOrdenEstatus,Os.FechaRegistro Desc';
begin
  inherited;
  //  ffiltro:=' where OS.fechaRegistro >:Fini and Os.FechaRegistro<:FFin';  //Jun 13/16

  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ ffiltroNombre+ffiltro + TxtFiltroFecha;//+ffiltroEstado+orden;
 // ShowMessage(TxtSQL+ ffiltroNombre+ffiltro+ffiltroEstado+orden);
//Si usa filtro Fecha
  Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:= cxDtEdtDesde.Date;
  Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:= cxDtEdtHasta.Date;

  Tadodataset(datasource.DataSet).open;

end;

end.
