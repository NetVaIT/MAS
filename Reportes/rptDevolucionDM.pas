unit rptDevolucionDM;

interface

uses
  System.SysUtils, System.Classes, _ReportMASDM, ppCtrls, ppBands, ppDB,
  dxmdaset, ppParameter, ppDesignLayer, ppVar, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TdmRptDevolucion = class(T_dmReportMAS)
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    adodsReportFEcha: TDateTimeField;
    adodsReportIdOrdenEntrada: TIntegerField;
    adodsReportClaveProducto: TStringField;
    adodsReportDescripcion: TStringField;
    adodsReportCantidad: TFloatField;
    adodsReportCostoAproximado: TFMTBCDField;
    adodsReportCosto: TFMTBCDField;
    adodsReportPrecioVenta: TFMTBCDField;
    adodsReportImporteTotal: TFMTBCDField;
    adodsReportCostoTotalCal: TFloatField;
    ppLine2: TppLine;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

var
  dmRptDevolucion: TdmRptDevolucion;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmRptDevolucion.AssignParam;
begin
  inherited;
//
end;

end.
