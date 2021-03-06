unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _MainRibbonForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
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
  dxSkinsdxRibbonPainter, cxContainer, cxEdit, dxSkinsdxBarPainter, dxScreenTip,
  dxBar, Vcl.StdActns, System.Actions, Vcl.ActnList, Vcl.ImgList, dxSkinsForm,
  Vcl.ExtCtrls, dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView,
  cxClasses, dxRibbon, _StandarDMod, _StandarMDFormEdit, UsuariosDM, CierreReportes,
  cxTextEdit, cxMemo;

type
  TfrmMain = class(T_frmMainRibbon)
    dxRbnTbCatalogos: TdxRibbonTab;
    dxBarManagerBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    actBancos: TAction;
    actCatalogo: TAction;
    actMonedas: TAction;
    actUbicaciones: TAction;
    actCotizacionMonedas: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    actUnidadMedida: TAction;
    actMetodosPagos: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    actClientes: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    actProveedores: TAction;
    actEmpleados: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    actProductos: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    actCotizaciones: TAction;
    actPedidos: TAction;
    actFacturacion: TAction;
    dxBarLargeButton13: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    dxRibbon1Tab6: TdxRibbonTab;
    dxBarManagerBar3: TdxBar;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    actOrdenSalida: TAction;
    actEmisor: TAction;
    dxBarLargeButton17: TdxBarLargeButton;
    dxbDevoluciones: TdxBar;
    actAlmacenes: TAction;
    dxBarLargeButton18: TdxBarLargeButton;
    dxRibbon1Tab7: TdxRibbonTab;
    dxbReportes: TdxBar;
    dxBarLargeButton19: TdxBarLargeButton;
    actRptVentasUnidades: TAction;
    dxBarManagerBar2: TdxBar;
    actOrdenCompra: TAction;
    dxtshConfiguracion: TdxRibbonBackstageViewTabSheet;
    dxtshUsuarios: TdxRibbonBackstageViewTabSheet;
    actRequisicionCompra: TAction;
    actBackorderEntrada: TAction;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    actInvoice: TAction;
    actOrdenesEntrada: TAction;
    dxBarLargeButton24: TdxBarLargeButton;
    ActRegistroPagos: TAction;
    dxBarManagerBar4: TdxBar;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    ActAplicaciones: TAction;
    dxBarLargeButton27: TdxBarLargeButton;
    actAntiguedadSaldos: TAction;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    ActNotasVenta: TAction;
    ActNotasCredito: TAction;
    ActNotasCargo: TAction;
    dxBarLrgBtnCI: TdxBarLargeButton;
    ActRptCostoInventario: TAction;
    dxBarLargeButton31: TdxBarLargeButton;
    ActPerfilUsuario: TAction;
    actEntradaMercancia: TAction;
    dxBarLargeButton32: TdxBarLargeButton;
    ActDevoluciones: TAction;
    dxBrLrgBtnDevolucion: TdxBarLargeButton;
    dxBarLrgBtnPaqueteria: TdxBarLargeButton;
    ActPaqueterias: TAction;
    dxBrLrgBtnOrdenEntrega: TdxBarLargeButton;
    ActOrdenEntrega: TAction;
    actProductosXEspacio: TAction;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBrLrgBtnAlmacenes: TdxBarLargeButton;
    dxRbnTbCierre: TdxRibbonTab;
    dxBarManagerBar5: TdxBar;
    dxBarLargeButton35: TdxBarLargeButton;
    ActCierreReporteMensual: TAction;
    dxBrLrgBtnInventario: TdxBarLargeButton;
    dxBrLrgBtnMermas: TdxBarLargeButton;
    dxBrLrgBtnAcomodo: TdxBarLargeButton;
    dxBrLrgBtnListaPrecios: TdxBarLargeButton;
    dxBrLrgBtnKardex: TdxBarLargeButton;
    dxBrLrgBtnCostoInv: TdxBarLargeButton;
    ActInventario: TAction;
    ActListaPrecios: TAction;
    ActKardex: TAction;
    ActSalidaAjuste: TAction;
    dxBrLrgBtnEntradaXAjuste: TdxBarLargeButton;
    ActEntradaAjuste: TAction;
    actRptVentasProyeccion: TAction;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBrLrgBtnFletes: TdxBarLargeButton;
    ActFletes: TAction;
    cxMmErrorProceso: TcxMemo;
    dxBrLrgBtnReporteVentasXCliente: TdxBarLargeButton;
    ActRepVentasXCliente: TAction;
    procedure actCatalogoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon;
      var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxMmErrorProcesoPropertiesChange(Sender: TObject);
  private
    fCargandoBitacora: Boolean; //Dic 26/16
    procedure UsarPermisos;
    { Private declarations }
  protected
    gModulo: T_dmStandar;
