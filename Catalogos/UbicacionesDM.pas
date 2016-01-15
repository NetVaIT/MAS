unit UbicacionesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

const
  IdPais_Predeterminado = 148;

type
  TdmUbicaciones = class(T_dmStandar)
    adodsMasterIdPais: TAutoIncField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsEstados: TADODataSet;
    adodsEstadosIdEstado: TAutoIncField;
    adodsEstadosIdPais: TIntegerField;
    adodsEstadosIdentificador: TStringField;
    adodsEstadosDescripcion: TStringField;
    dsEstados: TDataSource;
    adodsMunicipios: TADODataSet;
    adodsMunicipiosIdMunicipio: TIntegerField;
    adodsMunicipiosIdEstado: TIntegerField;
    adodsMunicipiosIdentificador: TIntegerField;
    adodsMunicipiosDescripcion: TStringField;
    dsMunicipios: TDataSource;
    adodsPoblaciones: TADODataSet;
    adodsPoblacionesIdPoblacion: TIntegerField;
    adodsPoblacionesIdMunicipio: TIntegerField;
    adodsPoblacionesIdentificador: TIntegerField;
    adodsPoblacionesDescripcion: TStringField;
    dsMaster: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UbicacionesEdit, EstadosEdit, MunicipiosEdit, PoblacionesEdit;

{$R *.dfm}

procedure TdmUbicaciones.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodsMaster.Locate('IdPais', IdPais_Predeterminado, []);
end;

procedure TdmUbicaciones.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsEstados.CommandText <> EmptyStr then adodsEstados.Open;
  if adodsMunicipios.CommandText <> EmptyStr then adodsMunicipios.Open;
  if adodsPoblaciones.CommandText <> EmptyStr then adodsPoblaciones.Open;
  gGridEditForm := TfrmUbicacionesEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  gFormDetail1:= TfrmEstadosEdit.Create(Self);
  gFormDetail1.DataSet:= adodsEstados;
  gFormDetail2 := TfrmMunicipiosEdit.Create(Self);
  gFormDetail2.DataSet:= adodsMunicipios;
  gFormDetail3 := TfrmPoblacionesEdit.Create(Self);
  gFormDetail3.DataSet:= adodsPoblaciones;
end;

procedure TdmUbicaciones.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsPoblaciones.Close;
  adodsMunicipios.Close;
  adodsEstados.Close;
end;

end.
