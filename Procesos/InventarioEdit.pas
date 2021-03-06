unit InventarioEdit;

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
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit, cxLabel,
  cxDBLabel, Vcl.StdCtrls;

type
  TfrmInventarioEdit = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    Label2: TLabel;
    cxDBLabel3: TcxDBLabel;
    Label3: TLabel;
    cxDBLabel4: TcxDBLabel;
    Label4: TLabel;
    cxDBLabel5: TcxDBLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBLabel6: TcxDBLabel;
    Label8: TLabel;
    cxDBLabel7: TcxDBLabel;
    Label9: TLabel;
    cxDBLabel8: TcxDBLabel;
    Label10: TLabel;
    cxDBLabel9: TcxDBLabel;
    Label7: TLabel;
    cxDBLabel10: TcxDBLabel;
    Label11: TLabel;
    cxDBLabel11: TcxDBLabel;
    PnlTitulo: TPanel;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInventarioEdit: TfrmInventarioEdit;

implementation

{$R *.dfm}

uses InventarioGrid, InventarioDM;

procedure TfrmInventarioEdit.FormActivate(Sender: TObject);
begin
  inherited;
  ToolButton10.Visible:=False;//Jul 1/16
  Toolbutton12.visible:=False; //Jul 1/16
  actShowGridExecute(sender); //Para que muestre la lista al entrar Jun 30/16
end;

procedure TfrmInventarioEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TFrmInventarioGrid.Create(Self);
end;

end.
