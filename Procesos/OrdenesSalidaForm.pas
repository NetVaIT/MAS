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
  cxCheckBox, Data.Win.ADODB, cxLabel, cxDBLabel, Vcl.Menus, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

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
    PnlDetalle: TPanel;
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
    Label25: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label26: TLabel;
    cxDBLabel1: TcxDBLabel;
    PppMnEnviar: TPopupMenu;
    EnviarCorreoGuia: TMenuItem;
    TlBtnEnvioFactura: TToolButton;
    PnlTitulo: TPanel;
    BtBtnRegresaEstado: TBitBtn;
    DBRdGrpGenerar: TDBRadioGroup;
    DBChckBxAcumula: TDBCheckBox;
    DsCambiosREgreso: TDataSource;
    PnlRegresaEstado: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    EdtContraRev: TEdit;
    BtBtnAceptaReg: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn9: TBitBtn;
    Label29: TLabel;
    DBText6: TDBText;
    BtBtnEnviar: TBitBtn;
    cmbTelefono: TcxDBLookupComboBox;
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
    procedure BtBtnRegresaEstadoClick(Sender: TObject);
    procedure DBRdGrpGenerarClick(Sender: TObject);
    procedure BtBtnAceptaRegClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure cxDBDateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    FCargarDocGuia: TBasicAction;
    FEnviaCorreoConDocs: TBasicAction;
    FActApartado: TBasicAction;
    FRevApartado: TBasicAction; //Abr 11/16
    procedure CrearSalidasUbicacion;
    function ExisteCompleto(idOrdenSalidaItem: Integer;
      var Falta: Double): Boolean;
    function VerificaUbicacionProductos(idordenSalida: Integer): Boolean;
    procedure ImprimirOrdenSalida(idOrdenSalida,IDDocumentoSalida:Integer);
    procedure ImprimirEtiqueta(idOrdenSalida, IDDocumentoSalida: Integer);
    procedure SetCargarDocGuia(const Value: TBasicAction);
    procedure SetEnviaCorreoConDocs(const Value: TBasicAction);
    procedure SetActApartado(const Value: TBasicAction);
    procedure SetRevApartado(const Value: TBasicAction);
    function RevisaGenerado(IDOrden: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }                                  // Mod. Mar 28/16
    procedure Facturar(IDOrden:Integer;var CFDICreado:Boolean;IDGenTipoDoc:integer);
    Procedure ActualizaKardex(IdOrdenSalida:integer);
    property CargarDocGuia: TBasicAction read FCargarDocGuia write SetCargarDocGuia;
    property EnviaCorreoConDocs: TBasicAction read FEnviaCorreoConDocs write SetEnviaCorreoConDocs;
    property ActualizaApartado: TBasicAction read FActApartado write SetActApartado; //Abr 11/16
    property RevierteApartado: TBasicAction read FRevApartado write SetRevApartado; //Abr 11/16

  end;

var
  FrmOrdenesSalida: TFrmOrdenesSalida;

implementation

{$R *.dfm}

uses OrdenesSalidaFormGrid, OrdenesSalidasDM, FacturasDM, ImpresosSalidasDM,
  UDMEnvioMail, _Utils, _ConectionDmod;

procedure TFrmOrdenesSalida.ActualizaKardex(IdOrdenSalida: integer);  //Kardex + Salidas_Ubicaciones
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
  //ShowMessage('Adjuntar Guia Escaneada..... Proceso en Construcción');
end;

procedure TFrmOrdenesSalida.BtBtnRegresaEstadoClick(Sender: TObject);
var
  IdEstatusAct:Integer;
