unit rptVentasUnidadesAcumuladasDM;

interface

uses
  System.SysUtils, System.Classes, _ReportMASDM, ppCtrls, ppDB, dxmdaset,
  ppParameter, ppDesignLayer, ppVar, ppBands, dxGDIPlusClasses, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, Data.DB,
  Data.Win.ADODB;

type
  TdmrptVentasUnidadesAcumuladas = class(T_dmReportMAS)
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
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AssignParam; override;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmrptVentasunidadesAcumuladas }

procedure TdmrptVentasUnidadesAcumuladas.AssignParam;
begin
  inherited;
//
end;

end.
