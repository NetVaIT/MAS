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
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, ShellApi, Data.Win.ADODB;

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
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DSDireccionenvios: TDataSource;
    BtBtnEmpaca: TBitBtn;
    BtBtnEnviar: TBitBtn;
    PnlEmpaca: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    EdtContraseniaEm: TEdit;
    BtBtnAceptar: TBitBtn;
    DBLkupCmbBxEmpaca: TDBLookupComboBox;
    BtBtnCancelaProc: TBitBtn;
    BtBtnFinEmpaque: TBitBtn;
    DSQryAuxiliar: TDataSource;
    DSQryAux2: TDataSource;
    DBTxtQuienEmpaca: TDBText;
    LblEmpaco: TLabel;
    PnlEnviar: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    DBTxtQuienEntrega: TDBText;
    lblRespEntrega: TLabel;
    PnlTitulo: TPanel;
    procedure BtBtnImprimeEtiquetaClick(Sender: TObject);
    procedure BtBtnOrdenEmbarqueClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtBtnEmpacaClick(Sender: TObject);
    procedure BtBtnAceptarClick(Sender: TObject);
    procedure BtBtnFinEmpaqueClick(Sender: TObject);
    procedure BtBtnCancelaProcClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    FCargarDocGuia: TBasicAction;
    procedure ImprimirEtiqueta(IdInfoentrega, IDDocumentoSalida,
      cualRep: Integer);
    procedure SetCargarDocGuia(const Value: TBasicAction);
    procedure ActualizarOrdenesSalida(IdInfoEntrega, IdEstatusNvo, IdPersonaEmp:Integer);
    procedure PermisosEdicion;
    function GuardaCAjas(idOrden, Cajas: Integer): Boolean;
    function EnviaOrdenSola(idOrden: Integer): integer;
    { Private declarations }
  public
    { Public declarations }
    property CargarDocGuia: TBasicAction read FCargarDocGuia write SetCargarDocGuia;
  end;

var
  frmOrdenesEntregasEdit: TfrmOrdenesEntregasEdit;

implementation

{$R *.dfm}

uses OrdenesEntregasDM, ImpresosSalidasDM, OrdenesEntregasGrid, _ConectionDmod;

procedure TfrmOrdenesEntregasEdit.BtBtnAceptarClick(Sender: TObject);
var estatus:Integer;
    campoFecha, CampoClave,Clave, CampoIDPer:String;
    btnAux:TbitBtn;
    pnlAux:Tpanel;
begin
  inherited;
   case (Sender as TBitBtn).tag of
   4:begin   //Se cambio
      campoFecha:='FechaIniEmpaque';
      clave:=EdtContraseniaEm.Text;
      CampoClave:='ClaveUEmpaca';
      EdtContraseniaEm.Clear;
      btnAux:=BtBtnFinEmpaque;
      pnlAux:=PnlEmpaca;
      CampoIDPer:='IDPersonaEmpaca'; //Nov 25
    end;

   5: begin
        CampoIDPer:='IdResponsableEntrega'; //Nov 25
        estatus:= 5; //No requiere contraseña
        pnlAux:=PnlEnviar;

   end;

  end;
  if estatus=5 then
  begin //DEbneria estar en edit por que se póne el REsponsable
    if (not datasource.DataSet.FieldByName(CampoIDPer).IsNull) then
    begin
      datasource.DataSet.FieldByName('IDEstatusOrdenEntrega').AsInteger:=6; //Enviado //Verificar si actualizar la otra tabla
      datasource.DataSet.Post;
      pnlAux.Visible:=False;
    end
    else
      ShowMessage('Debe colocar el responsable del Envio');
  end
  else
  begin
    if (clave<>'') and (not datasource.DataSet.FieldByName(CampoIDPer).IsNull) then
    begin
      if datasource.DataSet.FieldByName(CampoClave).AsString =Clave then
      begin
        if datasource.DataSet.State =dsBrowse then
          datasource.DataSet.Edit;
        datasource.DataSet.FieldByName(campoFecha).AsDateTime:=Now;
        datasource.DataSet.Post;

        btnAux.Visible:=true;
        pnlAux.Visible:=False;
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
end;

procedure TfrmOrdenesEntregasEdit.BtBtnCancelaProcClick(Sender: TObject);
begin
  inherited;
  if datasource.DataSet.State=dsEdit then
      datasource.DataSet.Cancel;
  case (Sender as TBitBtn).tag of     //Copiado jun 13/16
  4:begin
     BtBtnEmpaca.Visible:=True;
     Pnlempaca.Visible:=False;
  end;
  5:begin
    // verificar o habilitar  Datasource.DataSet.FieldByName('IdResponsableEntrega').Value:=Null;
      BtBtnEnviar.Visible:=True;
      PnlEnviar.Visible:=False;
      lblRespEntrega.Visible:=False;
  end;

  end;

end;

