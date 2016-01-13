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
  cxCalendar, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, cxMemo,Data.Win.ADODB;

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
    Label24: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    SpdBtnRechazarPerdido: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ToolButton3: TToolButton;
    TlBtnGeneraCFDI: TToolButton;
    Label25: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    PnlCtaPago: TPanel;
    Label26: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    Label27: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel12: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel10: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    Splitter1: TSplitter;
    Label28: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label12: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Splitter2: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    PreFacturas: TBasicAction;
    FacturaCta: TBasicAction;
    RegeneraPDF: TBasicAction;
    Consulta: TBasicAction;
    ffiltro: String; //Dic 29/15
    fImpresionED: integer;
    procedure SetFacturaCta(const Value: TBasicAction);
    procedure SetPreFacturas(const Value: TBasicAction);

    procedure SetRegeneraPDF(const Value: TBasicAction);

    procedure SetConsulta(const Value: TBasicAction);  //Dic 29/15
    function GetfImpresioned: integer;  //ene 7/16

    { Private declarations }
  public
    { Public declarations }
    property FacturarCtas : TBasicAction read FacturaCta write SetFacturaCta;
    property ActPreFacturas : TBasicAction read PreFacturas write SetPreFacturas;
    property ActRegPDF : TBasicAction read RegeneraPDF write SetRegeneraPDF; //Dic 22/15
    property ActBusqueda : TBasicAction read Consulta write SetConsulta; //Dic 29/15
    property FiltroCon:String read ffiltro write ffiltro; //Dic 29/15
    property MiImpresion:integer read GetfImpresionEd write fImpresionEd;


  end;

var
  frmFacturasFormEdit: TfrmFacturasFormEdit;

implementation

{$R *.dfm}

uses FacturasFormGrid, FacturasDM;



procedure TfrmFacturasFormEdit.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  pnlmaster.Enabled:=  DataSource.DataSet.FieldByName('IdCFDIEstatus').asinteger=1;   //Prefactura
  TlBtnGeneraCFDI.Enabled:= pnlmaster.Enabled;
  ToolButton12.Enabled:=  pnlmaster.Enabled;
end;

procedure TfrmFacturasFormEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmFacturasGrid.Create(Self);
  TFrmFacturasGrid(gFormGrid).CerrarGrid := actCloseGrid;

end;

procedure TfrmFacturasFormEdit.FormShow(Sender: TObject);
begin
  inherited;
//
//  ActPreFacturas.Execute;
 //  TADODataSet(DSDAtosCliente.DataSet).Parameters.ParamByName('IDClienteDomicilio').Value:= DataSource.DataSet.FieldByName('IDClienteDomicilio').AsInteger;    // vre comportamiento
  TADODataSet(DSDAtosCliente.DataSet).Parameters.ParamByName('IDClienteDomicilio').Value;
  DSDatosCliente.DataSet.Open;
end;


function TfrmFacturasFormEdit.GetfImpresioned: integer;
begin
  fImpresioned:= TFrmFacturasGrid(gFormGrid).GRImpresion;  //Cambiado a ver si se pone bien   el de GR viene bien
  Result:= fImpresioned;
end;

procedure TfrmFacturasFormEdit.SetConsulta(const Value: TBasicAction);
begin
  Consulta:=Value;
  TFrmFacturasGrid(gFormGrid).ActBusqueda:=value;


end;

procedure TfrmFacturasFormEdit.SetFacturaCta(const Value: TBasicAction);
begin
  FacturaCta := Value;
  TlBtnGeneraCFDI.Action:=Value;
  TlBtnGeneraCFDI.ImageIndex:=23; //Dic 10/15

end;

procedure TfrmFacturasFormEdit.SetPreFacturas(const Value: TBasicAction);
begin
  PreFacturas:=value;
  TFrmFacturasGrid(gFormGrid).ActPreFacturas:=value;

end;

procedure TfrmFacturasFormEdit.SetRegeneraPDF(const Value: TBasicAction);
begin
  RegeneraPDF:=Value;
  TFrmFacturasGrid(gFormGrid).ActRegPDF:=value;

end;

procedure TfrmFacturasFormEdit.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 ////Mostrar para pedir selecccion y cambiar tambien en el Documento Salida
end;

end.
