unit ListaPreciosEdit;

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
  cxDBEdit, Vcl.StdCtrls;

type
  TfrmListaPrecioEdit = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    PnlTitulo: TPanel;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    DSVerificaActualiza: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxDBTextEdit5Editing(Sender: TObject; var CanEdit: Boolean);
  private
    FImprimelista: TBasicAction;
    FactualizaPrecios: TBasicAction;
    FImprimeMayoreo: TBasicAction;
    FImprimelistaNva: TBasicAction;
    procedure SetFImprimeLista(const Value: TBasicAction);
    procedure SetFactualizaPrecios(const Value: TBasicAction);
    procedure SetFImprimeMayoreo(const Value: TBasicAction);
    procedure SetFImprimeListaNva(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }

     property actImprimeLista: TBasicAction read FImprimelista write SetFImprimeLista; //Jul 18/16
     property actActualizaprecios: TBasicAction read FactualizaPrecios write SetFactualizaPrecios; //Jul 18/16
     property actImprimeMayoreo: TBasicAction read FImprimeMayoreo write SetFImprimeMayoreo; //Jul 18/16

     property actImprimeListaNva: TBasicAction read FImprimelistaNva write SetFImprimeListaNva; //Ago 16/16

  end;

var
  frmListaPrecioEdit: TfrmListaPrecioEdit;

implementation

{$R *.dfm}

uses ListaPreciosDM, ListaPreciosGrid;

procedure TfrmListaPrecioEdit.cxDBTextEdit5Editing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  Datasource.DataSet.Tag:= DataSource.tag;  //
  Datasource.DataSet.Filter:='';
end;

procedure TfrmListaPrecioEdit.FormActivate(Sender: TObject);
begin
  inherited;
  actShowGridExecute(sender); //Para que muestre la lista al entrar Jul 4/16
end;

procedure TfrmListaPrecioEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TFrmListaPreciosGrid.Create(Self);
  TFrmListaPreciosGrid(gFormGrid).DSVerificaActualiza.DataSet:= DSVerificaActualiza.DataSet;

end;


procedure TfrmListaPrecioEdit.SetFactualizaPrecios(const Value: TBasicAction);
begin
  FactualizaPrecios := Value;
  TFrmListaPreciosGrid(gFormGrid).actActualizaPrecios:=value;
end;

procedure TfrmListaPrecioEdit.SetFImprimeLista(const Value: TBasicAction);
begin
  FImprimelista := Value;
  TFrmListaPreciosGrid(gFormGrid).actImprimeLista:=Value;
end;

procedure TfrmListaPrecioEdit.SetFImprimeListaNva(const Value: TBasicAction);
begin
  FImprimelistaNva := Value;
  TFrmListaPreciosGrid(gFormGrid).actImprimeListaNva:=Value;
end;

procedure TfrmListaPrecioEdit.SetFImprimeMayoreo(const Value: TBasicAction);
begin
  FImprimeMayoreo := Value;
  TFrmListaPreciosGrid(gFormGrid).actImprimeMayoreo:=Value;
end;

end.