begin
  inherited;
  DsCambiosREgreso.DataSet.open;
  IdEstatusAct:=datasource.DataSet.FieldByName('IdOrdenEstatus').ASInteger;
  case IdEstatusAct of
  1:begin //Abr 13/16
       PnlRegresaEstado.Visible:=True;

      DsCambiosREgreso.DataSet.Insert;
      DsCambiosREgreso.DataSet.FieldByName('FechaCambio').AsDateTime:=Now;
      DsCambiosREgreso.DataSet.FieldByName('Observaciones').AsString:='Borrar OS :'+DataSource.DataSet.FieldByName('idordenSalida').AsString;

  end;
  3:begin
   //   ShowMessage('Está en revisión. Acá queda cuando se cancela una Factura');
       //Pedir Usuario y Contraseña, Cambiar Estatus,Borrar quien y cuando , grabar usuario y fecha en tabla nueva.
      PnlRegresaEstado.Visible:=True;    //Mar 17/16

      DsCambiosREgreso.DataSet.Insert;
      DsCambiosREgreso.DataSet.FieldByName('FechaCambio').AsDateTime:=Now;
      DsCambiosREgreso.DataSet.FieldByName('IdOrdenSalida').Asinteger:=DataSource.DataSet.FieldByName('idordenSalida').AsInteger;
      DsCambiosREgreso.DataSet.FieldByName('IdOrdenSalidaEstatusNvo').Asinteger:=2; //??

    end;
  2:begin
    //  ShowMessage('Está en Recolección. Se puede dejar en Generada.... Quitar la asignación de Ubicaciones');
      PnlRegresaEstado.Visible:=True;    //Mar 17/16
      DsCambiosREgreso.DataSet.Insert;
      DsCambiosREgreso.DataSet.FieldByName('FechaCambio').AsDateTime:=Now;
      DsCambiosREgreso.DataSet.FieldByName('IdOrdenSalida').Asinteger:=DataSource.DataSet.FieldByName('idordenSalida').AsInteger;
      DsCambiosREgreso.DataSet.FieldByName('IdOrdenSalidaEstatusNvo').Asinteger:=1; //??
    end;

  end;

end;

procedure TFrmOrdenesSalida.BitBtn9Click(Sender: TObject);
begin
  inherited;
  //Cancela Regreso
  if DsCambiosREgreso.State in [dsInsert,dsedit] then      //Mar 18/16
  begin
    dsCambiosRegreso.DataSet.Cancel;

    EdtContraRev.Clear;
  end;
  PnlRegresaEstado.Visible:=False;    //Mar 17/16
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
      ShowMessage('Contraseña incorrecta');
    end;
  end
  else
    ShowMessage('Debe seleccionar la persona y colocar su contraseña');

  //Si es 4 autorizo bien... Se debe generar la Factura directamente
  if Estatus<>-1 then //Cambio a 4
  begin
   //showmessage('Mandar generacion de Factura');  //Try y si no se deja tratar de regresar todo??
    ActualizaKardex(datasource.DataSet.FieldByName('idOrdenSalida').AsInteger); //Verifica si existe o no                 //Mod. Mar 28/16
    Facturar(datasource.DataSet.FieldByName('idOrdenSalida').AsInteger, CreoCFDI, datasource.DataSet.FieldByName('idGeneraCFDItipoDoc').AsInteger);
    if CreoCFDI then
    begin//Verificar si quedó al menos creada como Prefactura, si no hay que regresar al estado antes de autorizar.
      DSInformacionEntrega.DataSet.Close;
      DSInformacionEntrega.DataSet.Open;

   //   ChckBxDatosEnvios.Checked:=true;
   //   PnlInformacionEntrega.Visible:=True;

    end
    else //Solo cuando no se crea el CFDI
    begin
      //Regresar al estatus anterior
      if datasource.DataSet.State =dsBrowse then
        datasource.DataSet.Edit;
      datasource.DataSet.FieldByName(campoFecha).Value:=NULL;
      datasource.DataSet.FieldByName('IDPersonaAutoriza').Value:=NULL;
      datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger:=3; //Regresa al estado anterior??
      datasource.DataSet.Post;
      if datasource.DataSet.FieldByName('idGeneraCFDItipoDoc').AsInteger=4 then //Abr 1/16
      begin //Ver si se borra el CFDI (regresar valores de folios??)
        if not datasource.DataSet.FieldByName('Acumula').asBoolean then //Es presupuesto.. Deshacer actualizaciones de Inventario, Clientes e informacionEntrega
        begin

        end;
      end;

      //deberia quitar Kardex y posibles datos de CFDIs
      ShowMessage('Hubo errores Intentando generar el CFDI, verifique Catálogos genéricos');
    end;

    //Si no se genera hay que hacer algo para que se pueda generar en otro punto!!! ??
  end;
end;

procedure TFrmOrdenesSalida.BtBtnAceptaRegClick(Sender: TObject);
var
  Clave, CampoPersona, CampoFecha1, campoFecha2:String;
  eliminar, Escambio:Boolean; //Abr 13/16
