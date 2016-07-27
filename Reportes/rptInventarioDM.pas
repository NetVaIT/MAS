unit rptInventarioDM;

interface

uses
  System.SysUtils, System.Classes, _ReportMASDM, ppCtrls, ppBands, dxmdaset,
  ppParameter, ppDesignLayer, ppVar, dxGDIPlusClasses, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TdmrptInventario = class(T_dmReportMAS)
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppDBText11: TppDBText;
    ppLabel3: TppLabel;
    ppLabel13: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel14: TppLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmrptInventario }

procedure TdmrptInventario.AssignParam;
begin
  inherited;
//
end;

end.
