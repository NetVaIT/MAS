unit rptAjustesEntradasDM;

interface

uses
  System.SysUtils, System.Classes, _ReportMASDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TdmRptAjustesEntrada = class(T_dmReportMAS)
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel8: TppLabel;
    adodsReportFEcha: TDateTimeField;
    adodsReportIdOrdenEntrada: TIntegerField;
    adodsReportClaveProducto: TStringField;
    adodsReportDescripcion: TStringField;
    adodsReportCantidad: TFloatField;
    adodsReportCostoAproximado: TFMTBCDField;
    adodsReportCosto: TFMTBCDField;
    adodsReportPrecioVenta: TFMTBCDField;
    adodsReportImporteTotal: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

var
  dmRptAjustesEntrada: TdmRptAjustesEntrada;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmRptAjustesEntrada }

procedure TdmRptAjustesEntrada.AssignParam;
begin
  inherited;
  //
end;

end.
