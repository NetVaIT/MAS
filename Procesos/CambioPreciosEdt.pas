unit CambioPreciosEdt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  Vcl.StdCtrls, cxTextEdit, cxCurrencyEdit, Vcl.Buttons;

type
  TFrmCambioPrecios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtBtnAcepta: TBitBtn;
    BtBtnCancela: TBitBtn;
    cxEdtPrecio: TcxCurrencyEdit;
    RdGrpCriterioCambio: TRadioGroup;
    LblPrecioCambio: TLabel;
    procedure RdGrpCriterioCambioClick(Sender: TObject);
    procedure BtBtnAceptaClick(Sender: TObject);
    procedure BtBtnCancelaClick(Sender: TObject);
  private
    fOpcionCambio: Integer;
    fValor: Double;
    FTextoAux: String;
    { Private declarations }
  public
    { Public declarations }
    Property AOpcionCambio:Integer read fOpcionCambio write fOpcionCambio;
    Property AValor:Double read fValor write FValor;
    Property ATextoAux:String read FTextoAux write FTextoAux;
  end;

var
  FrmCambioPrecios: TFrmCambioPrecios;

implementation

{$R *.dfm}

procedure TFrmCambioPrecios.BtBtnAceptaClick(Sender: TObject);
begin
  FopcionCambio:=RdGrpCriterioCambio.ItemIndex;
  fValor:=cxEdtPrecio.Value;
  fTextoAux:=RdGrpCriterioCambio.Items.Create[RdGrpCriterioCambio.ItemIndex];
end;

procedure TFrmCambioPrecios.BtBtnCancelaClick(Sender: TObject);
begin
  FopcionCambio:=-1;
  fValor:=0;
  fTextoAux:='';
end;

procedure TFrmCambioPrecios.RdGrpCriterioCambioClick(Sender: TObject);
begin
  case RdGrpCriterioCambio.ItemIndex of
  0:LblPrecioCambio.Caption:='Porcentaje';
  1:LblPrecioCambio.Caption:='Sumar Valor a Precios';
  2:LblPrecioCambio.Caption:='Sustituir precio por';
  end;

end;

end.