begin
  inherited;
  eliminar:=False;
  EsCambio:=True;
  clave:=EdtContraRev.Text;
  //Acepta regreso
  //Verificar Usuario y cntraseña.. ver que tenga permiso de regresar..
  case datasource.DataSet.FieldByName('IdOrdenEstatus').ASInteger of
    1:begin // Para Eliminar la orden y regresar al Pedido   //Abr 13/16
        //Eliminar items y regresar Pedidos XSurtir
       EsCambio:=False;
       if application.MessageBox('Está seguro de regresar al Pedido?. La Orden de Salida será eliminada', 'Confirmación ',MB_YESNO)=idYes then
       begin
         eliminar:=true;
       end
       else
       begin
         if DsCambiosREgreso.State=dsInsert then
            DsCambiosREgreso.dataset.Cancel;
         EdtContraRev.Clear;
         PnlRegresaEstado.Visible:=False;
       end;
    end;
    2:begin
        CampoPersona:='IDPersonaRecolecta';
        CampoFecha1:='FechaIniRecolecta';
        campoFecha2:='FechaFinRecolecta';
    end;
    3:begin
        CampoPersona:='IDPersonaRevisa';
        CampoFecha1:='FechaIniRevisa';
        campoFecha2:='FechaFinRevisa';

    end;
    4: begin  //Solo para las que generan notas de Venta
        CampoPersona:='IDPersonaautoriza';
        CampoFecha1:='FechaAutoriza';
        campoFecha2:='';
    end;
    5:begin //Empaque ver cuando  y que se regresa.. (Informacion Entrega)
        CampoPersona:='IDPersonaEmpaca';
        CampoFecha1:='FechaIniempaca';
        campoFecha2:='FechaFinEmpaca';
    end;
  end;

  if DsCambiosREgreso.State=dsInsert then
  begin                                                        //and TienePermisoRegreso(DsCambiosREgreso.DataSet.FieldByName('IDPersonaAutCambio').asinteger)
    if (clave<>'') and (not DsCambiosREgreso.DataSet.FieldByName('IDPersonaAutCambio').IsNull) then
    begin
      if  DsCambiosREgreso.DataSet.FieldByName('ClaveUsr').AsString =Clave then
      begin
      (*  if DsCambiosREgreso.DataSet.State =dsBrowse then
          DsCambiosREgreso.DataSet.Edit;*)
        DsCambiosREgreso.DataSet.FieldByName('FechaCambio').AsDateTime:=Now;

        DsCambiosREgreso.DataSet.Post;
      if eliminar then
      begin
        DtSrcOrdenSalItem.DataSet.First;
        while not DtSrcOrdenSalItem.Dataset.eof do
        begin
          DtSrcOrdenSalItem.DataSet.Delete;
        end;
        datasource.DataSet.delete;
        PnlRegresaEstado.Visible:=False;
      end
      else
        if EsCambio then
        begin

          if datasource.DataSet.state=dsBrowse then   //Mar 18/16
            datasource.DataSet.Edit;
          datasource.DataSet.FieldByName(CampoPersona).Value:=Null;
          datasource.DataSet.FieldByName(CampoFecha1).Value:=Null;
          if CampoFecha2<>'' then //Ya que algunos no fecha fin
             datasource.DataSet.FieldByName(CampoFecha2).Value:=Null;

          datasource.DataSet.FieldByName('IdOrdenEstatus').ASInteger:=DsCambiosREgreso.DataSet.FieldByName('IdOrdenSalidaEstatusNvo').asInteger;
          datasource.DataSet.Post;
          datasource.DataSet.Refresh;
          //Actualiza Apartado y Pendiente XSurtir si es el Estatus 2 el nuevo
          if DsCambiosREgreso.DataSet.FieldByName('IdOrdenSalidaEstatusNvo').asInteger=2 then   //Abr 12/16
            RevierteApartado.Execute;

          PnlRegresaEstado.Visible:=False;
          EdtContraRev.Clear;
        end;
      end
      else
        ShowMessage('Contraseña incorrecta');
    end
    else
        ShowMessage('Debe seleccionar el usuario que autoriza el cambio y su contraseña');
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
    Cont:integer; //Aban Abr 8/16
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
         //Verificar que tenga ubicación  cada uno de los Items
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
    if EstatusNvo=5  then //Abr 7/16
    begin
       Cont:=-1;
       //Revisar y dar por cerrados Pedidos completados
       dsQryAuxiliar.DataSet.Close;
       TADOQuery(dsQryAuxiliar.DataSet).sql.clear;
       TADOQuery(dsQryAuxiliar.DataSet).Sql.ADD('SElect DS.IdDocumentoSalida , Sum(DSD.CantidadPendiente) as suma, COUNT(*) as registros from DocumentosSalidasDetalles DSD '
                                                +' inner join DocumentosSalidas DS on DSD.idDocumentoSalida=DS.idDocumentoSalida'
                                                +' where DS.idDocumentoSalida='+ DataSource.dataset.fieldbyname('IdDocumentoSalida').asstring
                                                +' group by DS.IdDocumentoSalida'); //Ver si con una sola se puede
       TADOQuery(dsQryAuxiliar.DataSet).open;
       if not dsQryAuxiliar.DataSet.eof  and (dsQryAuxiliar.DataSet.fieldbyname('Registros').AsInteger >0) and
          (dsQryAuxiliar.DataSet.fieldbyname('suma').AsInteger =0) then //Pasa primera condicion
       begin
         dsQryAuxiliar.DataSet.Close;
         TADOQuery(dsQryAuxiliar.DataSet).sql.clear;   //Abr 8/16
         TADOQuery(dsQryAuxiliar.DataSet).Sql.ADD('SElect OS.IdOrdenEstatus, OS.idOrdenSalida, OS.IdOrdenSalidaOrigen from OrdenesSalidas OS '
                                                 +' where os.idDocumentoSalida=' + DataSource.dataset.fieldbyname('IdDocumentoSalida').asstring
                                                 +' and OS.IdOrdenEstatus<>8  ');//Verfificar
         TADOQuery(dsQryAuxiliar.DataSet).open;
         if not dsQryAuxiliar.DataSet.Eof then
           cont:=0;
         while not  dsQryAuxiliar.DataSet.Eof do
         begin //Contar para actualizar
           if dsQryAuxiliar.DataSet.fieldbyname('IdOrdenEstatus').AsInteger <>5 then // no esta Empacado
             Cont:= Cont+1;
           dsQryAuxiliar.DataSet.next;
         end;
         if Cont=0 then //Todo lo encontrado es 5
         begin
           //Actualizar estatus de Documento como cerrado
           dsQryAuxiliar.DataSet.Close;
           TADOQuery(dsQryAuxiliar.DataSet).sql.clear;   //Abr 8/16                           //Cerrado
           TADOQuery(dsQryAuxiliar.DataSet).Sql.ADD('UPDATE DocumentosSalidas SET IdDocumentoSalidaEstatus=2 '
                                                   +'where idDocumentoSalida=' + DataSource.dataset.fieldbyname('IdDocumentoSalida').asstring);
           TADOQuery(dsQryAuxiliar.DataSet).execSQL;
         end;


       end;
     end
     else
       if EstatusNvo=3 then //Abr 11/16
       begin  //poner de PedidosXSurtir  a Apartado
         ActualizaApartado.Execute;
       end;

   //   Pnlaux.Visible:=False;
   //   btnAux.Visible:=true;
  end;
