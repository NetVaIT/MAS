unit UbicacionesEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormEdit, cxStyles, cxClasses,
  Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  cxTextEdit, cxDBEdit, Vcl.StdCtrls, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxScrollBox, cxPC, EstadosEdit, MunicipiosEdit, PoblacionesEdit;

type
  TfrmUbicacionesEdit = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    tsEstado: TcxTabSheet;
    tsMunicipio: TcxTabSheet;
    tsPoblacion: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    frmEstados : TfrmEstadosEdit;
    frmMunicipios : TfrmMunicipiosEdit;
    frmPoblacion : TfrmPoblacionesEdit;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UbicacionesDM, UbicacionesForm;

procedure TfrmUbicacionesEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmUbicaciones.Create(Self);
  pcMain.Properties.HideTabs := False;
  frmEstados := TfrmEstadosEdit.Create(nil);
  frmMunicipios := TfrmMunicipiosEdit.Create(nil);
  frmPoblacion := TfrmPoblacionesEdit.Create(nil);
  TfrmUbicaciones(gFormGrid).CerrarGrid := actCloseGrid;
end;

procedure TfrmUbicacionesEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmEstados);
  FreeAndNil(frmMunicipios);
  FreeAndNil(frmPoblacion);
end;

procedure TfrmUbicacionesEdit.FormShow(Sender: TObject);
begin
  inherited;
  frmEstados.Parent := tsEstado;
  frmEstados.Align := alClient;
  frmEstados.Show;
  frmMunicipios.Parent := tsMunicipio;
  frmMunicipios.Align := alClient;
  frmMunicipios.Show;
  frmPoblacion.Parent := tsPoblacion;
  frmPoblacion.Align := alClient;
  frmPoblacion.Show;
end;

end.
