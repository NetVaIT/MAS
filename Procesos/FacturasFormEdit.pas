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
    cxDBLabel14: TcxDBLabel;
    TlBtnEnvioFactura: TToolButton;
    ToolButton4: TToolButton;
    TlBtnCancelaCFDI: TToolButton;
    PnlTitulo: TPanel;
    cxDBLabel15: TcxDBLabel;
    Label29: TLabel;
    ToolButton5: TToolButton;
    DSAuxiliar: TDataSource;
    DSDireccioncliente: TDataSource;
    TlBtnEdit: TToolButton;
    DBLkupCmbBxDirAuxiliar: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    PreFacturas: TBasicAction;
    FacturaCta: TBasicAction;
    RegeneraPDF: TBasicAction;
    Consulta: TBasicAction;
    ffiltro: String; //Dic 29/15
    fImpresionED: integer;
    FMostrar: Boolean;
    FEnviaCorreoConDocs: TBasicAction;
    FCancelaCFDI: TBasicAction;
    FTipoDoc: Integer;
    FCFDIDiario: TBasicAction; //Feb 10/16
    ImprimeNotaVenta: TBasicAction; //Abr 4/16

    procedure SetFacturaCta(const Value: TBasicAction);
    procedure SetPreFacturas(const Value: TBasicAction);

    procedure SetRegeneraPDF(const Value: TBasicAction);

    procedure SetConsulta(const Value: TBasicAction);  //Dic 29/15
    function GetfImpresioned: integer;
    procedure SetMostrar(const Value: Boolean);
    procedure SetEnviaCorreoConDocs(const Value: TBasicAction);
    procedure SetCancelaCFDI(const Value: TBasicAction);
    procedure SetTipoDoc(const Value: Integer);
    procedure SetFCFDIDiario(const Value: TBasicAction);
    procedure SetImprimeNotaVenta(const Value: TBasicAction);  //ene 7/16

    { Private declarations }
  public
    { Public declarations }
    property FacturarCtas : TBasicAction read FacturaCta write SetFacturaCta;
    property ActPreFacturas : TBasicAction read PreFacturas write SetPreFacturas;
    property ActRegPDF : TBasicAction read RegeneraPDF write SetRegeneraPDF; //Dic 22/15
    property ActBusqueda : TBasicAction read Consulta write SetConsulta; //Dic 29/15
    property FiltroCon:String read ffiltro write ffiltro; //Dic 29/15
    property MiImpresion:integer read GetfImpresionEd write fImpresionEd;
    property ActCancelaCFDi : TBasicAction read FCancelaCFDI write SetCancelaCFDI;

    constructor CreateWMostrar(AOwner: TComponent; Mostrar:Boolean); virtual;
    property Mostrar:Boolean read FMostrar write SetMostrar;//Feb 10/16
    property EnviaCorreoConDocs: TBasicAction read FEnviaCorreoConDocs write SetEnviaCorreoConDocs;
    Property TipoDocumento:Integer read FTipoDoc write SetTipoDoc; //Mar 29/16

    property ActFActuraDiaria : TBasicAction read FCFDIDiario write SetFCFDIDiario; //Mar 31/16
    Property ActImprimeNotaVenta: TBasicAction read ImprimeNotaVenta write SetImprimeNotaVenta;  //Abr 4/16
  end;

var
  frmFacturasFormEdit: TfrmFacturasFormEdit;

implementation

{$R *.dfm}

uses FacturasFormGrid, FacturasDM;



constructor TfrmFacturasFormEdit.CreateWMostrar(AOwner: TComponent;
  Mostrar: Boolean);
begin
  FMostrar:=Mostrar;
  inherited Create(AOwner);
end;

