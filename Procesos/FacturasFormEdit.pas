unit FacturasFormEdit;

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
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit, cxDBEdit,
  Vcl.Buttons, cxLabel, cxDBLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFacturasFormEdit = class(T_frmStandarGFormEdit)
    PnlEncabezado: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLabel1: TcxDBLabel;
    Label2: TLabel;
    cxDBLabel2: TcxDBLabel;
    DBLkpCmbBxTipoDoc: TDBLookupComboBox;
    cxDBLabel3: TcxDBLabel;
    Label3: TLabel;
    cxDBLabel4: TcxDBLabel;
    Label4: TLabel;
    SpdBtnGenerarCFDI: TSpeedButton;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label6: TLabel;
    Label11: TLabel;
    cxDBLabel5: TcxDBLabel;
    Bevel1: TBevel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    Panel3: TPanel;
    ToolBar2: TToolBar;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    DBGrid2: TDBGrid;
    DSCFDIConceptos: TDataSource;
    DatasetItemFirst: TDataSetFirst;
    DatasetItemPrior: TDataSetPrior;
    DatasetItemNext: TDataSetNext;
    DatasetItemLast: TDataSetLast;
    DatasetItemInsert: TDataSetInsert;
    DatasetItemDelete: TDataSetDelete;
    DatasetItemEdit: TDataSetEdit;
    DatasetItemPost: TDataSetPost;
    DatasetItemCancel: TDataSetCancel;
    DatasetItemRefresh: TDataSetRefresh;
    Action1: TAction;
    DSDatosCliente: TDataSource;
    Panel1: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label12: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label24: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    SpdBtnRechazarPerdido: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ToolButton3: TToolButton;
    TlBtnGeneraCFDI: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpdBtnGenerarCFDIClick(Sender: TObject);
  private
    FacturaCta: TBasicAction;
    procedure SetFacturaCta(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property FacturarCtas : TBasicAction read FacturaCta write SetFacturaCta;
  end;

var
  frmFacturasFormEdit: TfrmFacturasFormEdit;

implementation

{$R *.dfm}

uses FacturasFormGrid, FacturasDM;

procedure TfrmFacturasFormEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmFacturasGrid.Create(Self);
  TFrmFacturasGrid(gFormGrid).CerrarGrid := actCloseGrid;
end;

procedure TfrmFacturasFormEdit.SetFacturaCta(const Value: TBasicAction);
begin
  FacturaCta := Value;
  TlBtnGeneraCFDI.Action:=Value;
end;

procedure TfrmFacturasFormEdit.SpdBtnGenerarCFDIClick(Sender: TObject);
begin
  inherited;
  //Poner aca Serie y Folio y Fecha y luego llamar a generar Factura
  //Esta debe tener asignado el llamado al Procesar
end;

procedure TfrmFacturasFormEdit.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 ////Mostrar para pedir selecccion y cambiar tambien en el Documento Salida
end;

end.
