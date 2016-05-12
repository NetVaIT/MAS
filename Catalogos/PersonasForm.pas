unit PersonasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, PersonasDM, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls;

type
  TfrmPersonas = class(T_frmStandarGFormGrid)
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterRFC: TcxGridDBColumn;
    tvMasterCURP: TcxGridDBColumn;
    tvMasterIdPersonaTipo: TcxGridDBColumn;
    tvMasterIdSexo: TcxGridDBColumn;
    tvMasterIdEstadoCivil: TcxGridDBColumn;
    tvMasterIdPais: TcxGridDBColumn;
    tvMasterRazonSocial: TcxGridDBColumn;
    tvMasterNombre: TcxGridDBColumn;
    tvMasterApellidoPaterno: TcxGridDBColumn;
    tvMasterApellidoMaterno: TcxGridDBColumn;
    tvMasterLugarNacimiento: TcxGridDBColumn;
    tvMasterFechaNacimiento: TcxGridDBColumn;
    tvMasterIdRol: TcxGridDBColumn;
    tvMasterRol: TcxGridDBColumn;
    tvMasterPersonaTipo: TcxGridDBColumn;
    tvMasterSexo: TcxGridDBColumn;
    tvMasterEstadoCivil: TcxGridDBColumn;
    tvMasterPais: TcxGridDBColumn;
    tvMasterSaldoCliente: TcxGridDBColumn;
    tvMasterMetodoPago: TcxGridDBColumn;
    tvMasterDiasCreditoCliente: TcxGridDBColumn;
    PnlBusqueda: TPanel;
    EdtNombre: TEdit;
    ActEjecutaconsulta: TAction;
    TlBtnBuscar: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure EdtNombreChange(Sender: TObject);
    procedure EdtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FRol: TPRol;
    FfiltroNombre: String;
    FActConsulta: TBasicAction;
    procedure SetRol(const Value: TPRol);
    function GetFFiltroNombre: String;
    procedure SetFActConsulta(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;

    Property AFiltroNombre:String read GetFFiltroNombre write FfiltroNombre; //May 9/16
    property ActualizaConsulta: TBasicAction read FActConsulta write SetFActConsulta; //May 9/16
  end;

implementation

{$R *.dfm}


{ TfrmPersonas }

procedure TfrmPersonas.EdtNombreChange(Sender: TObject);
begin
  inherited;
   if edtNombre.Text<>'' then
  begin
    FfiltroNombre:=' RazonSocial Like ''%'+edtNombre.Text+'%''';
  end
  else
    FfiltroNombre:='';
end;

procedure TfrmPersonas.EdtNombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=13 then
  begin
    key:=0;
    TlBtnBuscar.Click;
  end;
end;

procedure TfrmPersonas.FormShow(Sender: TObject);
begin
  inherited;
  case FRol of
    rNone: ;
    rCliente: Self.Caption := 'Clientes';
    rProveedor: Self.Caption := 'Proveedores';
    rEmpleado: Self.Caption := 'Empleados';
    rEmisor: Self.Caption := 'Emisor'; //Aban nov 4/15
  end;
end;

function TfrmPersonas.GetFFiltroNombre: String;
begin
  Result := FfiltroNombre;
end;


procedure TfrmPersonas.SetFActConsulta(const Value: TBasicAction);

begin
  FActConsulta := Value;
  TlBtnBuscar.Action:=VAlue;
  TlBtnBuscar.ImageIndex:=12;

end;

procedure TfrmPersonas.SetRol(const Value: TPRol);
begin
  FRol := Value;

end;

end.
