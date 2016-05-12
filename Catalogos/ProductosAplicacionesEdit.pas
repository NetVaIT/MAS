unit ProductosAplicacionesEdit;

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
  Vcl.DBCtrls, cxTextEdit, cxDBEdit, Vcl.StdCtrls;

type
  TfrmProductosAplicacionEdit = class(T_frmStandarGFormEdit)
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    RdGrpSelecccion: TRadioGroup;
    DSIdentificadores: TDataSource;
    procedure DataSourceStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RdGrpSelecccionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductosAplicacionEdit: TfrmProductosAplicacionEdit;

implementation

{$R *.dfm}

uses  ProductosDM, ProductosAplicacionesForm;

procedure TfrmProductosAplicacionEdit.DataSourceStateChange(Sender: TObject);
begin
  inherited;
  RdGrpSelecccion.Visible:=datasource.state in[dsInsert,dsEdit];
end;

procedure TfrmProductosAplicacionEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid:= TfrmProductosAplicaciones.Create(Self);
end;

procedure TfrmProductosAplicacionEdit.RdGrpSelecccionClick(Sender: TObject);
var Encontro:Boolean;
begin
  inherited;    //Aca sólo entra en edicion e insercion  //May 12/16
  Encontro:=True;
  case RdGrpSelecccion.ItemIndex of
  0:if not dsIdentificadores.DataSet.FieldByName('Identificador1').IsNull  then
      datasource.dataset.fieldbyname('Identificador').Asstring:=dsIdentificadores.DataSet.FieldByName('Identificador1').AsString
    else
      Encontro:=False;
  1: if not dsIdentificadores.DataSet.FieldByName('Identificador2').IsNull  then
      datasource.dataset.fieldbyname('Identificador').Asstring:=dsIdentificadores.DataSet.FieldByName('Identificador2').AsString
    else
      Encontro:=False;
  2: if not dsIdentificadores.DataSet.FieldByName('Identificador3').IsNull  then
      datasource.dataset.fieldbyname('Identificador').Asstring:=dsIdentificadores.DataSet.FieldByName('Identificador3').AsString
    else
      Encontro:=False;
  end;
  if Encontro then
  begin
    datasource.dataset.fieldbyname('Descripcion').Asstring:=dsIdentificadores.DataSet.FieldByName('Descripcion').AsString
  end
  else
  begin
    datasource.dataset.fieldbyname('Identificador').Asstring:='';
    datasource.dataset.fieldbyname('Descripcion').Asstring:='';
    ShowMessage('No existe el identificador seleccionado');
  end;
end;

end.
