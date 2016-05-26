unit OrdenesEntregasDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmOrdenesEntregas = class(T_dmStandar)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmOrdenesEntregas: TdmOrdenesEntregas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
