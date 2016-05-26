unit ListaEtiquetasGRD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Data.DB, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmListaEtiquetas = class(TForm)
    PnlTitulo: TPanel;
    DBGrdEtiquetas: TDBGrid;
    DSListaEtiquetas: TDataSource;
    BtBtnAcepta: TBitBtn;
    BtBtnCancela: TBitBtn;
    procedure DBGrdEtiquetasDblClick(Sender: TObject);
    procedure BtBtnCancelaClick(Sender: TObject);
  private
    FIdEtiqueta: Integer;
    { Private declarations }
  public
    { Public declarations }
    property AIdEtiqueta : Integer read FIdEtiqueta write FIdEtiqueta;
  end;

var
  FrmListaEtiquetas: TFrmListaEtiquetas;

implementation

{$R *.dfm}

uses OrdenesSalidasDM;

procedure TFrmListaEtiquetas.BtBtnCancelaClick(Sender: TObject);
begin
  //Verificar si se pregunta si crear etiqueta individual..//May 23/16
end;

procedure TFrmListaEtiquetas.DBGrdEtiquetasDblClick(Sender: TObject);
begin
  FIdEtiqueta:=DSListaEtiquetas.Dataset.fieldbyname('IdInfoEntrega').ASInteger; //May 23/16
  Close;
end;

end.