//    gReport: T_dmReport;
    dmUsuarios: TdmUsuarios;
    FrmReportesCierre :TFrmReportesCierre;
    procedure CreateModule(pModulo: Integer; pCaption: String); override;
    procedure ConfigControls; override;
    procedure DestroyModule; override;
  public
    { Public declarations }
    property CargandoBitacora:Boolean read fCargandoBitacora write fCargandoBitacora;//Dic 26/16
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses BancosDM, _Utils, MonedasDM, UbicacionesDM, MonedasCotizacionesDM,
  UnidadMedidaDM, MetodosPagosDM, PersonasDM, ProductosDM, CotizacionesDM,
  OrdenesSalidasDM, FacturasDM, AlmacenesDM, rptVentasUnidadesDM,
  ConfiguracionDM, BackorderEntradasDM, DocumentosEntradasDM, PagosDM,
  AplicacionesConsultaDM, OrdenesEntradasDM, rptAntiguedadSaldosDM,
  rptCostoInventarioDM, UsuariosPerfilesDM, _ConectionDmod, PaqueteriasDM,
  OrdenesEntregasDM, ProductosXEspacioDm, DevolucionesDM, InventarioDM,
  ListaPreciosDM, KardexMovimientosDM, AjustesSalidasDM, rptVentasProyeccionDM,
  AjustesEntradaDM, ConVentasXClienteDM;

{ TfrmMain }

procedure TfrmMain.actCatalogoExecute(Sender: TObject);
begin
  inherited;
  CreateModule(TAction(Sender).Tag, TAction(Sender).Caption);
end;

procedure TfrmMain.CreateModule(pModulo: Integer; pCaption: String);

