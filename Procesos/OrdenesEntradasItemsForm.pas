unit OrdenesEntradasItemsForm;

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
  TfrmOrdenesEntradasItems = class(T_frmStandarGFormEdit)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FactSeleccionarProducto: TBasicAction;
    FMostrarImporte: Boolean;
    FMostrarCantidad: Boolean;
    FactModificarGastos: TBasicAction;
    FactModificarArancel: TBasicAction;
    procedure SetMostrarImporte(const Value: Boolean);
    procedure SetMostrarCantidad(const Value: Boolean);
  public
    { Public declarations }
    property actSeleccionarProducto: TBasicAction read FactSeleccionarProducto write FactSeleccionarProducto;
    property actModificarArancel: TBasicAction read FactModificarArancel write FactModificarArancel;
    property actModificarGastos: TBasicAction read FactModificarGastos write FactModificarGastos;
    property MostrarImporte: Boolean read FMostrarImporte write SetMostrarImporte default False;
    property MostrarCantidad: Boolean read FMostrarCantidad write SetMostrarCantidad default False;
  end;

implementation

{$R *.dfm}

uses OrdenesEntradasItemsGrid;

procedure TfrmOrdenesEntradasItems.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmOrdenesEntradasItemsGrid.Create(Self);
end;

procedure TfrmOrdenesEntradasItems.FormShow(Sender: TObject);
begin
  inherited;
  TfrmOrdenesEntradasItemsGrid(gFormGrid).actSeleccionarProducto := actSeleccionarProducto;
  TfrmOrdenesEntradasItemsGrid(gFormGrid).actModificarArancel := actModificarArancel;
  TfrmOrdenesEntradasItemsGrid(gFormGrid).actModificarGastos := actModificarGastos;
  TfrmOrdenesEntradasItemsGrid(gFormGrid).MostrarCantidad := MostrarCantidad;
  TfrmOrdenesEntradasItemsGrid(gFormGrid).MostrarImporte := MostrarImporte;
  actShowGrid.Execute;
end;

procedure TfrmOrdenesEntradasItems.SetMostrarCantidad(const Value: Boolean);
begin
  FMostrarCantidad := Value;
end;

procedure TfrmOrdenesEntradasItems.SetMostrarImporte(const Value: Boolean);
begin
  FMostrarImporte := Value;
end;

end.
