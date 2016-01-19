unit AlmacenesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmAlmacenes = class(T_dmStandar)
    adodsMasterIdAlmacen: TAutoIncField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterUbicacion: TStringField;
    dsMaster: TDataSource;
    adodsZonas: TADODataSet;
    dsZonas: TDataSource;
    adodsAnaqueles: TADODataSet;
    dsAnaqueles: TDataSource;
    adodsSecciones: TADODataSet;
    adodsZonasIdZona: TAutoIncField;
    adodsZonasIdAlmacen: TIntegerField;
    adodsZonasIdentificador: TStringField;
    adodsZonasDescripcion: TStringField;
    adodsAnaquelesIdAnaquel: TAutoIncField;
    adodsAnaquelesIdZona: TIntegerField;
    adodsAnaquelesIdentificador: TStringField;
    adodsAnaquelesDescripcion: TStringField;
    adodsSeccionesIdSeccion: TAutoIncField;
    adodsSeccionesIdAnaquel: TIntegerField;
    adodsSeccionesFila: TStringField;
    adodsSeccionesColumna: TStringField;
    adodsSeccionesEspacios: TIntegerField;
    dsSecciones: TDataSource;
    adodsEspacios: TADODataSet;
    adodsEspaciosIdEspacio: TAutoIncField;
    adodsEspaciosIdSeccion: TIntegerField;
    adodsEspaciosDescripcion: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AlmacenesEdit, ZonasEdit, AnaquelesEdit, SeccionesEdit, EspaciosEdit;

{$R *.dfm}

procedure TdmAlmacenes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsZonas.CommandText <> EmptyStr then adodsZonas.Open;
  if adodsAnaqueles.CommandText <> EmptyStr then adodsAnaqueles.Open;
  if adodsSecciones.CommandText <> EmptyStr then adodsSecciones.Open;
  if adodsEspacios.CommandText <> EmptyStr then adodsEspacios.Open;
  gGridEditForm := TfrmAlmacenesEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  gFormDetail1:= TfrmZonasEdit.Create(Self);
  gFormDetail1.DataSet:= adodsZonas;
  gFormDetail2:= TfrmAnaquelesEdit.Create(Self);
  gFormDetail2.DataSet:= adodsAnaqueles;
  gFormDetail3:= TfrmSeccionesEdit.Create(Self);
  gFormDetail3.DataSet:= adodsSecciones;
  gFormDetail4:= TfrmEspaciosEdit.Create(Self);
  gFormDetail4.DataSet:= adodsEspacios;
end;

procedure TdmAlmacenes.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsZonas.Close;
  adodsAnaqueles.Close;
  adodsSecciones.Close;
  adodsEspacios.Close;
end;

end.