begin
  inherited;
  DestroyModule;
  case pModulo of
    //Catalogos
    1: gModulo := TdmBancos.Create(Self);
    2: gModulo := TdmMonedas.Create(Self);
    3: gModulo := TdmUbicaciones.Create(Self);
    4: gModulo := TdmMonedasCotizaciones.Create(Self);
    5: gModulo := TdmUnidadMedida.Create(Self);
    6: gModulo := TdmMetodosPagos.Create(Self);
    7: gModulo := TdmPersonas.CreateWRol(Self, rCliente);
    8: gModulo := TdmPersonas.CreateWRol(Self, rProveedor);
    9: gModulo := TdmPersonas.CreateWRol(Self, rEmpleado);
   10: gModulo := TdmProductos.Create(Self);
   11: gModulo := TdmPersonas.CreateWRol(Self, rEmisor); //Dic 14/15
   12: gModulo := TDmPerfilesUsuario.create(Self); //Abr 21/16
   13: gModulo := TDmPaqueterias.create(Self); //May 9/16
   20: begin
         gModulo := TdmCotizaciones.Create(Self);
         TdmCotizaciones(gModulo).TipoDocumento:=1;
       end;
   21: begin
         gModulo := TdmCotizaciones.Create(Self);
         TdmCotizaciones(gModulo).TipoDocumento:=2;
       end;

   22: begin//Orden Salida
         gModulo := TDMOrdenesSalidas.Create(Self);
        // TdmCotizaciones(gModulo).TipoDocumento:=3;
       end;
   23: begin   //Se supone que listo para Facturar
         gModulo := TDMFacturas.CreateWMostrar(Self,True,1);
                // TdmCotizaciones(gModulo).TipoDocumento:=3;
       end;

   24: gModulo := TDMFacturas.CreateWMostrar(Self,True,4);//Nota Venta Mar 29/16
   25: gModulo := TDMFacturas.CreateWMostrar(Self,True,2); //Credito   Mar 29/16
   26: gModulo := TDMFacturas.CreateWMostrar(Self,True,3); //CArgo Mar 29/16
   27: gModulo := TDMOrdenesEntregas.Create(Self); //Ordenesentega May 27/16

   28: gModulo := TDMFacturas.CreateWMostrar(Self,True,5); //Fletes //Ago 30/16

   30: gModulo := TdmAlmacenes.Create(Self);
   31: gModulo := TdmDevoluciones.Create(Self); //Jun 21/16
   32: gModulo := TdmInventario.Create(Self);
   34: gModulo := TdmListaPrecios.Create(Self);  //Jul 1/16
   33: gModulo := TDMAjustesSalida.Create(Self); //Jul 12/16
   35: gModulo := TdmKardexMovimientos.Create(Self); //Jul 6/16
   36: gModulo := TDMAjustesEntradas.Create(Self); //Jul 18/16 ??
   40: gModulo := TdmBackorderEntradas.Create(Self);
   41: gModulo := TdmDocumentosEntradas.CreateWTipo(Self, tRequisicion);
   42: gModulo := TdmDocumentosEntradas.CreateWTipo(Self, tOrdenCompra);
   43: gModulo := TdmDocumentosEntradas.CreateWTipo(Self, tFactura);
   44: gModulo := TdmOrdenesEntradas.CreateWTipo(Self, tEntradaMercacia);
   45: gModulo := TdmOrdenesEntradas.CreateWTipo(Self, TOrdenEntrada);
   46: gModulo := TdmProductosXEspacio.Create(Self);
   47: gModulo := TdmrptVentasProyeccion.Create(Self);
   50: gModulo := TdmrptVentasUnidades.Create(Self);
   51: gModulo := TdmrptcostoInventario.Create(Self);  //Abr 15/16

   52: gModulo := TdmConVentasXCliente.Create(Self);  //Ene 24/17

   60: gModulo := TdmPagos.create(Self); //Feb 24/16
   61: gModulo := TdmAplicacionesConsulta.create(Self);
   62: gModulo := TdmRptAntiguedadSaldos.create(Self); //Mar23/16
   70: begin
         FrmReportesCierre:=TFrmReportesCierre.Create(self);
         FrmReportesCierre.Parent:=pnlMain;
         FrmReportesCierre.Show;
   end;
  end;
  if Assigned(gModulo) then
  begin
    gModulo.ShowModule(pnlMain, pCaption);                                                   //Agregado manual Mar 29/17  //Jul3/17 //Jul 11/17 autoriza 7
    Caption := pCaption + strSeparador + strProductName + strSeparador + strFileDescription+ ' Ver.1.0.0.7';  //may 4/17   //May8/17 Docs //jun9 /17 sin descontinuados 4
  end;                                                                               //Jun 16/17 ajustes 5
end;
procedure TfrmMain.cxMmErrorProcesoPropertiesChange(Sender: TObject);
var   //Jun 22/16
  year, month, day : Word;
  xFileName : String;