end;



procedure TFrmOrdenesSalida.BtBtnImprimeEtiquetaClick(Sender: TObject);
begin
  inherited;  //Enviar Cantidad de  cajas e imprimir ese numero de etiquetas //Feb 15/16
  ImprimirEtiqueta(datasource.DataSet.FieldByName('idOrdenSalida').AsInteger,0);
  if application.MessageBox('¿Mercancía Enviada?','Confirmación cambio estado',MB_YESNO)=idyes then //Abr 20/16
  begin
    datasource.DataSet.Edit;
    datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger:=6; //Enviado
    datasource.DataSet.Post;
  end;
end;

procedure TFrmOrdenesSalida.BtBtnIniciarProceso(Sender: TObject);
var
  Editando:Boolean;
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
    3:begin //Dic 15/15
        BtBtnAutoriza.Visible:=False;
        PnlAutorizaYFactura.Visible:=True;
        if datasource.Dataset.FieldByName('IDGeneraCFDITipoDoc').IsNull then
        begin
          Editando:= not (datasource.Dataset.state=dsBrowse);
          if datasource.Dataset.state=dsBrowse then
            datasource.DataSet.Edit;

          datasource.DataSet.FieldByName('IDGeneraCFDITipoDoc').AsInteger:=1;
          datasource.DataSet.FieldByName('Acumula').AsBoolean:=False;
          if NOT Editando then
            datasource.DataSet.post;

        end;

      end;

    4:begin
        BtBtnEmpaca.Visible:=False;
        Pnlempaca.Visible:=True;
    end;
    5:begin //Verificar  Abr 20/16
        if application.MessageBox('¿Mercancía Enviada?','Confirmación cambio estado',MB_YESNO)=idyes then
        begin
          datasource.DataSet.Edit;
          datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger:=6; //Enviado
          datasource.DataSet.Post;
        end;
    end;
  end;