procedure TfrmOrdenesEntregasEdit.BtBtnEmpacaClick(Sender: TObject);
begin      //Jun 9/16
  inherited;
   case (Sender as TBitBtn).tag of
   4:begin
       dsOrdenSalidaItems.dataset.refresh;
       if EnviaOrdenSola (dsOrdenSalidaItems.dataset.fieldbyname('IdOrdenSalida').asinteger) >1 then
         showmessage('Verifique que todas las ordenes de salida asociadas a la orden de entrega estén empacadas. ');

    (*  DEsh. jul 27/16 if application.MessageBox('¿Desea imprimir las Etiquetas y la Orden de embarque?','Confirmación Etiquetas', MB_YESNO)=IDYES then
       begin
         BtBtnImprimeEtiqueta.Click;
         ShowMessage('Verifique que los datos sean correctos');
         BtBtnOrdenEmbarque.Click;
       end; *)

        BtBtnEmpaca.Visible:=False;
        Pnlempaca.Visible:=True;
    end;
    5:begin //Verificar  Abr 20/16
        BtBtnEnviar.Visible:=False;
        pnlenviar.Visible:=True;
    end;
   end;
end;

function TfrmOrdenesEntregasEdit.EnviaOrdenSola(idOrden:Integer):integer; //Jul 27/16
begin
  DSQryAuxiliar.DataSet.close;
  TAdoquery(DSQryAuxiliar.DataSet).Sql.clear;
  TAdoquery(DSQryAuxiliar.DataSet).SQL.ADD('SElect COUNT(*) as Cuantos from InformacionEntregasDetalles ED1 '
                                          +'where ED1.IdInfoEntrega= (Select IdInfoEntrega from '
                                          +'InformacionEntregasDetalles where IdOrdenSalida='+intToStr(idOrden)+' ) ');
  DSQryAuxiliar.DataSet.open;

  Result:=DSQryAuxiliar.DataSet.FieldByName('Cuantos').AsInteger ;

end;


procedure TfrmOrdenesEntregasEdit.BtBtnFinEmpaqueClick(Sender: TObject);
var      //Jun 10/16
  EstatusNvo, cont:integer;
  CampoFecha, Cajas:String;
  Esperar:Boolean ; //Jul 27/16
begin
  inherited;
  Esperar:=False;
  case (Sender as TBitBtn).tag of
  4:begin   //Solo si esta autorizada
      if EnviaOrdenSola (dsOrdenSalidaItems.dataset.fieldbyname('IdOrdenSalida').asinteger) >1 then
         showmessage('Verifique que todas las ordenes de salida asociadas a la orden de entrega estén empacadas. ');
      cajas:='1';
      if InputQuery('Solicitud Información', 'Indique la cantidad de Cajas', Cajas )then   //Jul 27/16
      begin
        BtBtnFinEmpaque.Visible:=False;
        EstatusNvo:=5;  //Empacada
        CampoFecha:='FechaFinempaque';
        try
         cont:=strToint(cajas) ;

          Esperar:=not GuardaCajas(DataSource.dataset.fieldbyname('IDInfoEntrega').asinteger,cont);//Guardar Cajas

        except
           on e: Exception do
           begin
             if  e is EConvertError then
                 Showmessage('El valor debe ser un número');
             Esperar:=True;
           end;
        end;
      end
      else
      begin
        Esperar:=True;
      end;
    end;
  end;
  if not Esperar then
  begin
    if datasource.DataSet.State =dsBrowse then
          datasource.DataSet.Edit;
    datasource.DataSet.FieldByName(campoFecha).AsDateTime:=Now;
    datasource.DataSet.FieldByName('IDEstatusOrdenEntrega').AsInteger:=EstatusNvo;
    datasource.DataSet.Post;
    if EstatusNvo=5  then
    begin
      ActualizarOrdenesSalida( datasource.DataSet.FieldByName('IDInfoEntrega').AsInteger, EstatusNvo, datasource.DataSet.FieldByName('IDPersonaEmpaca').asInteger);
    end;
   // Cont:=-1;


   {


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


    end;}

  //  end

  end; //Del esperar

end;

function TfrmOrdenesEntregasEdit.GuardaCAjas(idOrden, Cajas:Integer):Boolean; //Jul 27/16
begin
  DSQryAuxiliar.DataSet.close;
  TAdoquery(DSQryAuxiliar.DataSet).Sql.clear;
  TAdoquery(DSQryAuxiliar.DataSet).SQL.ADD('Update InformacionEntregas SET CantidadCajas ='+intToStr(Cajas)
         +' where IdInfoEntrega='+intToStr(idOrden));  //Aca es directo el id de la entrega
  Result:=  TAdoquery(DSQryAuxiliar.DataSet).ExecSQL=1;   //Debe actualizar 1

end;