begin      //ver si el LoadfromFile no dispara esto.... Jun 22/16
  // Cada que cambie el texto de la bitacora voy a grabar el archivo
  if not CargandoBitacora then  //Jun 22/16
  begin
    DecodeDate(now, year, month, day );
    xFileName := 'LOGError_' + IntToStR( year ) + IntToStr( month ) + IntToStr( Day ) + '.txt';
   // if FileExists(ExtractFilePath( Application.ExeName ) + '\' + xFileName) then
    cxMmErrorProceso.Lines.SaveToFile( ExtractFilePath( Application.ExeName ) + '\' + xFileName  );
  end;
end;

procedure TfrmMain.ConfigControls;
begin
  inherited;
//  actCFDI.Enabled:= Conected and _dmConection.EnabledAction(actCFDI.Tag);
  actBancos.Enabled             := Conected;
  actMonedas.Enabled            := Conected;
  actUbicaciones.Enabled        := Conected;
  actCotizacionMonedas.Enabled  := Conected;
  actUnidadMedida.Enabled       := Conected;
  actMetodosPagos.Enabled       := Conected;
  actClientes.Enabled           := Conected;
  actProveedores.Enabled        := Conected;
  actEmpleados.Enabled          := Conected;
  actProductos.Enabled          := Conected;
  actCotizaciones.Enabled       := Conected;
  actPedidos.Enabled            := Conected;
  actOrdenSalida.Enabled        := Conected;
  actFacturacion.Enabled        := Conected;
  actEmisor.Enabled             := Conected;
  actAlmacenes.Enabled          := Conected;
  actRptVentasUnidades.Enabled  := Conected;
  actBackorderEntrada.Enabled   := Conected;
  actRequisicionCompra.Enabled  := Conected;
  actOrdenCompra.Enabled        := Conected;
  actInvoice.Enabled            := Conected;
  actOrdenesEntrada.Enabled     := Conected;
  actEntradaMercancia.Enabled     := Conected;
  UsarPermisos; //Abr 25/16
end;

procedure TfrmMain.UsarPermisos;
var
  i, tagAux:Integer;
   MenuTxt, OpcionTxt :String;
begin
  MenuTxt:=_dmConection.PerMenu;
  OpcionTxt:=_dmConection.PerOpcion;

  for I := 0 to ComponentCount -1 do
  begin
    if (components[i] is TdxRibbonTab)  then
    begin
      tagAux:=(components[i] as TdxRibbonTab).Tag;                                           //Al inicio
      (components[i] as TdxRibbonTab).visible:= (pos('|'+intToStr(tagAux)+'|', MenuTxt)>0) or(pos(intToStr(tagAux)+'|', MenuTxt)=1);
    end;                                         //Para evitar lo que van fijos
    if (components[i] is TdxBarLargeButton) and ((components[i] as TdxBarLargeButton).Tag<>-1) then
    begin
      tagAux:=(components[i] as TdxBarLargeButton).Tag;
      (components[i] as TdxBarLargeButton).enabled:= (pos('|'+intToStr(tagAux)+'|', OpcionTxt)>0) or(pos(intToStr(tagAux)+'|', OpcionTxt)=1);
    end;
  end;
end;

procedure TfrmMain.DestroyModule;
begin
  inherited;
  if FrmReportesCierre<> Nil then
     FreeAndNil(FrmReportesCierre);//  FrmReportesCierre.Free; Mar 27/17

  if Assigned(gModulo) then FreeAndNil(gModulo);
end;

procedure TfrmMain.dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon;
  var AHandled: Boolean);
begin
  inherited;
  if Conected then
    dmConfiguracion.OpenDataSet
  else
    dmConfiguracion.CloseDataSet;
  if Conected then
    dmUsuarios.OpenDataSet
  else
    dmUsuarios.CloseDataSet;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  year, month, day : Word;   //Dic 26/16
  xFileName : String;
begin
  inherited;
  DEcodeDAte(date,year, month, day ); //Jun 9/17
  dmUsuarios:= TdmUsuarios.Create(nil);
  //Dic 26/16 Proceso para crear registro de problemas
  xFileName := 'LOGError_' + IntToStR( year ) + IntToStr( month ) + IntToStr( Day ) + '.txt';

  if FileExists(ExtractFilePath( Application.ExeName ) + '\' + xFileName) then
  begin
    cxMmErrorProceso.Lines.LoadFromFile(ExtractFilePath( Application.ExeName ) + '\' + xFileName);
  end;
   fCargandoBitacora:=False;


end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmUsuarios);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  if(pos('autoriza',_dmConection.PerFuncion)>0)then //Jul 11/17
  begin
    dmConfiguracion.ShowModule(dxtshConfiguracion, '');
    dmUsuarios.ShowModule(dxtshUsuarios, '');
  end;
  Caption:=Caption+ ' Ver.1.0.0.7';  //Mar 29/17         //may 4/17  //May 8/17 Docs     //jun9 /17 sin descontinuados4  //jun 16/17 Ajustes 5
end;                                                    //Jul 3/17 6     //Jul 11/17

end.
