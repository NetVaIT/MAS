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
  cxClasses, dxRibbon, _StandarDMod, _StandarMDFormEdit;

type
  TfrmMain = class(T_frmMainRibbon)
    dxRibbon1Tab2: TdxRibbonTab;
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
    ActOrdenSalida: TAction;
    ActEmisor: TAction;
    dxBarLargeButton17: TdxBarLargeButton;
    procedure actCatalogoExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    gModulo: T_dmStandar;
    procedure CreateModule(pModulo: Integer; pCaption: String); override;
    procedure DestroyModule; override;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses BancosDM, _Utils, MonedasDM, UbicacionesDM, MonedasCotizacionesDM,
  UnidadMedidaDM, MetodosPagosDM, PersonasDM, ProductosDM, CotizacionesDM,
  OrdenesSalidasDM, FacturasDM;

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
         gModulo := TDMFacturas.Create(Self);
        // TdmCotizaciones(gModulo).TipoDocumento:=3;
       end;
  end;
  if Assigned(gModulo) then
  begin
    gModulo.ShowModule(pnlMain, pCaption);
    Caption := pCaption + strSeparador + strProductName + strSeparador + strFileDescription;
  end;
end;

procedure TfrmMain.DestroyModule;
begin
  inherited;
  if Assigned(gModulo) then FreeAndNil(gModulo);
end;

end.
