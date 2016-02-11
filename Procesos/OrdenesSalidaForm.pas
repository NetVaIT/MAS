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
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxGroupBox, cxRadioGroup,
  cxCheckBox, Data.Win.ADODB;

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
    LblAutorizo: TLabel;
    DBText3: TDBText;
    PnlAutorizaYFactura: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    EdtContraAutoriza: TEdit;
    BitBtn5: TBitBtn;
    DBLkupCmbBxAutoriza: TDBLookupComboBox;
    BitBtn6: TBitBtn;
    BtBtnAutoriza: TBitBtn;
    PnlInformacionEntrega: TPanel;
    DSInformacionEntrega: TDataSource;
    Label2: TLabel;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label7: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    Label9: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label21: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    PnlSalidasUbicacion: TPanel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    BtBtnAcepta: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid1: TDBGrid;
    DSSalidasUbicaciones: TDataSource;
    DSQryAuxiliar: TDataSource;
    DSProductosXEspacio: TDataSource;
    BtBtnAceptaInfoEnt: TBitBtn;
    BtBtnCancelaInfoEnt: TBitBtn;
    Label22: TLabel;
    DBNavigator1: TDBNavigator;
    actActualizaKardex: TAction;
    DSInsertaKardex: TDataSource;
    DBText4: TDBText;
    Label23: TLabel;
    DBText5: TDBText;
    Label24: TLabel;
    BtBtnCancela: TBitBtn;
    TlBtnImprimirOrdenSal: TToolButton;
    ToolButton4: TToolButton;
    ChckBxDatosEnvios: TCheckBox;
    BtBtnImprimeEtiqueta: TBitBtn;
    BtBtnAdjGuia: TBitBtn;
    procedure BtBtnIniciarProceso(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure BtBtnFinGenProcesoClick(Sender: TObject);
    procedure BtBtnAceptaProcesosClick(Sender: TObject);
    procedure BtBtnCancelaProcClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DSInformacionEntregaStateChange(Sender: TObject);
    procedure BtBtnAceptaInfoEntClick(Sender: TObject);
    procedure BtBtnCancelaInfoEntClick(Sender: TObject);
    procedure DSSalidasUbicacionesUpdateData(Sender: TObject);
    procedure BtBtnCancelaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure TlBtnImprimirOrdenSalClick(Sender: TObject);
    procedure ChckBxDatosEnviosClick(Sender: TObject);
    procedure BtBtnImprimeEtiquetaClick(Sender: TObject);
    procedure BtBtnAdjGuiaClick(Sender: TObject);
  private
    procedure CrearSalidasUbicacion;
    function ExisteCompleto(idOrdenSalidaItem: Integer;
      var Falta: Double): Boolean;
    function VerificaUbicacionProductos(idordenSalida: Integer): Boolean;
    procedure ImprimirOrdenSalida(idOrdenSalida,IDDocumentoSalida:Integer);
    procedure ImprimirEtiqueta(idOrdenSalida, IDDocumentoSalida: Integer);
    { Private declarations }
  public
    { Public declarations }
    procedure Facturar(IDOrden:Integer;var CFDICreado:Boolean);
    Procedure ActualizaKardex(IdOrdenSalida:integer);
  end;

var
  FrmOrdenesSalida: TFrmOrdenesSalida;

implementation

{$R *.dfm}

uses OrdenesSalidaFormGrid, OrdenesSalidasDM, FacturasDM, ImpresosSalidasDM;

procedure TFrmOrdenesSalida.ActualizaKardex(IdOrdenSalida: integer);
var                        //Feb 5/16
  idProdKdx:Integer;
begin
  DtSrcOrdenSalItem.DataSet.First;
  while not DtSrcOrdenSalItem.DataSet.eof do
  begin
    TadoQuery(DSInsertaKardex.DataSet).Parameters.ParamByName('IdOrdenSalidaItem1').Value:=DtSrcOrdenSalItem.DataSet.fieldbyname('idOrdenSalidaItem').AsInteger;

    TadoQuery(DSInsertaKardex.DataSet).Parameters.ParamByName('IdOrdenSalidaItem2').Value:=DtSrcOrdenSalItem.DataSet.fieldbyname('idOrdenSalidaItem').AsInteger;
    TadoQuery(DSInsertaKardex.DataSet).Parameters.ParamByName('IdAlmacen').Value:=  1; //Almacen Actual  // debe ser variable  Feb 10/16
    TadoQuery(DSInsertaKardex.DataSet).ExecSQL;

    TadoQuery(DSQryAuxiliar.DataSet).Close;
    TadoQuery(DSQryAuxiliar.DataSet).SQL.Clear;
    TadoQuery(DSQryAuxiliar.DataSet).SQL.ADD('Select IDProductoKardex from ProductosKardex where idordenSalidaItem= '+ intToStr(DtSrcOrdenSalItem.DataSet.fieldbyname('idOrdenSalidaItem').AsInteger));
    TadoQuery(DSQryAuxiliar.DataSet).Open;
    if not DSQryAuxiliar.DataSet.eof then
    begin
      idProdKdx:=DSQryAuxiliar.DataSet.FieldByName('IdProductoKardex').ASInteger;
      TadoQuery(DSQryAuxiliar.DataSet).Close;
      TadoQuery(DSQryAuxiliar.DataSet).SQL.Clear;
      TadoQuery(DSQryAuxiliar.DataSet).SQL.ADD('Update SalidasUbicaciones SET IdProductoKardexS='+intToStr(idProdKdx)+' where idordenSalidaItem= '+ intToStr(DtSrcOrdenSalItem.DataSet.fieldbyname('idOrdenSalidaItem').AsInteger));
      TadoQuery(DSQryAuxiliar.DataSet).ExecSQL;
    end;
    DtSrcOrdenSalItem.DataSet.Next;
  enD;
  DtSrcOrdenSalItem.DataSet.First;
end;

procedure TFrmOrdenesSalida.BtBtnAdjGuiaClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Adjuntar Guia Escaneada..... Proceso en Construcci�n');
end;

procedure TFrmOrdenesSalida.BtBtnAceptaInfoEntClick(Sender: TObject);
begin
  inherited;
  DSInformacionEntrega.DataSet.Post; //Se supone que solo esta habilitado si se edito

end;

procedure TFrmOrdenesSalida.BtBtnAceptaProcesosClick(Sender: TObject);
var estatus:Integer;
    campoFecha, CampoClave,Clave, CampoIDPer:String;
    Pnlaux:TPanel;
    btnAux:TbitBtn;
    CreoCFDI, imprimeOS:Boolean;
begin
  inherited;
  ImprimeOS:=False; //Feb 11/16
  Estatus:=-1; //Para Cuando vaya a autorizar Dic 15/15
  case (Sender as TBitBtn).tag of
  1:begin
      campoFecha:='FechaIniRecolecta';
      CampoClave:='ClaveURecolecta';
      clave:=EdtContraseniaRC.Text;
      Pnlaux:=PnlRecolecta;
      EdtContraseniaRC.clear;
      btnAux:=BtBtnFinRecolecta;
      CampoIDPer:='IDPersonaRecolecta'; //Nov 25
      ImprimeOS:=True; //Feb 11/16
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
  3:begin//Autorizacion //Dic 15/15
      campoFecha:='FechaAutoriza';
      clave:=EdtContraAutoriza.Text;
      CampoClave:='ClaveUautoriza';
      Pnlaux:=PnlRecolecta;
      EdtContraAutoriza.Clear;
      btnAux:=BtBtnEmpaca;
      CampoIDPer:='IDPersonaAutoriza';
      Estatus:=4;
    end;
  4:begin   //Se cambio
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
      if Estatus<>-1 then
        datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger:=Estatus;
      datasource.DataSet.Post;
      if ImprimeOS then //Feb 11/16
       //ShowMessage('Imprimir Orden Salida');
         ImprimirOrdenSalida(datasource.DataSet.FieldByName('IDOrdenSalida').AsInteger,datasource.DataSet.FieldByName('IdDocumentoSalida').AsInteger);
      Pnlaux.Visible:=False;
      btnAux.Visible:=true;
    end
    else
    begin
      //Clave incorrecta
      ShowMessage('Contrase�a incorrecta');
    end;
  end
  else
    ShowMessage('Debe seleccionar la persona y colocar su contrase�a');

  //Si es 4 autorizo bien... Se debe generar la Factura directamente
  if Estatus<>-1 then //Cambio a 4
  begin
   //showmessage('Mandar generacion de Factura');
    ActualizaKardex(datasource.DataSet.FieldByName('idOrdenSalida').AsInteger); //Verificando si existe o no ?
    Facturar(datasource.DataSet.FieldByName('idOrdenSalida').AsInteger, CreoCFDI);
    if CreoCFDI then
    begin//Verificar si qued� al menos creada como Prefactura, si no hay que regresar al estado antes de autorizar.
      DSInformacionEntrega.DataSet.Close;
      DSInformacionEntrega.DataSet.Open;

   //   ChckBxDatosEnvios.Checked:=true;
   //   PnlInformacionEntrega.Visible:=True;

    end
    else
    begin
      //Regresar al estatus anterior
      if datasource.DataSet.State =dsBrowse then
        datasource.DataSet.Edit;
      datasource.DataSet.FieldByName(campoFecha).Value:=NULL;
      datasource.DataSet.FieldByName('IDPersonaAutoriza').Value:=NULL;
      datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger:=3; //Regresa al estado anterior??
      datasource.DataSet.Post;
      ShowMessage('Hubo errores Intentando generar el CFDI, verifique Cat�logos gen�ricos');
    end;

    //Si no se genera hay que hacer algo para que se pueda generar en otro punto!!! ??
  end;
end;

procedure TFrmOrdenesSalida.BtBtnCancelaClick(Sender: TObject);
begin
  inherited;
  PnlSalidasUbicacion.Visible:=False;
  BtBtnFinRecolecta.Visible:=True;
end;

procedure TFrmOrdenesSalida.BtBtnCancelaInfoEntClick(Sender: TObject);
begin
  inherited;
  DSInformacionEntrega.DataSet.Cancel; //Se supone que solo esta habilitado si se edito
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
  3:begin   //Dic 15/15
      BtBtnAutoriza.Visible:=True;
      PnlAutorizaYFactura.Visible:=False;
  end;
  4:begin
      BtBtnEmpaca.Visible:=True;
      Pnlempaca.Visible:=False;
  end;

  end;
  if datasource.DataSet.State=dsEdit then
      datasource.DataSet.Cancel;
end;

procedure TFrmOrdenesSalida.BtBtnFinGenProcesoClick(Sender: TObject);
var EstatusNvo:integer;
    CampoFecha:String;
    Esperar:Boolean;
begin
  inherited;
  Esperar:=False;
  case (Sender as TBitBtn).tag of
    1:begin
        BtBtnFinRecolecta.Visible:=False;
        //Cambiar Estatus
        EstatusNvo:=2; //REcolectada
        CampoFecha:='FechaFinRecolecta';
        CrearSalidasUbicacion; //Ene 28/16
        PnlSalidasUbicacion.Visible:=True; //Ene 28/16
        Esperar:=True;
    end;
    2:begin
       BtBtnFinRevisa.Visible:=False;
       EstatusNvo:=3; //Revisada  --> Para autorizar
       CampoFecha:='FechaFinRevisa';
    end;
(*    3:begin  //  //Dic 15/15 //Llamado en el unico boton
        BtBtnAutoriza.Visible:=False;
        EstatusNvo:=4; //aUTORIZADA
        CampoFecha:='FechaAutoriza';

    end;  *)

    4:begin   //Solo si esta autorizada
        BtBtnFinEmpaque.Visible:=False;
        EstatusNvo:=5; //Empacada
        CampoFecha:='FechaFinempaca';

    end;
    10:begin //Acepta despues de recolectar y lo puede pasar a Estatus 2
         //Verificar que tenga ubicaci�n  cada uno de los Items
         if DSSalidasUbicaciones.State=dsEdit then
            DSSalidasUbicaciones.dataset.Post;
         if VerificaUbicacionProductos(DataSource.dataset.fieldbyname('IdOrdenSalida').asinteger) then   //Verificar y ocultar
         begin
           EstatusNvo:=2; //REcolectada      //Master
           CampoFecha:='FechaFinRecolecta';
           Esperar:=False;
         end
         else
           Esperar:=True;
    end;
    12:begin //Sigue esperando
         Esperar:=True;
         //No hacer nada

    end;

  end;
  if not Esperar then //
  begin
    if datasource.DataSet.State =dsBrowse then
        datasource.DataSet.Edit;
      datasource.DataSet.FieldByName(campoFecha).AsDateTime:=Now;
      datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger:=EstatusNvo;
      datasource.DataSet.Post;
   //   Pnlaux.Visible:=False;
   //   btnAux.Visible:=true;
  end;
end;

procedure TFrmOrdenesSalida.BtBtnImprimeEtiquetaClick(Sender: TObject);
begin
  inherited;
  ImprimirEtiqueta(datasource.DataSet.FieldByName('idOrdenSalida').AsInteger,0);
end;

procedure TFrmOrdenesSalida.BtBtnIniciarProceso(Sender: TObject);
begin
  inherited;

 case (Sender as TBitBtn).tag of
    1:begin
        BtBtnRecolecta.Visible:=False;
        PnlRecolecta.Visible:=True;
      //Debe seleccionar usuario y poner contrase�a
      //Si todo esta bien poner fecha iniciorecolecta y habilitar boton fin.
    end;
    2:begin
        PnlRevisa.Visible:=true;
        BtBtnRevisa.Visible:=false;
    end;
    3:begin //Dic 15/15
        BtBtnAutoriza.Visible:=False;
        PnlAutorizaYFactura.Visible:=True;
      end;

    4:begin
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
    BtBtnAutoriza.Visible:= (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=3) and  //Dic 15/15
                            (Datasource.DataSet.FieldByName('FechaAutoriza').IsNull);

    BtBtnFinEmpaque.Visible:= (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=4) and
                            (not Datasource.DataSet.FieldByName('FechaIniEmpaca').IsNull)and
                            (Datasource.DataSet.FieldByName('FechaFinempaca').IsNull);
    ChckBxDatosEnvios.visible:=  (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger>4);//Feb 11/16
    PnlInformacionEntrega.Visible:=(Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger>4)and ChckBxDatosEnvios.Checked;
    // ??PnlInformacionEntrega.Visible:=(Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger>4); //Ene 27/16
    PnlSalidasUbicacion.Visible:=False;  //Ene 28/16

    PnlRecolecta.Visible:=False;
    PnlRevisa.Visible:=False;
    PnlEmpaca.Visible:=False;
    PnlAutorizaYFactura.Visible:=False; //Dic 15/15
    //Nov 25/15
    LblRecoleccion.Visible:=not(Datasource.DataSet.FieldByName('FechaIniRecolecta').IsNull);
    if LblRecoleccion.Visible and (Datasource.DataSet.FieldByName('FechaFinRecolecta').IsNull) then
      LblRecoleccion.Caption:='Recolectando:'
    else
      LblRecoleccion.Caption:='Recolect�:';
    LblReviso.Visible:=not(Datasource.DataSet.FieldByName('FechaIniRevisa').IsNull);
    if LblReviso.Visible and (Datasource.DataSet.FieldByName('FechaFinRevisa').IsNull) then
      LblReviso.Caption:='Revisando:'
    else
      LblReviso.Caption:='Revis�:';
   //Dic 15/15 desde
    Lblautorizo.Visible:=not(Datasource.DataSet.FieldByName('Fechaautoriza').IsNull);

   //Hasta



    LblEmpaco.Visible:=not(Datasource.DataSet.FieldByName('FechaIniEmpaca').IsNull);
    if LblEmpaco.Visible and (Datasource.DataSet.FieldByName('FechaFinempaca').IsNull) then
      LblEmpaco.Caption:='Empacando:'
    else
      LblEmpaco.Caption:='Empac�:';

  end;
end;

procedure TFrmOrdenesSalida.DBGrid1CellClick(Column: TColumn);
begin
  inherited;  //Se movio aca porque s�lo se usa al editar.
  dsProductosXEspacio.DataSet.Filtered:=False;                                                  // DtSrcOrdenSalItem     //No tiene datos
  dsProductosXEspacio.DataSet.Filter:='IDProducto='+dssalidasUbicaciones.DataSet.fieldbyname('IDProducto').AsString;
  dsProductosXEspacio.DataSet.Filtered:=True;
//  showmessage('IdProducto '+  dssalidasUbicaciones.DataSet.fieldbyname('IDProducto').AsString);

end;

procedure TFrmOrdenesSalida.DSInformacionEntregaStateChange(Sender: TObject);
begin
  inherited;
  BtBtnAceptaInfoEnt.Enabled:=dsInformacionEntrega.State=dsEdit;
  BtBtnCancelaInfoEnt.Enabled:=dsInformacionEntrega.State=DsEdit;

  BtBtnImprimeEtiqueta.Enabled:=dsInformacionEntrega.State=dsBrowse;
  BtBtnAdjGuia.Enabled:= BtBtnImprimeEtiqueta.Enabled;
end;

procedure TFrmOrdenesSalida.DSSalidasUbicacionesUpdateData(Sender: TObject);
begin
  inherited;
  if dsSalidasUbicaciones.State =dsBrowse then
    DSSalidasUbicaciones.DataSet.Refresh;
end;

procedure TFrmOrdenesSalida.Facturar(IDOrden: Integer;var CFDICreado:Boolean);

begin
  dmFacturas := TdmFacturas.CreateWMostrar(nil,True);  //Era false pero verificar  a ver si no da el aV
  dmFActuras.IDordenSalida:=IDOrden;
  dmFacturas.ActCrearPrefacturas.Execute;
 // dmFActuras.Muestra:=False;
  CFDICreado:= dmFActuras.CreoCFDI;
  if CFDICreado then
    dmFacturas.ActProcesaFactura.Execute;

  FreeAndNil(dmFacturas);

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
//  TFrmOrdenesSalidaGrid(gFormGrid).CerrarGrid := actCloseGrid;

  DataSource.dataset.open; //Nov 25/15
  DtSrcOrdenSalItem.DataSet.Open;
  DSInformacionEntrega.DataSet.Open;
  dsProductosXEspacio.DataSet.Open;

end;

procedure TFrmOrdenesSalida.ImprimirOrdenSalida(idOrdenSalida, IDDocumentoSalida: Integer);
var
  DMImpresosSalidas:TDMImpresosSalidas;
begin
  DMImpresosSalidas:=TDMImpresosSalidas.Create(Self);
  DMImpresosSalidas.adodSDocumentoSalida.Parameters.ParamByName('IdDocumentoSalida').Value:=idDocumentoSalida;
  DMImpresosSalidas.adodSDocumentoSalida.open;

  DMImpresosSalidas.ADODtStOrdenSalida.Close;
  DMImpresosSalidas.ADODtStOrdenSalida.Parameters.ParamByName('IdOrdenSalida').Value:=idOrdenSalida;
  DMImpresosSalidas.ADODtStOrdenSalida.Open;
  DMImpresosSalidas.ADODtStOrdenSalidaItem.Close;
  DMImpresosSalidas.ADODtStOrdenSalidaItem.Parameters.ParamByName('IdOrdenSalida').Value:=idOrdenSalida;
  DMImpresosSalidas.ADODtStOrdenSalidaItem.Open;
   DMImpresosSalidas.PrintPDFFile(1);

   DMImpresosSalidas.Free;

end;

procedure TFrmOrdenesSalida.TlBtnImprimirOrdenSalClick(Sender: TObject);
begin
  inherited;
  ImprimirOrdenSalida(datasource.DataSet.FieldByName('IDOrdenSalida').AsInteger,datasource.DataSet.FieldByName('IdDocumentoSalida').AsInteger);
end;

procedure TFrmOrdenesSalida.ChckBxDatosEnviosClick(Sender: TObject);
begin
  inherited;
  DSInformacionEntrega.DataSet.Refresh;
  PnlInformacionEntrega.Visible:=ChckBxDatosEnvios.Checked;
end;

procedure TFrmOrdenesSalida.CrearSalidasUbicacion;   //Ene 28/16
var
  Faltante:Double;
begin


  DSsalidasUbicaciones.dataset.Open;
  while not DtSrcOrdenSalItem.dataset.eof do
  begin
  //  DSProductosXEspacio.dataset.close;// desde Ene 29/16
   // TAdoDataset(DSProductosXEspacio.dataset).Parameters.ParamByName('IdProducto').Value:= DtSrcOrdenSalItem.dataset.fieldbyname('IdProducto').asinteger;

    Faltante:=DtSrcOrdenSalItem.dataset.fieldbyname('CantidadDespachada').asFloat;
    if not ExisteCompleto(DtSrcOrdenSalItem.dataset.fieldbyname('IdOrdenSalidaItem').asinteger,Faltante) then
    begin
      if Faltante>0.000001  then
      begin
        //Crear adicional e ingresar
        DSsalidasUbicaciones.dataset.insert;
        DSsalidasUbicaciones.dataset.fieldbyname('IdOrdenSalida').asinteger:= DtSrcOrdenSalItem.dataset.fieldbyname('IdOrdenSalida').asinteger;
        DSsalidasUbicaciones.dataset.fieldbyname('IdOrdenSalidaItem').asinteger:= DtSrcOrdenSalItem.dataset.fieldbyname('IdOrdenSalidaItem').asinteger;
        DSsalidasUbicaciones.dataset.fieldbyname('Cantidad').ASFloat:= Faltante;
        DSsalidasUbicaciones.dataset.fieldbyname('IdSalidaUbicacionEstatus').asinteger:= 1;//Registrado, cuando el usuario coloque el dato de ProductoEspacio --> En Proceso
//        DSsalidasUbicaciones.dataset.fieldbyname('IdProductoXEspacio').asinteger:= BuscaProductoDisponible(DtSrcOrdenSalItem.dataset.fieldbyname('IdProducto').asinteger);

        DSsalidasUbicaciones.dataset.post;
      end;
    end;
    DtSrcOrdenSalItem.dataset.next;
  end;

  DSsalidasUbicaciones.dataset.Refresh;


end;


function TFrmOrdenesSalida.ExisteCompleto(idOrdenSalidaItem:Integer; var Falta:Double):Boolean;     //Ene 28/16
begin
  TAdoQuery(DSQryAuxiliar.DataSet).Close;
  TAdoQuery(DSQryAuxiliar.DataSet).SQL.Clear;
  TAdoQuery(DSQryAuxiliar.DataSet).SQL.Add('Select count(IdSalidaUbicacion) reg, Sum(Cantidad) CantTotal from SalidasUbicaciones where IdOrdenSalidaItem= '+ intToSTR(idOrdenSalidaItem));
  TAdoQuery(DSQryAuxiliar.DataSet).Open;
  if DSQryAuxiliar.DataSet.Fieldbyname('CantTotal').AsFloat>0 then //No existe registrado
  begin
    Falta:=Falta-DSQryAuxiliar.DataSet.Fieldbyname('CantTotal').AsFloat;
  end;

  result:=  Falta=0; //Asegurarse que no tenga decimales  True , ya esta completo, si es diferente le falta

end;
function TFrmOrdenesSalida.VerificaUbicacionProductos(idordenSalida:Integer):Boolean;
begin
  dsQryAuxiliar.DataSet.Close;
  TAdoQuery(dsQryAuxiliar.DataSet).SQL.Clear;  //Asegurarse que si le cambia el valor de cantidad se complete el restante sin ubicar.
  TAdoQuery(dsQryAuxiliar.DataSet).SQL.ADD('Select Count(*) SinUbicacion from SalidasUbicaciones where IdOrdenSalida='+intToSTR(idordenSalida)+' and  idProductoXEspacio is NULL');
  TAdoQuery(dsQryAuxiliar.DataSet).open;
  Result:=  dsQryAuxiliar.DataSet.Fieldbyname('sinubicacion').AsInteger =0;

  if not result then
    ShowMessage('Existen Productos sin Identificar Ubicacion');
  dsQryAuxiliar.DataSet.Close;


end;

procedure TFrmOrdenesSalida.ImprimirEtiqueta(idOrdenSalida, IDDocumentoSalida: Integer);
var
  DMImpresosSalidas:TDMImpresosSalidas;
begin
  DMImpresosSalidas:=TDMImpresosSalidas.Create(Self);


  DMImpresosSalidas.ADODtStDatosEtiqueta. Close;
  DMImpresosSalidas.ADODtStDatosEtiqueta.Parameters.ParamByName('IdOrdenSalida').Value:=idOrdenSalida;
  DMImpresosSalidas.ADODtStDatosEtiqueta.Open;

  DMImpresosSalidas.PrintPDFFile(2);

  DMImpresosSalidas.Free;

end;

end.
