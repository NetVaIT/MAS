unit ProductosListaDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmProductosLista = class(T_dmStandar)
    adodsMasterIdProducto: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdUnidadMedida: TIntegerField;
    adodsMasterPrecioUnitario: TFloatField;
    adodsMasterIdProductoTipo: TIntegerField;
    adodsMasterIdProductoEstatus: TIntegerField;
    adodsMasterIdentificador1: TStringField;
    adodsMasterIdentificador2: TStringField;
    adodsMasterIdentificador3: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmProductosLista: TdmProductosLista;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
