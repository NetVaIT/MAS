unit CierreReportes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Buttons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, shellapi;

type
  TFrmReportesCierre = class(TForm)
    PnlTitulo: TPanel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    ChckLstBxREportesCierre: TCheckListBox;
    PnlFechas: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxDtEdtDesde: TcxDateEdit;
    cxDtEdtHasta: TcxDateEdit;
    SpdBtnConsultaFecha: TSpeedButton;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnConsultaFechaClick(Sender: TObject);
  private
    procedure ImprimeREporte(cual:Integer; Fini, FFin:TDateTime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReportesCierre: TFrmReportesCierre;

implementation

{$R *.dfm}

uses ImpresosSalidasDM, _Utils, rptInventarioExistenciaDM;

procedure TFrmReportesCierre.FormCreate(Sender: TObject);
var
  fechaAux:TDateTime;  //Cambiado aca.. Jul 25/16   para mantener el filtro al regresar a la consulta
  a,m,d:Word;
begin
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

procedure TFrmReportesCierre.SpdBtnConsultaFechaClick(Sender: TObject);
var
  i :Integer;
begin
  for i:=0 to  ChckLstBxREportesCierre.Count -1 do
  begin
    ShowProgress(10,100,'Generando Reportes..' + IntToStr(10) + '%');
    if ChckLstBxREportesCierre.Checked[i]  then
      ImprimeREporte(i, cxDtEdtDesde.Date,cxDtEdtHasta.Date);
  end;
   ShowProgress(100,100);
end;


procedure TFrmReportesCierre.ImprimeREporte(cual:Integer; Fini, FFin:TDateTime);
var                  //Jul 26/16
  DMImpresosSalidas:TDMImpresosSalidas;
  rptInventarioExistencia: TdmrptInventarioExistencia;
  ArchiPDF:TFileName;
  Tipo:Integer;
begin
  DMImpresosSalidas:=TDMImpresosSalidas.Create(Self);
  case cual of
  0,1:
  begin
    if cual =0 then
    begin
       ArchiPDF:='listaPresupuestos.PDF';
       tipo:=4;
       ShowProgress(20,100,'Listado Presupuestos' + IntToStr(20) + '%');
    end
    else
    begin
      ArchiPDF:='listaFacturas.PDF';
      Tipo:=1;
       ShowProgress(30,100,'Listado Facturas Expedidas ' + IntToStr(30) + '%');
    end;
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
    ShowProgress(30,100,'Generando PDF... ' + IntToStr(30) + '%');
  end;

  2:begin
      ArchiPDF:='ListaCostosInventario.PDF';

       ShowProgress(60,100,'Listado Costo inventario... ' + IntToStr(60) + '%');
      DMImpresosSalidas.adodtstCostoInventario.Close;
      DMImpresosSalidas.adodtstCostoInventario.Open;
      DMImpresosSalidas.TextoAuxiliar:='LISTADO COSTO INVENTARIO AL '+ DateTostr(date) ; //Día actual
      DMImpresosSalidas.PrintPDFFile(5,1,False,ArchiPDF);
       ShowProgress(70,100,'Generando PDF... ' + IntToStr(70) + '%');
    end;
  3: begin
    ArchiPDF:='ListaInventarioExistencia.PDF';
    rptInventarioExistencia:= TdmrptInventarioExistencia.Create(Self);
    try
       rptInventarioExistencia.Title:= 'LISTADO DEL INVENTARIO EXISTENCIAS AL DIA ' + DateTostr(date);
       rptInventarioExistencia.PDFFileName:= ArchiPDF;
       rptInventarioExistencia.Execute
    finally
      rptInventarioExistencia.Free;
    end;
  end;
  end;
  DMImpresosSalidas.Free;
  if FileExists(ArchiPDF) then
      ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);

end;
end.
