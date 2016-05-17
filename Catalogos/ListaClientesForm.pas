unit ListaClientesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.DB,Data.Win.ADODB;

type
  TFrmBuscaCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrdClientes: TDBGrid;
    EdtBusca: TEdit;
    SpdBtnBuscaParte: TSpeedButton;
    RdGrpBuscaX: TRadioGroup;
    DSBuscarCliente: TDataSource;
    procedure SpdBtnBuscaParteClick(Sender: TObject);
    procedure DBGrdClientesDblClick(Sender: TObject);
    procedure EdtBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    fIdPersona: Integer;
    fIdPersonaDomicilio: Integer;
    { Private declarations }
  public
    { Public declarations }
    property AIdPersona:Integer read fIdPersona write fidPersona;
    property AIdPersonaDomicilio:Integer read fIdPersonaDomicilio write fIdPersonaDomicilio;
  end;

var
  FrmBuscaCliente: TFrmBuscaCliente;

implementation

{$R *.dfm}

uses CotizacionesDM;

procedure TFrmBuscaCliente.DBGrdClientesDblClick(Sender: TObject);
begin
  if not DSBuscarCliente.DataSet.eof then
  begin
   FidPersona:= DSBuscarCliente.DataSet.fieldbyname('IdPersona').AsInteger;
   FidPersonaDomicilio:=DSBuscarCliente.DataSet.fieldbyname('IdPersonaDomicilio').AsInteger;
  end
  else
  begin
    FidPersona:=0; //No existe
    FidPersonaDomicilio:=0;
  end;
  Close;
end;

procedure TFrmBuscaCliente.EdtBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
inherited;    //May 12/16
  if key=13 then
  begin
    key:=0;
    SpdBtnBuscaParte.Click;
  end;
end;

procedure TFrmBuscaCliente.SpdBtnBuscaParteClick(Sender: TObject);
const TextoSQL='select P.idPersona, P.RazonSocial, P.RFC, PD.identificador, PD.IdPersonaDomicilio, D.Calle, D.NoExterior,d.NoInterior,'+
'D.CodigoPostal,PA.Descripcion as Pais, E.Descripcion as Estado, M.Descripcion as Municipio, PO.Descripcion as Poblacion '+
'from Personas P inner join  PersonasDomicilios PD on P.idPersona=PD.IdPersona inner join Domicilios D on D.IDDomicilio=PD.IdDomicilio '+
'inner join Paises PA on PA.IdPais=d.IdPais  inner join Estados E on E.IdEstado =D.IdEstado '+
'inner join Municipios M on  M.IdMunicipio=D.IdMunicipio left join Poblaciones PO on PO.IdPoblacion =D.IdPoblacion '+
'where idRol=1 and P.IdPersonaEstatus=1 or P.IdPersonaEstatus is null';
var
filtroAct:String;
begin
  DSBuscarCliente.DataSet.Close;
  FiltroAct:='';
  case RdGrpBuscaX.ItemIndex of
  0:begin
      if EdtBusca.text<>'' then
         FiltroAct:='  and P.RazonSocial Like ''%'+EdtBusca.text+'%''';
  end;
  1:begin
       if EdtBusca.text<>'' then
         FiltroAct:=' and PD.Identificador = '''+EdtBusca.text+'''';
  end;

  end;
  TAdoDataSet(DSBuscarCliente.DataSet).CommandText :=TextoSql + FiltroAct;
  DSBuscarCliente.DataSet.open;


end;

end.
