unit PersonasDomiciliosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormEdit, cxStyles, cxClasses,
  Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxDBLabel, cxCheckBox, cxDBEdit, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.StdCtrls, cxScrollBox, cxPC,Data.Win.ADODB;

type
  TfrmPersonasDomiciliosEdit = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    Label2: TLabel;
    btnUpdate: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBLabel1: TcxDBLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBLabel2: TcxDBLabel;
    Label4: TLabel;
    cxDBLabel3: TcxDBLabel;
    Label5: TLabel;
    cxDBCheckBox3: TcxDBCheckBox;
    Label13: TLabel;
    cxDBLkupCBxMetodoPago: TcxDBLookupComboBox;
    LblCteCte: TLabel;
    cxDBEdtCtaCliente: TcxDBTextEdit;
    DSMetodoPago: TDataSource;
    DSAuxiliar: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cxDBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBLkupCBxMetodoPagoPropertiesEditValueChanged(Sender: TObject);
  private
    FUpdateDomicilio: TBasicAction;
    procedure SetUpdateDomicilio(const Value: TBasicAction);
    function MetPagoExigeCuenta(idMetPago: integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
    property UpdateDomicilio: TBasicAction read FUpdateDomicilio write SetUpdateDomicilio;

  end;

implementation

{$R *.dfm}

uses PersonasDomiciliosDM, PersonasDomiciliosForm;

procedure TfrmPersonasDomiciliosEdit.cxDBLkupCBxMetodoPagoPropertiesEditValueChanged(
  Sender: TObject);
var x:integer;
begin
  inherited;
  LblCteCte.Visible:=False;
  cxDBEdtCtaCliente.Visible:=False;
  if cxDBLkupCBxMetodoPago.EditValue<>NULL then
  begin
    X:= cxDBLkupCBxMetodoPago.EditValue;
    LblCteCte.Visible:=MetPagoExigeCuenta(x);///(cxDBLkupCBxMetodoPago.EditValue=1)or(cxDBLkupCBxMetodoPago.EditValue=2)or(cxDBLkupCBxMetodoPago.EditValue=4);//DSMetodoPago.DataSet.FieldByName('ExigeCuenta').asinteger=1; //verificar si ya lo trae
    cxDBEdtCtaCliente.Visible:=LblCteCte.Visible;//cxDBLkupCBxMetodoPago.EditValue=1; //DSMetodoPago.DataSet.FieldByName('ExigeCuenta').asinteger=1;
  end;
            //   cxDBLkupCBxMetodoPago.EditValue=1;        //Ago 4/16
  if DataSource.DataSet.State in [dsedit, dsInsert]  then
  begin
    if not cxDBEdtCtaCliente.Visible then
      datasource.DataSet.FieldByName('NumCtaPagoCliente').AsString:='';
  end;
end;

function  TfrmPersonasDomiciliosEdit.MetPagoExigeCuenta(idMetPago:integer):Boolean;  //Ago 5/16
begin
  Result:=False;
  dsAuxiliar.DataSet.Close;
  TAdodataset(dsAuxiliar.DataSet).commandText:='Select ExigeCuenta from MetodosPago where idMetodoPago ='+ intTostr(idMetPago);
  dsAuxiliar.DataSet.Open;
  if not dsAuxiliar.DataSet.eof and (not dsAuxiliar.DataSet.Fieldbyname('ExigeCuenta').Isnull) then
    result:=dsAuxiliar.DataSet.Fieldbyname('ExigeCuenta').AsInteger=1;
end;



procedure TfrmPersonasDomiciliosEdit.cxDBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=13 then     //May 5/16
  begin
    key:=9;
    //Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TfrmPersonasDomiciliosEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmPersonasDomicilios.Create(Self);
  //TfrmPersonasDomicilios(gFormGrid).CerrarGrid := actCloseGrid;
end;

procedure TfrmPersonasDomiciliosEdit.SetUpdateDomicilio(
  const Value: TBasicAction);
begin
  FUpdateDomicilio := Value;
  btnUpdate.Action := Value;
end;

end.
