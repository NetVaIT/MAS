unit SalidasUbicacionesEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormEdit, dxSkinsCore,
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
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxClasses, Vcl.StdActns,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls,
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls;

type
  TfrmSalidasUbicaciones = class(T_frmStandarGFormEdit)
    DSProductosXEspacio: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FAceptaUbicaciones: TBasicAction;
    FHabilitaBoton: Boolean;
    procedure SetFAceptaUbicaciones(const Value: TBasicAction);
    procedure SetFHabilitaBoton(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
     property AAceptaUbicaciones:TBasicAction read FAceptaUbicaciones write SetFAceptaUbicaciones; //Jul 15/16
     property AHabilitaBoton:Boolean read FHabilitaBoton write SetFHabilitaBoton;   //Sep 9/16 para deshabiitar boton de aplicacion ubicacion
  end;


implementation

{$R *.dfm}

uses SalidasUbicacionesGrid;

procedure TfrmSalidasUbicaciones.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmSalidasUbicacionesGrid.Create(Self);
  TfrmSalidasUbicacionesGrid(gFormGrid).DSProductosXEspacio.DataSet:=DSProductosXEspacio.DataSet; //Jul 14/16


end;

procedure TfrmSalidasUbicaciones.FormShow(Sender: TObject);
begin
 inherited;
  TfrmSalidasUbicacionesGrid(gFormGrid).AAceptaUbicaciones:=AAceptaUbicaciones;
  actShowGrid.Execute;
end;

procedure TfrmSalidasUbicaciones.SetFAceptaUbicaciones(
  const Value: TBasicAction);
begin
  FAceptaUbicaciones := Value;

  //Asignar a formagrig

end;

procedure TfrmSalidasUbicaciones.SetFHabilitaBoton(const Value: Boolean);  //Sep 9/16
begin
  FHabilitaBoton := Value;
  TfrmSalidasUbicacionesGrid(gFormGrid).btnAceptarUbicaciones.Visible:=Value;
  TfrmSalidasUbicacionesGrid(gFormGrid).pnlMaster.Enabled:=  value;
end;

end.
