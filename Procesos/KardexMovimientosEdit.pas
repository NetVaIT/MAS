unit KardexMovimientosEdit;

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
  cxDBLabel, Vcl.StdCtrls, cxTextEdit, cxDBEdit, Vcl.DBCtrls;

type
  TfrmKardexMovimientosEdit = class(T_frmStandarGFormEdit)
    DSProductos: TDataSource;
    PnlTitulo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxDBLabel2: TcxDBLabel;
    Label4: TLabel;
    cxDBLabel3: TcxDBLabel;
    Label5: TLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    Label6: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label3: TLabel;
    cxDBLabel1: TcxDBLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKardexMovimientosEdit: TfrmKardexMovimientosEdit;

implementation

{$R *.dfm}

uses KardexMovimientosGrid;

procedure TfrmKardexMovimientosEdit.FormActivate(Sender: TObject);
begin
  inherited;
  Toolbutton10.Visible:=False;
  Toolbutton12.Visible:=False;
  actShowGridExecute(sender);
end;

procedure TfrmKardexMovimientosEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TFrmKardexMovimientosGrid.Create(Self);
  TFrmKardexMovimientosGrid(gFormGrid).DSProductos.DataSet:=DSProductos.DataSet;


end;

end.