procedure TfrmFacturasFormEdit.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  pnlmaster.Enabled:=  DataSource.DataSet.FieldByName('IdCFDIEstatus').asinteger=1;   //Prefactura
  TlBtnGeneraCFDI.Enabled:= pnlmaster.Enabled and (DataSource.DataSet.FieldByName('IdCFDITipoDocumento').asinteger<>4); //Mod. Mar 28/16
  ToolButton12.Enabled:=  pnlmaster.Enabled;                //Mod. Mar 28/16 ;
  TlBtnEnvioFactura.Enabled:=not TlBtnGeneraCFDI.Enabled and(DataSource.DataSet.FieldByName('IdCFDITipoDocumento').asinteger<>4);  //feb 17/16
  TlBtnCancelaCFDI.Enabled:= (DataSource.DataSet.FieldByName('IdCFDIEstatus').asinteger=2) and (DataSource.DataSet.FieldByName('SaldoDocumento').asFloat=DataSource.DataSet.FieldByName('Total').asFloat);
  DBLkupCmbBxDirAuxiliar.Visible:= (DataSource.State in [dsInsert,dsEdit] ); //Mar 28/16    //Se dejo para determinar el movimiento
  if DBLkupCmbBxDirAuxiliar.Visible then
  begin
    if DataSource.State=dsedit then
    begin
      dsDireccionCliente.dataset.close;
      TadoDataset(dsDireccionCliente.dataset).Parameters.ParamByName('IdPersona').value:= DBLookupComboBox1.KeyValue; //DEberia Funcionar
      dsDireccionCliente.dataset.Open;
    end;
    dsDatoscliente.DataSet:=dsDireccionCliente.DataSet
  end
  else
     dsDatoscliente.DataSet:= dsAuxiliar.DataSet; (*//DMFacturas.ADODtStDireccionesCliente*)
end;

procedure TfrmFacturasFormEdit.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
 //Copiado de Cotizacion//Mar 28/16
  //Para que abra la de direcciones
   if DataSource.State in [dsInsert,dsEdit] then //Por si cambia de cliente
   begin
     dsDireccionCliente.dataset.close;
     TadoDataset(dsDireccionCliente.dataset).Parameters.ParamByName('IdPersona').value:= DBLookupComboBox1.KeyValue; //DEberia Funcionar
     dsDireccionCliente.dataset.Open;
     if dsDireccionCliente.dataset.RecordCount >=1 then
        DataSource.DataSet.FieldByName('IdClienteDomicilio').AsInteger:= dsDireccionCliente.dataset.Fieldbyname('IDPersonaDomicilio').AsInteger;
                                      //FActura cambia
   end;
end;

procedure TfrmFacturasFormEdit.FormCreate(Sender: TObject);
begin
  inherited;
  if Mostrar then
    gFormGrid := TfrmFacturasGrid.Create(Self);



end;

procedure TfrmFacturasFormEdit.FormShow(Sender: TObject);
begin
  inherited;
//
//  ActPreFacturas.Execute;
  // TADODataSet(DSDAtosCliente.DataSet).Parameters.ParamByName('IDClienteDomicilio').Value:= DataSource.DataSet.FieldByName('IDClienteDomicilio').AsInteger;    // vre comportamiento
  //TADODataSet(DSDAtosCliente.DataSet).Parameters.ParamByName('IDClienteDomicilio').Value;      //Se habilito el de arriba ene 29/16
  DSDatosCliente.DataSet.Open;
 (* if not Mostrar then
     Hide;*)
  TlBtnEdit.Left:=23;
  case ftipoDoc of
  1:pnlTitulo.Caption:='  Facturas';
  2:pnlTitulo.Caption:='  Notas de Cr�dito';
  3:pnlTitulo.Caption:='  Notas de Cargo';
  4:pnlTitulo.Caption:='  Notas de Venta';
  end;
                                                  //Va en Cero may 24/16
  TFrmFacturasGrid(gFormGrid).tipoDocumento := tipoDocumento;   //Mar 30/16
  TlBtnEnvioFactura.Hint:='Enviar '+Trim(pnlTitulo.Caption)+' por Correo';   //Jun 2/16
  TFrmFacturasGrid(gFormGrid).TlBtnEnvioCorreo.Hint:='Enviar '+Trim(pnlTitulo.Caption)+' por Correo'; //Jun 2/16
  TFrmFacturasGrid(gFormGrid).ChckBxFactVivas.Caption:=Trim(pnlTitulo.Caption)+' vivas';
end;


function TfrmFacturasFormEdit.GetfImpresioned: integer;
begin
  fImpresioned:= TFrmFacturasGrid(gFormGrid).GRImpresion;  //Cambiado a ver si se pone bien   el de GR viene bien
  Result:= fImpresioned;
end;



procedure TfrmFacturasFormEdit.SetCancelaCFDI(const Value: TBasicAction);
begin   //Mar 3/16
  FCancelaCFDI := Value;
  TlBtnCancelaCFDI.Action:=Value;
  TlBtnCancelaCFDI.Imageindex:=25;

end;

procedure TfrmFacturasFormEdit.SetConsulta(const Value: TBasicAction);
begin
  Consulta:=Value;
  TFrmFacturasGrid(gFormGrid).ActBusqueda:=value;


end;

procedure TfrmFacturasFormEdit.SetEnviaCorreoConDocs(const Value: TBasicAction);
begin
  FEnviaCorreoConDocs := Value;
  TlBtnEnvioFactura.Action:=Value;
  TlBtnEnvioFactura.ImageIndex:=24;

  TFrmFacturasGrid(gFormGrid).ActEnvioCorreo:=Value; //Feb 17/16

end;

procedure TfrmFacturasFormEdit.SetFacturaCta(const Value: TBasicAction);
begin
  FacturaCta := Value;
  TlBtnGeneraCFDI.Action:=Value;
  TlBtnGeneraCFDI.ImageIndex:=23; //Dic 10/15

end;

procedure TfrmFacturasFormEdit.SetFCFDIDiario(const Value: TBasicAction);
begin
  FCFDIDiario := Value;
  TFrmFacturasGrid(gFormGrid).ActFacturaDiaria:=Value;
end;

procedure TfrmFacturasFormEdit.SetImprimeNotaVenta(const Value: TBasicAction);
begin
  ImprimeNotaVenta:=Value;
  TFrmFacturasGrid(gFormGrid).ActImprimeNotaVenta:=Value;
end;

procedure TfrmFacturasFormEdit.SetMostrar(const Value: Boolean);
begin
  FMostrar := Value;
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

procedure TfrmFacturasFormEdit.SetTipoDoc(const Value: Integer);
begin
  FTipoDoc := Value;
end;

end.
