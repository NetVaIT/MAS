unit OrdenesSalidaForm;

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
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Grids,
  Vcl.DBGrids, cxDBEdit, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles, cxClasses, Vcl.StdActns,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls,
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls;

type
  TFrmOrdenesSalida = class(T_frmStandarGFormEdit)
    Panel4: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    LblRecoleccion: TLabel;
    DBTxtQuienRecolecta: TDBText;
    LblReviso: TLabel;
    LblEmpaco: TLabel;
    DBTxtQuienRevisa: TDBText;
    DBTxtQuienEmpaca: TDBText;
    cxDBDateEdit2: TcxDBDateEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    PnlRecolecta: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    DBLkupCmbBxRecolecta: TDBLookupComboBox;
    EdtContraseniaRC: TEdit;
    BtBtnAceptaRecoleccion: TBitBtn;
    BitBtn2: TBitBtn;
    BtBtnRecolecta: TBitBtn;
    PnlRevisa: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    EdtContraseniaRV: TEdit;
    BitBtn1: TBitBtn;
    DBLkupCmbBxRevisa: TDBLookupComboBox;
    BitBtn4: TBitBtn;
    BtBtnRevisa: TBitBtn;
    PnlEmpaca: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    EdtContraseniaEm: TEdit;
    BitBtn3: TBitBtn;
    DBLkupCmbBxEmpaca: TDBLookupComboBox;
    BtBtnCancelaProc: TBitBtn;
    BtBtnEmpaca: TBitBtn;
    BtBtnFinRecolecta: TBitBtn;
    BtBtnFinRevisa: TBitBtn;
    BtBtnFinEmpaque: TBitBtn;
    DtSrcOrdenSalItem: TDataSource;
    DatasetFirst1: TDataSetFirst;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    DatasetLast1: TDataSetLast;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DatasetRefresh1: TDataSetRefresh;
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
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    DBTxtSubtotal: TDBText;
    DBTxtIVA: TDBText;
    DBTxtTotal: TDBText;
    procedure BtBtnIniciarProceso(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure BtBtnFinGenProcesoClick(Sender: TObject);
    procedure BtBtnAceptaProcesosClick(Sender: TObject);
    procedure BtBtnCancelaProcClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrdenesSalida: TFrmOrdenesSalida;

implementation

{$R *.dfm}

uses OrdenesSalidaFormGrid, OrdenesSalidasDM;

procedure TFrmOrdenesSalida.BtBtnAceptaProcesosClick(Sender: TObject);
var estatus:Integer;
    campoFecha, CampoClave,Clave, CampoIDPer:String;
    Pnlaux:TPanel;
    btnAux:TbitBtn;
begin
  inherited;
  case (Sender as TBitBtn).tag of
  1:begin
      campoFecha:='FechaIniRecolecta';
      CampoClave:='ClaveURecolecta';
      clave:=EdtContraseniaRC.Text;
      Pnlaux:=PnlRecolecta;
      EdtContraseniaRC.clear;
      btnAux:=BtBtnFinRecolecta;
      CampoIDPer:='IDPersonaRecolecta'; //Nov 25

    end;
  2:begin
      campoFecha:='FechaIniRevisa';
      clave:=EdtContraseniaRV.Text;
      CampoClave:='ClaveURevisa';
      Pnlaux:=PnlRecolecta;
      EdtContraseniaRV.Clear;
      btnAux:=BtBtnFinRevisa;
      CampoIDPer:='IDPersonaRevisa'; //Nov 25
    end;
  3:begin
      campoFecha:='FechaIniEmpaca';
      clave:=EdtContraseniaEm.Text;
      CampoClave:='ClaveUEmpaca';
      Pnlaux:=PnlRecolecta;
      EdtContraseniaEm.Clear;
      btnAux:=BtBtnFinEmpaque;
      CampoIDPer:='IDPersonaEmpaca'; //Nov 25
    end;

  end;

  if (clave<>'') and (not datasource.DataSet.FieldByName(CampoIDPer).IsNull) then
  begin
    if datasource.DataSet.FieldByName(CampoClave).AsString =Clave then
    begin
      if datasource.DataSet.State =dsBrowse then
        datasource.DataSet.Edit;
      datasource.DataSet.FieldByName(campoFecha).AsDateTime:=Now;
      datasource.DataSet.Post;
      Pnlaux.Visible:=False;
      btnAux.Visible:=true;
    end
    else
    begin
      //Clave incorrecta
      ShowMessage('Contraseña incorrecta');
    end;
  end
  else
    ShowMessage('Debe seleccionar la persona y colocar su contraseña');


end;

procedure TFrmOrdenesSalida.BtBtnCancelaProcClick(Sender: TObject);
begin
  inherited;
  case (Sender as TBitBtn).tag of
  1:begin
        BtBtnRecolecta.Visible:=true;
        PnlRecolecta.Visible:=False;
    end;
    2:begin
        PnlRevisa.Visible:=False;
        BtBtnRevisa.Visible:=True;
    end;
    3:begin
        BtBtnEmpaca.Visible:=True;
        Pnlempaca.Visible:=False;
    end;
  end;
end;

procedure TFrmOrdenesSalida.BtBtnFinGenProcesoClick(Sender: TObject);
var EstatusNvo:integer;
    CampoFecha:String;
begin
  inherited;
  case (Sender as TBitBtn).tag of
    1:begin
        BtBtnFinRecolecta.Visible:=False;
        //Cambiar Estatus
        EstatusNvo:=2; //REcolectada
        CampoFecha:='FechaFinRecolecta';
    end;
    2:begin
       BtBtnFinRevisa.Visible:=False;
       EstatusNvo:=3; //Revisada  --> Para autorizar
       CampoFecha:='FechaFinRevisa';
    end;
    3:begin   //Solo si esta autorizada
        BtBtnFinEmpaque.Visible:=False;
        EstatusNvo:=5; //Empacada
        CampoFecha:='FechaFinempaca';

    end;
  end;
   if datasource.DataSet.State =dsBrowse then
      datasource.DataSet.Edit;
    datasource.DataSet.FieldByName(campoFecha).AsDateTime:=Now;
    datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger:=EstatusNvo;
    datasource.DataSet.Post;
 //   Pnlaux.Visible:=False;
 //   btnAux.Visible:=true;

end;

procedure TFrmOrdenesSalida.BtBtnIniciarProceso(Sender: TObject);
begin
  inherited;
 case (Sender as TBitBtn).tag of
    1:begin
        BtBtnRecolecta.Visible:=False;
        PnlRecolecta.Visible:=True;
      //Debe seleccionar usuario y poner contraseña
      //Si todo esta bien poner fecha iniciorecolecta y habilitar boton fin.
    end;
    2:begin
        PnlRevisa.Visible:=true;
        BtBtnRevisa.Visible:=false;
    end;
    3:begin
        BtBtnEmpaca.Visible:=False;
        Pnlempaca.Visible:=True;
    end;
  end;
end;

procedure TFrmOrdenesSalida.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Datasource.state=dsBrowse then
  begin
    BtBtnRecolecta.Visible:=(Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=1) and
                            (Datasource.DataSet.FieldByName('FechaIniRecolecta').IsNull);
    BtBtnRevisa.Visible:=(Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=2) and
                            (Datasource.DataSet.FieldByName('FechaIniRevisa').IsNull);

    BtBtnEmpaca.Visible:=(Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=4) and
                            (Datasource.DataSet.FieldByName('FechaIniEmpaca').IsNull);

    BtBtnFinRecolecta.Visible:= (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=1) and
                            (not Datasource.DataSet.FieldByName('FechaIniRecolecta').IsNull)and
                            (Datasource.DataSet.FieldByName('FechaFinRecolecta').IsNull);
    BtBtnFinRevisa.Visible:= (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=2) and
                            (not Datasource.DataSet.FieldByName('FechaIniRevisa').IsNull)and
                            (Datasource.DataSet.FieldByName('FechaFinRevisa').IsNull);
    BtBtnFinEmpaque.Visible:= (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=4) and
                            (not Datasource.DataSet.FieldByName('FechaIniEmpaca').IsNull)and
                            (Datasource.DataSet.FieldByName('FechaFinempaca').IsNull);


    PnlRecolecta.Visible:=False;
    PnlRevisa.Visible:=False;
    PnlEmpaca.Visible:=False;
    //Nov 25/15
    LblRecoleccion.Visible:=not(Datasource.DataSet.FieldByName('FechaIniRecolecta').IsNull);
    if LblRecoleccion.Visible and (Datasource.DataSet.FieldByName('FechaFinRecolecta').IsNull) then
      LblRecoleccion.Caption:='Recolectando:'
    else
      LblRecoleccion.Caption:='Recolectó:';
    LblReviso.Visible:=not(Datasource.DataSet.FieldByName('FechaIniRevisa').IsNull);
    if LblReviso.Visible and (Datasource.DataSet.FieldByName('FechaFinRevisa').IsNull) then
      LblReviso.Caption:='Revisando:'
    else
      LblReviso.Caption:='Revisó:';

    LblEmpaco.Visible:=not(Datasource.DataSet.FieldByName('FechaIniEmpaca').IsNull);
    if LblEmpaco.Visible and (Datasource.DataSet.FieldByName('FechaFinempaca').IsNull) then
      LblEmpaco.Caption:='Empacando:'
    else
      LblEmpaco.Caption:='Empacó:';

  end;
end;

procedure TFrmOrdenesSalida.FormActivate(Sender: TObject);
begin
  inherited;
  actShowGridExecute(sender); //Para que muestre la lista al entrar Nov 26/15
end;

procedure TFrmOrdenesSalida.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TFrmOrdenesSalidaGrid.Create(Self);
  TFrmOrdenesSalidaGrid(gFormGrid).CerrarGrid := actCloseGrid;

  DataSource.dataset.open; //Nov 25/15
  DtSrcOrdenSalItem.DataSet.Open

end;

end.
