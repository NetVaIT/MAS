unit rptRegistroDiarioFacturasDM;

interface

uses
  System.SysUtils, System.Classes, _ReportMASDM, ppCtrls, Data.DB, dxmdaset,
  ppParameter, ppDesignLayer, ppVar, ppBands, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  Data.Win.ADODB;

type
  TdmRPTRegistroDiarioFact = class(T_dmReportMAS)
    adodsReportFecha: TDateTimeField;
    adodsReportrazonSocial: TStringField;
    adodsReportCiudad: TStringField;
    adodsReportLinea: TStringField;
    adodsReportIdentificador: TIntegerField;
    adodsReportserie: TStringField;
    adodsReportfolio: TLargeintField;
    adodsReportCantidadCajas: TIntegerField;
    adodsReportValor: TFloatField;
    adodsReportServicio: TStringField;
    adodsReportContenido: TStringField;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
     procedure AssignParam; override;
  end;

var
  dmRPTRegistroDiarioFact: TdmRPTRegistroDiarioFact;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmRPTRegistroDiarioFact }

procedure TdmRPTRegistroDiarioFact.AssignParam;
begin
//

end;

end.
