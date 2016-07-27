unit _ReportMASDM;

interface

uses
  System.SysUtils, System.Classes, _ReportDMod, dxmdaset, ppParameter,
  ppDesignLayer, ppVar, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Data.DB, Data.Win.ADODB,
  dxGDIPlusClasses;

type
  T_dmReportMAS = class(T_dmReport)
    ppImage4: TppImage;
    ppLabel6: TppLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
