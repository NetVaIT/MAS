unit AlmacenesDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs, System.UITypes;

const
  IdEspcioInicial = 0;

resourcestring
  strAllowSpace = 'No se permite esta asignacion.';

type
  TdmAlmacenes = class(T_dmStandar)
    adodsMasterIdAlmacen: TAutoIncField;
    adodsMasterIdentificador: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterUbicacion: TStringField;
    dsMaster: TDataSource;
    adodsEspacios: TADODataSet;
    adodsEspaciosIdEspacio: TAutoIncField;
    adodsEspaciosIdEspacioPadre: TIntegerField;
    adodsEspaciosIdAlmacen: TIntegerField;
    adodsEspaciosIdEspacioTipo: TIntegerField;
    adodsEspaciosIdContenedor: TIntegerField;
    adodsEspaciosDescripcion: TStringField;
    adodsEspacioTipos: TADODataSet;
    adodsContenedores: TADODataSet;
    adodsEspaciosTipo: TStringField;
    adodsEspaciosContenedor: TStringField;
    adoqEspacioValido: TADOQuery;
    adoqEspacioValidoSeleccionar: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsEspaciosNewRecord(DataSet: TDataSet);
    procedure adodsEspaciosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    function IsValidSpace(IdEspacioPadre: Integer): Boolean;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AlmacenesEdit, EspaciosEdit;

{$R *.dfm}

procedure TdmAlmacenes.adodsEspaciosBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not IsValidSpace(adodsEspaciosIdEspacioPadre.Value) then
  begin
    MessageDlg(strAllowSpace, mtError, [mbOK], 0);
    Abort;
  end;
end;

procedure TdmAlmacenes.adodsEspaciosNewRecord(DataSet: TDataSet);
begin
  inherited;
  adodsEspaciosIdEspacioPadre.Value:= IdEspcioInicial;
end;

procedure TdmAlmacenes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsEspacios.CommandText <> EmptyStr then adodsEspacios.Open;
  gGridEditForm := TfrmAlmacenesEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  gFormDetail1:= TfrmEspaciosEdit.Create(Self);
  gFormDetail1.DataSet:= adodsEspacios;
end;

procedure TdmAlmacenes.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsEspacios.Close;
end;

function TdmAlmacenes.IsValidSpace(IdEspacioPadre: Integer): Boolean;
begin
  adoqEspacioValido.Close;
  adoqEspacioValido.Parameters.ParamByName('IdEspacio').Value:= IdEspacioPadre;
  adoqEspacioValido.Open;
  Result:= not (adoqEspacioValidoSeleccionar.Value);
  adoqEspacioValido.Close;
end;

end.