procedure TfrmOrdenesEntregasEdit.ActualizarOrdenesSalida(IdInfoEntrega, IdEstatusNvo, IDPersonaEmp:Integer);
begin
  dsQryAuxiliar.DataSet.Close;
  TADOQuery(dsQryAuxiliar.DataSet).sql.clear;
  TADOQuery(dsQryAuxiliar.DataSet).Sql.ADD('SElect IED.* from InformacionEntregasDetalles IED '
                                          +' where IED.idInfoEntrega='+ intToStr(IdInfoEntrega));
  TADOQuery(dsQryAuxiliar.DataSet).open;
  while not dsQryAuxiliar.DataSet.eof do
  begin
    dsQryAux2.DataSet.Close;
    TADOQuery(dsQryAux2.DataSet).sql.clear;
    TADOQuery(dsQryAux2.DataSet).Sql.ADD('Update OrdenesSalidas SET IdOrdenEstatus= '+intToStr(IdEstatusNvo)
                                          +', IDPersonaEmpaca= '+ intToStr(IDPersonaEmp)
                                          + ', FechaIniEmpaca = GetDate(), fechaFinEmpaca = GETDATE()'
                                          +' where idOrdenSalida='+ dsQryAuxiliar.DataSet.FieldByName('IdOrdenSalida').asString);
    TADOQuery(dsQryAux2.DataSet).ExecSql;

    //Aca se deberia verificar los DocumentoSalidas Items, par aver si estan completos...

    dsQryAuxiliar.DataSet.Next;
  end;



end;

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

procedure TfrmOrdenesEntregasEdit.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  BtBtnImprimeEtiqueta.Enabled:=datasource.State=dsBrowse;
  BtBtnOrdenEmbarque.Enabled:= BtBtnImprimeEtiqueta.Enabled;
  BtBtnAdjGuia.Enabled:= BtBtnImprimeEtiqueta.Enabled;

  BtBtnFinEmpaque.Visible:= (Datasource.DataSet.FieldByName('IDEstatusOrdenEntrega').AsInteger=4) and      //Jun 14/16
                         (not Datasource.DataSet.FieldByName('FechaIniEmpaque').IsNull) and
                         (Datasource.DataSet.FieldByName('FechaFinEmpaque').IsNull);

  //Jun 13/16

  BtBtnEmpaca.Visible:= (Datasource.DataSet.FieldByName('IDEstatusOrdenEntrega').AsInteger=4) and
                        (Datasource.DataSet.FieldByName('FechaIniEmpaque').IsNull) and (not PnlEmpaca.visible);


  LblEmpaco.Visible:=not(Datasource.DataSet.FieldByName('FechaIniEmpaque').IsNull);
 if LblEmpaco.Visible and (Datasource.DataSet.FieldByName('FechaFinEmpaque').IsNull) then
   LblEmpaco.Caption:='Empacando:'
 else
   LblEmpaco.Caption:='Empacó:';



  BtBtnEnviar.Visible:=(Datasource.DataSet.FieldByName('IDEstatusOrdenEntrega').AsInteger=5)and (Datasource.DataSet.FieldByName('IDResponsableEntrega').IsNull)
                       and ( not PnlEnviar.visible);
  lblRespEntrega.Visible:=not(Datasource.DataSet.FieldByName('IdResponsableEntrega').IsNull) and  (not BtBtnEnviar.Visible) ;

  Datasource.AutoEdit:= not (Datasource.DataSet.FieldByName('IDEstatusOrdenEntrega').AsInteger=6); //Jun |4/16

end;

procedure TfrmOrdenesEntregasEdit.FormActivate(Sender: TObject);
begin
  inherited;
   actShowGridExecute(sender); //Para que muestre la lista al entrar Jun 13/16
end;

procedure TfrmOrdenesEntregasEdit.FormCreate(Sender: TObject);
begin
  inherited;
   gFormGrid := TfrmOrdenesEntregasGrid.Create(Self); //Jun 9/16
   DSDireccionenvios.DataSet.Open; //Jun 9/16
end;

procedure TfrmOrdenesEntregasEdit.FormShow(Sender: TObject);
begin
  inherited;
  PermisosEdicion;
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
procedure TfrmOrdenesEntregasEdit.SetCargarDocGuia(const Value: TBasicAction);
begin
  FCargarDocGuia := Value;
  btbtnAdjGuia.Action := Value;
end;


Procedure TfrmOrdenesEntregasEdit.PermisosEdicion; //Jun 14/16
var i :Integer;
begin
  //Tag 50 elementos que debenser deshabilitados   //aban or (datasource.DataSet.fieldbyName('idEstatusOrdenEntrega').asinteger=6)
  if (pos('autoriza',_dmConection.PerFuncion)=0) then
  begin
    for i:=0 to ComponentCount-1 do
    begin
      if (Components[i] is TwinControl) and(Components[i].Tag =50)  then //Verificar
         (Components[i] as TwinControl).Enabled:=False;
    end;
  end;

end;

end.
