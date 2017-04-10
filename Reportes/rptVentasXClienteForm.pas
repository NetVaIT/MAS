unit rptVentasXClienteForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.CheckLst,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Buttons,Data.Win.ADODB;

type
  TRptVentasXCliente = class(T_frmGrid)
    PnlFiltros: TPanel;
    PnlBusqueda: TPanel;
    Label3: TLabel;
    EdtNombre: TEdit;
    PnlFechas: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    SpdBtnConsulta: TSpeedButton;
    cxDtEdtInicio: TcxDateEdit;
    cxDtEdtFin: TcxDateEdit;
    ChckBxXFecha: TCheckBox;
    PnlTipoDoc: TPanel;
    ChckLstBxTipoDoc: TCheckListBox;
    tvMasterIdPersonaReceptor: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterRazonSocial: TcxGridDBColumn;
    tvMasteridcfditipodocumento: TcxGridDBColumn;
    tvMasterSumaTotal: TcxGridDBColumn;
    PnlTitulo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptVentasXCliente: TRptVentasXCliente;

implementation

{$R *.dfm}

uses ConVentasXClienteDM;


procedure TRptVentasXCliente.FormCreate(Sender: TObject);
var      //Ene 25/17
  a,m,d:Word;
  FechaAux:TDAteTime;
begin
  inherited;

  DEcodeDate(Date,a,m,d);

  cxDtEdtInicio.Date:=EncodeDate(a,m,1);
  m:=m+1;
  if m=13 then  //Aban Abr 19/16
  begin
    m:=1;
    a:=a+1;
  end;
  FechaAux:=EncodeDate(a,m,1);
  FechaAux:=FechaAux-1;  //Día anterior
  cxDtEdtFin.Date:=FechaAux;

  ChckLstBxTipoDoc.Checked[0]:=True; //Para poner al inicio la de Facturas Ene 25/17
  SpdBtnConsultaClick(SpdBtnConsulta);

end;

procedure TRptVentasXCliente.SpdBtnConsultaClick(Sender: TObject); //Ene 25/17
const
  TxtSQL='Select C.IdPersonaReceptor, P.RazonSocial,Td.Descripcion, C.idcfditipodocumento, sum(Total) SumaTotal from CFDI c'+
         ' inner join CFDITipoDocumento td on td.idcfditipodocumento=C.idcfditipodocumento '+
         ' inner join Personas P on P.idpersona=C.idpersonareceptor where IdCFDIEstatus in (1,2,5)' ;

  TxtGroup=' group by IdPersonaReceptor, P.RazonSocial,Td.Descripcion, c.idcfditipodocumento '  ;

  TxtOrder=' order by P.RazonSocial ';
var
   FiltroCliente, FiltroFecha, FiltroTipo, auxTitulo:String;
   i, aux:Integer;
begin

  inherited;
  Filtrotipo:='';
  auxTitulo:='';
  if EdtNombre.Text<>'' then
    FiltroCliente:=' and P.Razonsocial like ''%'+EdtNombre.Text+'%'''
  else
    FiltroCliente:='';

  if ChckBxXFecha.checked then
     filtroFecha:='  and(C.Fecha >:FIni and C.Fecha <:FFin)'
  else
     filtroFecha:='';

  for I := 0 to ChckLstBxTipoDoc.Count-1 do
  begin
    if ChckLstBxTipoDoc.Checked[i] then
    begin
      aux:=i+2;
      if i=0 then
        FiltroTipo:=' (C.IdCFDITipoDocumento=1 and IdCFDIEstatus=2)'   //Para que solo las vigentes
      else
       if FiltroTipo<>'' then
         FiltroTipo:=FiltroTipo+' or c.IdCFDITipoDocumento=' +intTostr(Aux)
       else
         FiltroTipo:=' C.IdCFDITipoDocumento=' +intTostr(Aux);
      if  auxTitulo<>'' then
        auxTitulo:= auxTitulo+','+ ChckLstBxTipoDoc.Items[i]
      else
        auxTitulo:=  ChckLstBxTipoDoc.Items[i] ;
    end;

  end;

  if FiltroTipo<>'' then
     FiltroTipo:=' and ('+FiltroTipo+')';
 // Showmessage('Consulta '+TxtSQL+FiltroCliente+filtroFecha+FiltroTipo+ TxtOrder);
  Tadodataset(datasource.DataSet).Close;
  Tadodataset(datasource.DataSet).CommandText:=TxtSQL+FiltroCliente+filtroFecha+FiltroTipo+TxtGroup+ TxtOrder;
  if filtroFecha <>''then
  begin
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FIni').Value:=cxDtEdtInicio.Date;
    Tadodataset(datasource.DataSet).Parameters.ParamByName('FFin').Value:=cxDtEdtFin.Date+1;

  end;


  Tadodataset(datasource.DataSet).open;
  tvMaster.ApplyBestFit(); //Agregado para que se acomode?? Ene 25/17
  if filtroFecha<>'' then
    printtitle:='Ventas por Cliente ('+auxTitulo+') del '+dateToStr(cxDtEdtInicio.Date) + ' al '+dateToStr(cxDtEdtFin.Date+1)
  else
    printtitle:='Ventas por Cliente ('+auxTitulo+')';
end;
end.
