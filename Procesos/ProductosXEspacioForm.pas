unit ProductosXEspacioForm;

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
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, Vcl.DBCtrls, Vcl.StdCtrls,
  cxLabel, cxDBLabel, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.Buttons;

type
  TfrmProductosXEspacio = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBLabel;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBLabel;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBLabel;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBLabel;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBLabel;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBLabel;
    Label7: TLabel;
    cxDBCalcEdit1: TcxDBLabel;
    dsCambio: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    btnCamviar: TBitBtn;
    cxDBCalcEdit2: TcxDBCalcEdit;
    PnlTitulo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCambio: TDataSet;
    FactCambiar: TBasicAction;
    FactAjustar: TBasicAction;
    procedure SetCambio(const Value: TDataSet);
    procedure SetactCambiar(const Value: TBasicAction);
    procedure SetactAjustar(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property Cambio: TDataSet read FCambio write SetCambio;
    property actCambiar: TBasicAction read FactCambiar write SetactCambiar;
    property actAjustar: TBasicAction read FactAjustar write SetactAjustar;
  end;

implementation

{$R *.dfm}

uses ProductosXEspacioDm, ProductosXEspacioGrid;

procedure TfrmProductosXEspacio.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmProductosXEspacioGrid.Create(Self);
end;

procedure TfrmProductosXEspacio.FormShow(Sender: TObject);
begin
  inherited;
  actShowGrid.Execute;
end;

procedure TfrmProductosXEspacio.SetactAjustar(const Value: TBasicAction);
begin
  FactAjustar := Value;
  TfrmProductosXEspacioGrid(gFormGrid).actAjustar:=value;
end;

procedure TfrmProductosXEspacio.SetactCambiar(const Value: TBasicAction);
begin
  FactCambiar := Value;
  btnCamviar.Action:= Value;
end;

procedure TfrmProductosXEspacio.SetCambio(const Value: TDataSet);
begin
  FCambio := Value;
  dsCambio.DataSet:=  Value;
end;

end.
