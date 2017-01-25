unit rptAjustesSalidasDM;

interface

uses
  System.SysUtils, System.Classes, _ReportMASDM, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TdmrptAjusteSalida = class(T_dmReportMAS)
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    adodsReportFechaRegistro: TDateTimeField;
    adodsReportIdOrdenSalida: TIntegerField;
    adodsReportClaveProducto: TStringField;
    adodsReportDescripcion: TStringField;
    adodsReportCantidadSolicitada: TFloatField;
    adodsReportcantidaddespachada: TFloatField;
    adodsReportCostoUnitario: TFMTBCDField;
    adodsReportPrecio: TFMTBCDField;
    adodsReportImporte: TFMTBCDField;
    adodsReportCostoPromedio: TFloatField;
    adodsReportImporteTotal: TFloatField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

var
  dmrptAjusteSalida: TdmrptAjusteSalida;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmrptAjusteSalida }

procedure TdmrptAjusteSalida.AssignParam;
begin
  inherited;
//
end;

end.
