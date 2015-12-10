unit OrdenesSalidaFormAnt;

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
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Grids, Vcl.DBGrids, cxStyles,
  cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Data.DB, Vcl.ComCtrls, Vcl.ToolWin, cxScrollBox, cxPC,
  Vcl.ExtCtrls, cxContainer, cxEdit, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmOrdenesSalida_Ant = class(T_frmStandarGFormEdit)
    pnlDetail: TPanel;
    tbarGrid: TToolBar;
    TlBtnInserta: TToolButton;
    ToolButton4: TToolButton;
    TlBtnEdita: TToolButton;
    ToolButton3: TToolButton;
    TlBtnBorra: TToolButton;
    ToolButton6: TToolButton;
    TlBtnFirst: TToolButton;
    TlBtnPrior: TToolButton;
    TlBtnNext: TToolButton;
    TlBtnLasT: TToolButton;
    ToolButton22: TToolButton;
    TlBtnGuarda: TToolButton;
    TlBtnCancela: TToolButton;
    DBGrid1: TDBGrid;
    PnlEncabezado: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxScrollBox2: TcxScrollBox;
    ToolBar1: TToolBar;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton21: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    Panel2: TPanel;
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
    Panel4: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    Panel5: TPanel;
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
    PnlRecolecta: TPanel;
    DBLkupCmbBxRecolecta: TDBLookupComboBox;
    BtBtnRecolecta: TBitBtn;
    EdtContraseniaRC: TEdit;
    BtBtnAceptaRecoleccion: TBitBtn;
    Label11: TLabel;
    Label13: TLabel;
    PnlRevisa: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    EdtContraseniaRV: TEdit;
    BitBtn1: TBitBtn;
    DBLkupCmbBxRevisa: TDBLookupComboBox;
    BtBtnRevisa: TBitBtn;
    PnlEmpaca: TPanel;
    Label14: TLabel;
    EdtContraseniaEm: TEdit;
    BitBtn3: TBitBtn;
    DBLkupCmbBxEmpaca: TDBLookupComboBox;
    Label15: TLabel;
    BtBtnEmpaca: TBitBtn;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    BtBtnFinRecolecta: TBitBtn;
    BtBtnFinRevisa: TBitBtn;
    BtBtnFinEmpaque: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BtBtnCancelaProc: TBitBtn;
    LblRecoleccion: TLabel;
    DBTxtQuienRecolecta: TDBText;
    LblReviso: TLabel;
    LblEmpaco: TLabel;
    DBTxtQuienRevisa: TDBText;
    DBTxtQuienEmpaca: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure BtBtnGenIniciarProcesoClick(Sender: TObject);
    procedure BtBtnAceptaProcesosClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure BtBtnFinGenProcesoClick(Sender: TObject);
    procedure BtBtnCancelaProcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrdenesSalida_Ant: TFrmOrdenesSalida_Ant;

implementation

{$R *.dfm}

uses OrdenesSalidasDM, OrdenesSalidaFormGrid;

procedure TFrmOrdenesSalida_Ant.BtBtnCancelaProcClick(Sender: TObject);
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

procedure TFrmOrdenesSalida_Ant.BtBtnAceptaProcesosClick(Sender: TObject);
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

procedure TFrmOrdenesSalida_Ant.BtBtnGenIniciarProcesoClick(Sender: TObject);
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

procedure TFrmOrdenesSalida_Ant.DataSourceDataChange(Sender: TObject;
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

procedure TFrmOrdenesSalida_Ant.BtBtnFinGenProcesoClick(Sender: TObject);
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

procedure TFrmOrdenesSalida_Ant.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TFrmOrdenesSalidaGrid.Create(Self);
  TFrmOrdenesSalidaGrid(gFormGrid).CerrarGrid := actCloseGrid;

  DataSource.dataset.open; //Nov 25/15
  DtSrcOrdenSalItem.DataSet.Open

end;

end.
