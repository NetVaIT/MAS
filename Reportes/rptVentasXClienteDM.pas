unit rptVentasXClienteDM;

interface

uses
  System.SysUtils, System.Classes, _ReportMASDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TdmrptVentasXCliente = class(T_dmReportMAS)
    adodsReportIdPersonaReceptor: TIntegerField;
    adodsReportRazonSocial: TStringField;
    adodsReportidcfditipodocumento: TIntegerField;
    adodsReportDescripcion: TStringField;
    adodsReportSumaTotal: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmrptVentasXCliente: TdmrptVentasXCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
