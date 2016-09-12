unit DocumentosEntradasDetalleForm;

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
  TfrmDocumentosEntradasDetalle = class(T_frmStandarGFormEdit)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FactSeleccionarProducto: TBasicAction;
    FactGetDetalleAnterior: TBasicAction;
  public
    { Public declarations }
    property actSeleccionarProducto: TBasicAction read FactSeleccionarProducto write FactSeleccionarProducto;
    property actGetDetalleAnterior: TBasicAction read FactGetDetalleAnterior write FactGetDetalleAnterior;
  end;

implementation

{$R *.dfm}

uses DocumentosEntradasDetalleGrid;

procedure TfrmDocumentosEntradasDetalle.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmDocumentosEntradasDetalleGrid.Create(Self);
end;

procedure TfrmDocumentosEntradasDetalle.FormShow(Sender: TObject);
begin
  inherited;
  TfrmDocumentosEntradasDetalleGrid(gFormGrid).actSeleccionarProducto:= actSeleccionarProducto;
  TfrmDocumentosEntradasDetalleGrid(gFormGrid).actGetDetalleAnterior := actGetDetalleAnterior;
  actShowGrid.Execute;
end;

end.
