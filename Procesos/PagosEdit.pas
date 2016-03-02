unit PagosEdit;

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
  Vcl.DBCtrls, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.StdCtrls,Data.Win.ADODB, cxLabel, cxDBLabel,
  Vcl.Buttons;

type
  TFrmPagosEdt = class(T_frmStandarGFormEdit)
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label9: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label10: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTxtEdtImporte: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTxtEdtSaldo: TcxDBTextEdit;
    Label13: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label1: TLabel;
    DBLkpCmbBxCliente: TDBLookupComboBox;
    Label2: TLabel;
    DBLkpCmbBxMetodoPago: TDBLookupComboBox;
    Label3: TLabel;
    DBLkpCmbBxBanco: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label5: TLabel;
    cxDBLabel3: TcxDBLabel;
    DSAuxiliar: TDataSource;
    DSDireccioncliente: TDataSource;
    DBLkupCmbBxDirAuxiliar: TDBLookupComboBox;
    cxDBLabel5: TcxDBLabel;
    BtBtnAplicaciones: TBitBtn;
    cxDBTextEdit5: TcxDBTextEdit;
    DSAplicacion: TDataSource;
    dsConFacturasPendientes: TDataSource;
    ToolButton3: TToolButton;
    PnlTitulo: TPanel;
    procedure DBLkpCmbBxClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBTxtEdtImporteExit(Sender: TObject);
    procedure BtBtnAplicacionesClick(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagosEdt: TFrmPagosEdt;

implementation

{$R *.dfm}

uses PagosDM, PagosFormGrid, AplicacionPagos;

procedure TFrmPagosEdt.BtBtnAplicacionesClick(Sender: TObject);
var FrmAplicacionPago:TFrmAplicacionPago;
begin
  inherited;
  if datasource.State in [dsEdit, DSInsert] then
     datasource.DataSet.Post;
  dsConFacturasPendientes.DataSet.Open;
  if dsConFacturasPendientes.DataSet.Eof then
  begin
    ShowMessage('No existen Facturas pendientes de Pago para ese Cliente');
  end
  else
  begin
    FrmAplicacionPago:=TFrmAplicacionPago.create(self);
    FrmAplicacionPago.DSPago.DataSet:=Datasource.DataSet;
    FrmAplicacionPago.dsConFacturasPendientes.DataSet:=dsConFacturasPendientes.DataSet;
    FrmAplicacionPago.DSAplicacion.DataSet:=DSAplicacion.DataSet;
    FrmAplicacionPago.dsConFacturasPendientes.DataSet.Open;
    FrmAplicacionPago.DSAplicacion.DataSet.Open;
    FrmAplicacionPago.DSAplicacion.DataSet.insert;
    FrmAplicacionPago.ShowModal;
    FrmAplicacionPago.Free;
  end;
  dsConFacturasPendientes.DataSet.Close;
end;

procedure TFrmPagosEdt.cxDBTxtEdtImporteExit(Sender: TObject);
begin
  inherited;
  if DataSource.State in [dsInsert,dsEdit] then //Asegurarse que no se pueda editar si tiene saldo 0
  begin
    Datasource.Dataset.fieldbyname('Saldo').ASFloat:=Datasource.Dataset.fieldbyname('Importe').ASFloat;

  end;
end;

procedure TFrmPagosEdt.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  BtBtnAplicaciones.Enabled:=dataSource.DataSet.FieldByName('Saldo').AsFloat>0;
  ToolButton12.Enabled:=(dataSource.DataSet.FieldByName('Saldo').AsFloat=dataSource.DataSet.FieldByName('Importe').AsFloat) and (dataSource.state=dsbrowse);
  toolbutton3.Enabled:= (dataSource.DataSet.FieldByName('Saldo').AsFloat=dataSource.DataSet.FieldByName('Importe').AsFloat)and (dataSource.state=dsbrowse); //Verificar comportamiento...

end;

procedure TFrmPagosEdt.DataSourceStateChange(Sender: TObject);
begin
  inherited;
  DBLkupCmbBxDirAuxiliar.Visible:= (DataSource.State in [dsInsert,dsEdit] );  //  SpdBtnCambioEstatus

end;

procedure TFrmPagosEdt.DBLkpCmbBxClienteClick(Sender: TObject);
begin
  inherited;
 //Para que abra la de direcciones //ene11/2016
   if DataSource.State in [dsInsert,dsEdit] then //Por si cambia de cliente
   begin
     dsDireccionCliente.dataset.close;
     TadoDataset(dsDireccionCliente.dataset).Parameters.ParamByName('IdPersona').value:= DBLkpCmbBxCliente.KeyValue; //DEberia Funcionar
     dsDireccionCliente.dataset.Open;
     if dsDireccionCliente.dataset.RecordCount >=1 then
        DataSource.DataSet.FieldByName('IdDomicilioCliente').AsInteger:= dsDireccionCliente.dataset.Fieldbyname('IDPersonaDomicilio').AsInteger;

   end;
end;

procedure TFrmPagosEdt.FormCreate(Sender: TObject);
begin
  inherited;
   gFormGrid := TFrmPagosGrid.Create(Self);
end;

procedure TFrmPagosEdt.FormShow(Sender: TObject);
begin
  inherited;
  ToolButton3.Left:=23;
end;

end.
