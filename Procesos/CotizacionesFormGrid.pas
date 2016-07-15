unit CotizacionesFormGrid;

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
  Vcl.ExtCtrls, Vcl.Menus, cxContainer, dxCore, cxDateUtils, Vcl.Buttons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls,Data.Win.ADODB;

type
  TfrmCotizacionesGrid = class(T_frmStandarGFormGrid)
    tvMasterFechaRegistro: TcxGridDBColumn;
    tvMasterIVA: TcxGridDBColumn;
    tvMasterSubTotal: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterVigenciaDias: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterCliente: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterTipoDocumento: TcxGridDBColumn;
    tvMasterIdDocumentoSalida: TcxGridDBColumn;
    tvMasterIdentificadorCte: TcxGridDBColumn;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    SpdBtnBuscar: TSpeedButton;
    TlBtnSepara: TToolButton;
    PnlBusqueda: TPanel;
    EdtNombre: TEdit;
    Label3: TLabel;
    ChckBxXFecha: TCheckBox;
    procedure SpdBtnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    ffiltro: String;
    FTipoDoc: Integer;
    FfiltroNombre: String;

    procedure PoneFiltro;
    procedure SetTipoDoc(const Value: Integer);
    function GetFFiltroNombre: String;
    { Private declarations }
  public
    { Public declarations }
     property FiltroCon:String read ffiltro write ffiltro; //may 2/16
     Property TipoDocumento:Integer read FTipoDoc write SetTipoDoc;
     Property AFiltroNombre:String read GetFFiltroNombre write FfiltroNombre; //May 10/16

  end;

var
  frmCotizacionesGrid: TfrmCotizacionesGrid;

implementation

{$R *.dfm}

uses CotizacionesDM;


procedure TfrmCotizacionesGrid.EdtNombreChange(Sender: TObject);
begin
  inherited;
  if edtNombre.Text<>'' then   //May 10/16
  begin
    FfiltroNombre:='inner join Personas P On P.IdPersona=DS.IdPersona and P.RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TfrmCotizacionesGrid.EdtNombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;    //May 12/16
  if key=13 then
  begin
    key:=0;
    spdBtnBuscar.Click;
  end;
end;

procedure TfrmCotizacionesGrid.FormCreate(Sender: TObject);
var    // Abr 19/16
  fechaAux:TDAteTime;
  a,d,m:word;
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

   //H Abr 19/16
end;

function TfrmCotizacionesGrid.GetFFiltroNombre: String;   //May 10/16
begin
  Result := FfiltroNombre;
end;

procedure TfrmCotizacionesGrid.SetTipoDoc(const Value: Integer);
begin
  FTipoDoc := Value;
end;

procedure TfrmCotizacionesGrid.SpdBtnBuscarClick(Sender: TObject);
const
  TxtSQL='SELECT IdDocumentoSalida, IdDocumentoSalidaTipo, DS.IdPersona,  IdDocumentoSalidaEstatus, DS.IdMoneda,'+
           'ds.IdUsuario, DS.FechaRegistro, IVA, SubTotal, Total, VigenciaDias, Observaciones,IdDomicilioCliente, IDPersonaDomicilioEnvio'+
           ', NotasInternas, IdPaqueteria, Servicio, Facturar'+ //May 18/16                                                   //Jun 16/16
           ' FROM DocumentosSalidas DS ';            //Jul 14/16
  TxtWhere='where IdDocumentoSalidaTipo=:TipoDocto ';     //Para colocar el inner join y buscar por nombre cliente May 11/16
                                                           //OJO quitar para insertar y modificar....
  orden=' Order by idDocumentoSalidaEstatus, FechaRegistro Desc';

 // and fechaRegistro>DATEADD(MM, DATEDIFF(MM,0,GETDATE()), 0)
begin
  inherited;
   //Armar consulta
  PoneFiltro;
  Tadodataset(datasource.DataSet).Close;             //May 10/16
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+ffiltronombre+TxtWhere+ ffiltro+orden;
  Tadodataset(datasource.DataSet).Parameters.ParamByName('TipoDocto').value:=FTipoDoc; //Movido aca Jun 30/16  salio del if

  if ffiltro <>''then                                              //Abr.20/16
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtDesde.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtHasta.Date+1;
  end;

  Tadodataset(datasource.DataSet).open;
end;

procedure TfrmCotizacionesGrid.PoneFiltro;
begin
  ffiltro:=''; //Jun 30/16
  if ChckBxXFecha.checked then   //Jun 30/16
    ffiltro:=' and fechaRegistro >:Fini and FechaRegistro<:FFin';

end;

end.