end;

procedure TFrmOrdenesSalida.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  EdtContraRev.Clear;
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
    BtBtnAutoriza.Enabled:= pos('autoriza',_dmConection.PerFuncion)>0 ; //Abr 26/16

    BtBtnFinEmpaque.Visible:= (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=4) and
                            (not Datasource.DataSet.FieldByName('FechaIniEmpaca').IsNull)and
                            (Datasource.DataSet.FieldByName('FechaFinempaca').IsNull);                 //Abr 20/16
    ChckBxDatosEnvios.visible:=  (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger>4)and  (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger<6);//Feb 11/16
    TlBtnEnvioFactura.Enabled:= (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger>4) and (not DSInformacionEntrega.dataset.FieldByName('IdDocumentoGuia').IsNull); //Feb 17/16
    PnlInformacionEntrega.Visible:=(Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger>4)and ChckBxDatosEnvios.Checked;
    // ??PnlInformacionEntrega.Visible:=(Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger>4); //Ene 27/16
    PnlSalidasUbicacion.Visible:=False;  //Ene 28/16

    BtBtnEnviar.Visible:=(Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger=5);

    PnlRecolecta.Visible:=False;
    PnlRevisa.Visible:=False;
    PnlEmpaca.Visible:=False;
    PnlAutorizaYFactura.Visible:=False; //Dic 15/15
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
   //Dic 15/15 desde
    Lblautorizo.Visible:=not(Datasource.DataSet.FieldByName('Fechaautoriza').IsNull);

   //Hasta


    LblEmpaco.Visible:=not(Datasource.DataSet.FieldByName('FechaIniEmpaca').IsNull);
    if LblEmpaco.Visible and (Datasource.DataSet.FieldByName('FechaFinempaca').IsNull) then
      LblEmpaco.Caption:='Empacando:'
    else
      LblEmpaco.Caption:='Empacó:';                                                        //Se habilito el 1 para borrar todo //Abr 13/16
    BtBtnRegresaEstado.Visible:= ((Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger>=1)
                                  and((Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger<4) //Mar 4/16
                                or ((Datasource.DataSet.FieldByName('IdGeneraCFDITipoDoc').AsInteger=4)and
                                  (not RevisaGenerado(Datasource.DataSet.FieldByName('IDOrdenSalida').AsInteger)))))// Abr 12/16
                                and (pos('autoriza',_dmConection.PerFuncion)>0) ; //Abr 26/16;
  end;
  PnlDetalle.Enabled:= (Datasource.DataSet.FieldByName('IDOrdenEstatus').AsInteger<4);
end;

function TFrmOrdenesSalida.RevisaGenerado(IDOrden:Integer):Boolean;
begin  //Verifica si es una nota que no se haya generado ya en una Factura Diaria
  TadoQuery(DSQryAuxiliar.DataSet).Close;
  TadoQuery(DSQryAuxiliar.DataSet).SQL.Clear;
  TadoQuery(DSQryAuxiliar.DataSet).SQL.ADD('Select IDCFDI, IdCFDIEstatus, IdCFDIFacturaGral from CFDI where IdOrdenSalida=  '+ intToStr(IDOrden)+
                                           ' and (IDCFDIEstatus =4) and (IdCFDIFacturaGral is not null)');
  TadoQuery(DSQryAuxiliar.DataSet).Open;
  result := not DSQryAuxiliar.DataSet.eof; //Si esta generado

end;


procedure TFrmOrdenesSalida.DBGrid1CellClick(Column: TColumn);
begin
  inherited;  //Se movio aca porque sólo se usa al editar.
  dsProductosXEspacio.DataSet.Filtered:=False;                                                  // DtSrcOrdenSalItem     //No tiene datos
  dsProductosXEspacio.DataSet.Filter:='IDProducto='+dssalidasUbicaciones.DataSet.fieldbyname('IDProducto').AsString;
  dsProductosXEspacio.DataSet.Filtered:=True;
