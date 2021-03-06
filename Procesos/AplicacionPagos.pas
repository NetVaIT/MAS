unit AplicacionPagos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxContainer,
  cxLabel, cxDBLabel, Vcl.StdCtrls, Vcl.Buttons, cxTextEdit, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmAplicacionPago = class(TForm)
    PnlDatosPago: TPanel;
    cxGrid: TcxGrid;
    tvMaster: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DSPago: TDataSource;
    dsConFacturasPendientes: TDataSource;
    DSAplicacion: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    cxDBTxtEdtImporteAplicar: TcxDBTextEdit;
    Label9: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    PnlDisponible: TPanel;
    Label1: TLabel;
    cxDBLblDisponible: TcxDBLabel;
    Panel2: TPanel;
    BtBtnAgregar: TBitBtn;
    BtBtnAplicar: TBitBtn;
    Label2: TLabel;
    cxDBLabel5: TcxDBLabel;
    Label5: TLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    Label6: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    tvMasterSerie: TcxGridDBColumn;
    tvMasterFolio: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterSaldoDocumento: TcxGridDBColumn;
    tvMasterIdCFDI: TcxGridDBColumn;
    tvMasterIdCFDITipoDocumento: TcxGridDBColumn;
    tvMasterIdPersonaReceptor: TcxGridDBColumn;
    tvMasterIdOrdenSalida: TcxGridDBColumn;
    tvMasterIdCFDIEstatus: TcxGridDBColumn;
    tvMasterIdClienteDomicilio: TcxGridDBColumn;
    tvMasterTipoCambio: TcxGridDBColumn;
    procedure BtBtnAplicarClick(Sender: TObject);
    procedure DSAplicacionStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    function Quitasignos(TextoPesos: String): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAplicacionPago: TFrmAplicacionPago;

implementation

{$R *.dfm}

uses PagosDM;

procedure TFrmAplicacionPago.BtBtnAplicarClick(Sender: TObject);
var
   valor, aux:Double;
   f:String;
begin    
  f:= quitasignos(DSAplicacion.DataSet.FieldByName('Importe').ASString);  //Ago 15/16
//  showmessage(f);
  aux:=strtoFLoat(quitasignos(cxDBLblDisponible.Caption));
                           //Ver si ya tiene el valor
  Valor:= StrToFloat(f);//DSAplicacion.DataSet.FieldByName('Importe').ASFloat;//cxDBTxtEdtImporteAplicar.Field.Asfloat;
  inherited;
  if Valor > 0 then
  begin
    // Esta seguro de aplicar al Documento seleccionado del cliente?
  //  if DSAplicacion.DataSet.FieldByName('Importe').Asfloat > Valor then    //Ajustar para evitar centavos perdidos   C. Ago 23/16 pendiente
    if (Valor>aux)and (abs(valor-aux)>0.01)then //de otra forma siempre son iguales
  //  if abs(DSAplicacion.DataSet.FieldByName('Importe').Asfloat - Valor)>0.001 then
    begin
      ShowMessage('No es posible aplicar un valor mayor al disponible');
      abort;
    end;
    f:=dsConFacturasPendientes.DataSet.FieldByName('Serie').AsString+'-'+dsConFacturasPendientes.DataSet.FieldByName('Folio').AsString;
  //  if dsConFacturasPendientes.dataset.FieldByName('SaldoDocumento').Asfloat >= DSAplicacion.DataSet.FieldByName('Importe').Asfloat then
    if ((dsConFacturasPendientes.dataset.FieldByName('SaldoDocumento').Asfloat >= DSAplicacion.DataSet.FieldByName('Importe').Asfloat) )
        // para aplicar menos   and (abs(dsConFacturasPendientes.dataset.FieldByName('SaldoDocumento').Asfloat - DSAplicacion.DataSet.FieldByName('Importe').Asfloat)<0.01)) //FEb 21/17

    or (abs(dsConFacturasPendientes.dataset.FieldByName('SaldoDocumento').Asfloat - DSAplicacion.DataSet.FieldByName('Importe').Asfloat)<0.01) then //FEb 21/17 Era  0.0001  //Ajustar para evitar centavos perdidos   C. Ago 23/16 pendiente
    begin                                                                                                                               //era 0
      if abs(dsConFacturasPendientes.dataset.FieldByName('SaldoDocumento').Asfloat - DSAplicacion.DataSet.FieldByName('Importe').Asfloat)>0.01 then
         showMessage('valor diferencia: '+ floattoStr(dsConFacturasPendientes.dataset.FieldByName('SaldoDocumento').Asfloat - DSAplicacion.DataSet.FieldByName('Importe').Asfloat));
      if Application.MessageBox(pChar('Esta seguro de aplicar el importe al documento '+f +' ?'),'Confirmaci�n',MB_YESNO)=IDYES then
      begin
        with DSAplicacion.DataSet do
        begin
          fieldbyName('IdCFDI').AsInteger:=dsConFacturasPendientes.dataset.FieldByName('IDCFDI').AsInteger;
          fieldbyName('IDPersonacliente').AsInteger:=dsConFacturasPendientes.dataset.FieldByName('IDPersonaReceptor').AsInteger;
          post;
        end;
        dsConFacturasPendientes.DataSet.Close;
        dsConFacturasPendientes.DataSet.Open;

        dsPago.dataset.Refresh;
      end;
    end
    else
      ShowMessage('No es posible aplicar un valor mayor al saldo. Diferencia:'+ floattoStr(DSAplicacion.DataSet.FieldByName('Importe').Asfloat-dsConFacturasPendientes.dataset.FieldByName('SaldoDocumento').Asfloat ));
  end
  else
    ShowMessage('No se puede aplicar un valor de 0');
  //showmessage(quitasignos (cxDBLblDisponible.Caption) ); //Ago 15/16
  BtBtnAplicar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0) and (DSAplicacion.DataSet.state =dsInsert);
  BtBtnAgregar.Enabled:= (strtoFLoat(quitasignos(cxDBLblDisponible.Caption))>0) and (DsAplicacion.state =dsBrowse)and (not dsConFacturaspendientes.dataset.eof);
  cxDBTxtEdtImporteAplicar.Enabled:= (DSAplicacion.DataSet.state =dsInsert);//Ago 15/16
end;

function TFrmAplicacionPago.Quitasignos(TextoPesos:String):String;//Ago 15/16
var 
  i:integer;
begin
  while pos('$',TextoPesos)>0 do
  begin
    i:= pos('$',TextoPesos);
    DElete(TextoPesos,i,1);
  end;  
  while pos(',',TextoPesos)>0 do
  begin
    i:= pos(',',TextoPesos);
    DElete(TextoPesos,i,1);
  end;
  Result:= TextoPesos;
end;

procedure TFrmAplicacionPago.DSAplicacionStateChange(Sender: TObject);
begin
  BtBtnAplicar.Enabled:=(dsAplicacion.DataSet.State=dsInsert) and (not dsConFacturasPendientes.DataSet.Eof);

end;

procedure TFrmAplicacionPago.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DSAplicacion.State=dsInsert then
  begin
    if (Application.MessageBox('�Desea salir sin guardar cambios?','Salir',MB_ICONEXCLAMATION or MB_YESNO)=ID_YES) then
      dsAplicacion.dataset.Cancel
    else
      canClose:=False;
  end;
end;

procedure TFrmAplicacionPago.FormDestroy(Sender: TObject);
begin
  dsAplicacion.DataSet.Close;
  dsConFacturasPendientes.DataSet.Close;
end;

end.
