unit PagosConfirmaDesaplica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel,
  cxDBLabel, Data.DB,Data.Win.ADODB;

type
  TFrmConfirmaDesaplicacion = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtBtnDesaplicar: TBitBtn;
    BitBtn2: TBitBtn;
    DtSrcDesaplica: TDataSource;
    DtSrcMostrarDatos: TDataSource;
    Label1: TLabel;
    cxDBLabel1: TcxDBLabel;
    Label2: TLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBLabel8: TcxDBLabel;
    Label9: TLabel;
    cxDBLabel9: TcxDBLabel;
    Label10: TLabel;
    EdtClaveDesaplicacion: TEdit;
    procedure BtBtnDesaplicarClick(Sender: TObject);
  private
    function ActualizaSaldoCliente(IDCFDI, IDPagoRegistro: Integer;
      Importe: Double; operacion: String): Boolean;
    function VerificaContrasenia(valor: String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfirmaDesaplicacion: TFrmConfirmaDesaplicacion;

implementation

{$R *.dfm}

uses AplicacionesConsultaDM, _ConectionDmod;

procedure TFrmConfirmaDesaplicacion.BtBtnDesaplicarClick(Sender: TObject);
begin //Jun 1/16
  if VerificaContrasenia(EdtClaveDesaplicacion.Text) then
  begin
    try
      _dmConection.ADOConnection.BeginTrans;

      TADOQuery(DtSrcDesaplica.DataSet).Close;

      TADOQuery(DtSrcDesaplica.DataSet).SQL.Clear;

      TADOQuery(DtSrcDesaplica.DataSet).SQL.Add('UPDATE CFDI SET SALDODocumento=SALDODocumento + '+dtsrcmostrarDatos.DataSet.FieldByName('Importe').AsString
                            +' where IDCFDI='+dtsrcmostrarDatos.DAtaSEt.FieldByName('IDCFDI').ASString);
      TADOQuery(DtSrcDesaplica.DataSet).ExecSQL;

      TADOQuery(DtSrcDesaplica.DataSet).SQL.Clear;
      TADOQuery(DtSrcDesaplica.DataSet).SQL.Add('UPDATE PagosRegistros SET SALDO=SALDO + '+dtsrcmostrarDatos.DataSet.FieldByName('Importe').AsString
                          +' where IDPagoRegistro='+dtsrcmostrarDatos.DAtaSEt.FieldByName('IDPagoRegistro').ASString);
      TADOQuery(DtSrcDesaplica.DataSet).ExecSQL;


      ActualizaSaldoCliente(dtsrcmostrarDatos.DAtaSEt.FieldByName('IDCFDI').ASInteger,dtsrcmostrarDatos.DAtaSEt.FieldByName('IDPagoRegistro').asInteger,
                                           dtsrcmostrarDatos.DataSet.FieldByName('Importe').AsFloat,'+ ' );

      //Borrar La aplicacion
      TADOQuery(DtSrcDesaplica.DataSet).SQL.Clear;
      TADOQuery(DtSrcDesaplica.DataSet).SQL.Add('Delete FROM PagosAplicaciones where idPagoAplicacion= '+dtsrcmostrarDatos.DataSet.FieldByName('IDPagoAplicacion').AsString);
      TADOQuery(DtSrcDesaplica.DataSet).ExecSQL;

      _dmConection.ADOConnection.CommitTrans;
       ShowMessage('Pago Desaplicado de forma correcta');
       Close; //Cerrar
    except
      _dmConection.ADOConnection.RollbackTrans;
      ShowMessage('Error Desaplicando Pago');
    end;

  end
  else
    ShowMessage('Contaseña incorrecta');

end;


function TFrmConfirmaDesaplicacion.ActualizaSaldoCliente(IDCFDI,IDPagoRegistro: Integer;Importe :Double;operacion:String): Boolean;
var IdDomiciliocliente, IdCliente  :Integer;
begin
  //Buscar con el CFDI Buscar el IdCliente y DomicilioCliente para actualizar luego
  TADOQuery(DtSrcDesaplica.DataSet).Close;
  TADOQuery(DtSrcDesaplica.DataSet).Sql.Clear;
  TADOQuery(DtSrcDesaplica.DataSet).Sql.add('Select IDCFDI, IdPersonaReceptor,IDClienteDomicilio from CFDI where IDCFDI='+intToStr(IDCFDI));
  TADOQuery(DtSrcDesaplica.DataSet).Open;
  if not  TADOQuery(DtSrcDesaplica.DataSet).eof then
  begin
    IdDomiciliocliente:=  TADOQuery(DtSrcDesaplica.DataSet).FieldByName('IdClienteDomicilio').AsInteger;
    IdCliente:=  TADOQuery(DtSrcDesaplica.DataSet).FieldByName('IdPersonaReceptor').AsInteger;


    TADOQuery(DtSrcDesaplica.DataSet).Close;
    TADOQuery(DtSrcDesaplica.DataSet).Sql.Clear;
    TADOQuery(DtSrcDesaplica.DataSet).Sql.add('Update PersonasDomicilios set Saldo =Saldo '+operacion+floatToStr(Importe)+' where IDPersonaDomicilio='+intToStr(IdDomiciliocliente));
    TADOQuery(DtSrcDesaplica.DataSet).ExecSQL;

    TADOQuery(DtSrcDesaplica.DataSet).Close;
    TADOQuery(DtSrcDesaplica.DataSet).Sql.Clear;
    TADOQuery(DtSrcDesaplica.DataSet).Sql.add('Update Personas set SaldoCliente =SaldoCliente '+operacion+floatToStr(Importe)+' where IDPersona='+intToStr(IdCliente));
    TADOQuery(DtSrcDesaplica.DataSet).ExecSQL;

    end;
end;

function TFrmConfirmaDesaplicacion.VerificaContrasenia(valor:String):Boolean; //Jun 1/16
begin
  TADOQuery(DtSrcDesaplica.DataSet).Close;
  TADOQuery(DtSrcDesaplica.DataSet).Sql.Clear;
  TADOQuery(DtSrcDesaplica.DataSet).Sql.add('Select * from Usuarios where Login='''+ _Dmconection.Usuario+''' and Password='''+valor+'''');
  TADOQuery(DtSrcDesaplica.DataSet).Open;
  Result:= not TADOQuery(DtSrcDesaplica.DataSet).eof;

end;

end.
