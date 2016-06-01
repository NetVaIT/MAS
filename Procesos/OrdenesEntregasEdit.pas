unit OrdenesEntregasEdit;

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
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit,
  Vcl.DBCtrls, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, cxDBLabel, Vcl.StdCtrls, Vcl.Buttons, cxGroupBox, cxRadioGroup,
  cxDBEdit, cxMaskEdit, cxCalendar, cxCheckBox, cxTextEdit, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, ShellApi;

type
  TfrmOrdenesEntregasEdit = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    cxDBLabel2: TcxDBLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    BtBtnAceptaInfoEnt: TBitBtn;
    BtBtnCancelaInfoEnt: TBitBtn;
    BtBtnImprimeEtiqueta: TBitBtn;
    BtBtnAdjGuia: TBitBtn;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    cmbTelefono: TcxDBLookupComboBox;
    BtBtnOrdenEmbarque: TBitBtn;
    DBLkupCmbBxPaqueteria: TDBLookupComboBox;
    dsOrdenesSalida: TDataSource;
    dsOrdenSalidaItems: TDataSource;
    cxGrid: TcxGrid;
    tvgrid1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    tvgrid1idOrdenSalida: TcxGridDBColumn;
    tvgrid1FechaRegistro: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1CantidadDespachada: TcxGridDBColumn;
    cxGridDBTableView1Observaciones: TcxGridDBColumn;
    cxGridDBTableView1Producto: TcxGridDBColumn;
    cxGridDBTableView1ClaveProducto: TcxGridDBColumn;
    cxDBLabel3: TcxDBLabel;
    Label4: TLabel;
    Panel1: TPanel;
    DBNvgtr: TDBNavigator;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    procedure BtBtnImprimeEtiquetaClick(Sender: TObject);
    procedure BtBtnOrdenEmbarqueClick(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
  private
    procedure ImprimirEtiqueta(IdInfoentrega, IDDocumentoSalida,
      cualRep: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdenesEntregasEdit: TfrmOrdenesEntregasEdit;

implementation

{$R *.dfm}

uses OrdenesEntregasDM, ImpresosSalidasDM;

procedure TfrmOrdenesEntregasEdit.BtBtnImprimeEtiquetaClick(Sender: TObject);
begin
  inherited;                                    //Cambio may 27/16
  ImprimirEtiqueta(datasource.DataSet.FieldByName('IdInfoentrega').AsInteger,0, 2);
(* // Verificar si va

  if application.MessageBox('¿Mercancía Enviada?','Confirmación cambio estado',MB_YESNO)=idyes then //Abr 20/16
  begin
    datasource.DataSet.Edit;
    datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger:=6; //Enviado
    datasource.DataSet.Post;
  end;  *)
end;

procedure TfrmOrdenesEntregasEdit.BtBtnOrdenEmbarqueClick(Sender: TObject);
begin
  inherited;
  ImprimirEtiqueta(datasource.DataSet.FieldByName('IdInfoentrega').AsInteger,0, 3);
end;

procedure TfrmOrdenesEntregasEdit.DataSourceStateChange(Sender: TObject);
begin
  inherited;
  BtBtnImprimeEtiqueta.Enabled:=datasource.State=dsBrowse;
  BtBtnOrdenEmbarque.Enabled:= BtBtnImprimeEtiqueta.Enabled;
  BtBtnAdjGuia.Enabled:= BtBtnImprimeEtiqueta.Enabled;
end;

procedure TfrmOrdenesEntregasEdit.ImprimirEtiqueta(IdInfoentrega, IDDocumentoSalida,cualRep: Integer);
var                                      //Copiado de OrdenesSalidas May 27/16
  DMImpresosSalidas:TDMImpresosSalidas;
  Cuantos:Integer;
  ArchiPDF:TFileName;
begin
  DMImpresosSalidas:=TDMImpresosSalidas.Create(Self);

  ArchiPDF:='Etiqueta.pdf';
  DMImpresosSalidas.ADODtStDatosEtiqueta. Close;
  DMImpresosSalidas.ADODtStDatosEtiqueta.Parameters.ParamByName('IdInfoentrega').Value:=IdInfoentrega;
  DMImpresosSalidas.ADODtStDatosEtiqueta.Open;
  Cuantos:=DMImpresosSalidas.ADODtStDatosEtiqueta.FieldByName('CantidadCajas').AsInteger;
  DMImpresosSalidas.PrintPDFFile(CualRep, cuantos,False,ArchiPDF);  //May 30/16      Mientras se coloca en el mismo archivo .. se dejo que se muestre
  DMImpresosSalidas.Free;      //Temporarl
  if FileExists(ArchiPDF) and (cuantos =1)then //May 30/16
     ShellExecute(application.Handle, 'open', PChar(ArchiPDF), nil, nil, SW_SHOWNORMAL);


end;
end.