//  showmessage('IdProducto '+  dssalidasUbicaciones.DataSet.fieldbyname('IDProducto').AsString);

end;

procedure TFrmOrdenesSalida.DBRdGrpGenerarClick(Sender: TObject);
begin
  inherited;
 DBChckBxAcumula.visible:=DBRdGrpGenerar.itemindex=1;
 case DBRdGrpGenerar.itemindex of
 0: Dataset.FieldByName('Acumula').ASBoolean:= False;
 1: Dataset.FieldByName('Acumula').ASBoolean:= True;
 end;

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

procedure TFrmOrdenesSalida.Facturar(IDOrden: Integer;var CFDICreado:Boolean;IDGenTipoDoc:integer); //Mod Mar 28/16

begin                                               //Mar 29/16
  dmFacturas := TdmFacturas.CreateWMostrar(nil,True,IDGenTipoDoc);  //Era false pero verificar  a ver si no da el aV
  dmFActuras.PIDordenSalida:=IDOrden;
  dmFacturas.ActCrearPrefacturas.Execute;
 // dmFActuras.Muestra:=False;
  CFDICreado:= dmFActuras.CreoCFDI; //Solo trae valor
  if CFDICreado and (IDGenTipoDoc<>4) then   //Mod Mar 28/16
    dmFacturas.ActProcesaFactura.Execute;
  if CFDICreado and (IDGenTipoDoc=4) then //Reporte, impresion y envio  //Abr 7/16
  begin
     dmFActuras.actImpNotasVenta.Execute;  //Incluye el envio aca //Abr 6/16
  end;
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

procedure TFrmOrdenesSalida.SetActApartado(const Value: TBasicAction);
begin
  FActApartado := Value;
end;

procedure TFrmOrdenesSalida.SetCargarDocGuia(const Value: TBasicAction);
begin
  FCargarDocGuia := Value;
  btbtnAdjGuia.Action := Value;
end;

procedure TFrmOrdenesSalida.SetEnviaCorreoConDocs(const Value: TBasicAction);
begin                              //Feb 16/16
  FEnviaCorreoConDocs := Value;
  EnviarCorreoGuia.Action:=Value;
  EnviarCorreoGuia.ImageIndex:=23;
  TlBtnEnvioFactura.Action:= Value;
  TlBtnEnvioFactura.ImageIndex:=23;
end;

procedure TFrmOrdenesSalida.SetRevApartado(const Value: TBasicAction);
begin
  FRevApartado := Value;
end;

procedure TFrmOrdenesSalida.TlBtnImprimirOrdenSalClick(Sender: TObject);
begin
  inherited;
  ImprimirOrdenSalida(datasource.DataSet.FieldByName('IDOrdenSalida').AsInteger,datasource.DataSet.FieldByName('IdDocumentoSalida').AsInteger);
end;

procedure TFrmOrdenesSalida.ToolButton33Click(Sender: TObject);
begin
  if MessageDlg(strAllowDelete, mtConfirmation, mbYesNo, 0) = mrYes then
    DtSrcOrdenSalItem.DataSet.Delete;

end;

procedure TFrmOrdenesSalida.ChckBxDatosEnviosClick(Sender: TObject);
begin
  inherited;
  DSInformacionEntrega.DataSet.Close;
  DSInformacionEntrega.DataSet.open; ///Verificar actualice por que el refresh no lo hace //May 5/16
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


procedure TFrmOrdenesSalida.cxDBDateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=13 then     //May 5/16
  begin
    key:=9;
  end;

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
  Cuantos:Integer;
begin
  DMImpresosSalidas:=TDMImpresosSalidas.Create(Self);


  DMImpresosSalidas.ADODtStDatosEtiqueta. Close;
  DMImpresosSalidas.ADODtStDatosEtiqueta.Parameters.ParamByName('IdOrdenSalida').Value:=idOrdenSalida;
  DMImpresosSalidas.ADODtStDatosEtiqueta.Open;
  Cuantos:=DMImpresosSalidas.ADODtStDatosEtiqueta.FieldByName('CantidadCajas').AsInteger;
  DMImpresosSalidas.PrintPDFFile(2, cuantos);//Ajuste Feb 15/16

  DMImpresosSalidas.Free;

end;

end.
