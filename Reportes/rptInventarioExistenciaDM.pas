unit rptInventarioExistenciaDM;

interface

uses
  System.SysUtils, System.Classes, _ReportMASDM, ppBands, ppCtrls, ppDB,
  dxmdaset, ppParameter, ppDesignLayer, ppVar, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TdmrptInventarioExistencia = class(T_dmReportMAS)
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmrptInventarioExistencia }

procedure TdmrptInventarioExistencia.AssignParam;
begin
//
end;

end.
