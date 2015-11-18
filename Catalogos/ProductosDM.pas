unit ProductosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmProductos = class(T_dmStandar)
    adodsMasterIdProducto: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterIdUnidadMedida: TIntegerField;
    adodsMasterPrecioUnitario: TFloatField;
    adodsMasterMaximo: TFloatField;
    adodsMasterMinimo: TFloatField;
    adodsMasterPuntoReorden: TFloatField;
    adodsMasterIdProductoTipo: TIntegerField;
    adodsMasterIdProductoEstatus: TIntegerField;
    adodsUnidadMedida: TADODataSet;
    adodsProductoTipo: TADODataSet;
    adodsProductoEstatus: TADODataSet;
    adodsMasterUnidadMedida: TStringField;
    adodsMasterProductoTipo: TStringField;
    adodsMasterProductoEstatus: TStringField;
    adodsMasterIdentificador1: TStringField;
    adodsMasterIdentificador2: TStringField;
    adodsMasterIdentificador3: TStringField;
    adodsProductoFotos: TADODataSet;
    DataSourceMaster: TDataSource;
    adodsProductoDoctos: TADODataSet;
    ADODsDocumento: TADODataSet;
    adodsProductoFotosIdProductoFoto: TIntegerField;
    adodsProductoFotosIdProducto: TIntegerField;
    adodsProductoFotosIdDocumento: TIntegerField;
    adodsProductoFotosNotas: TStringField;
    ActNuevoDocumento: TAction;
    ActEditaDocumento: TAction;
    ADODsDocumentoIdDocumento: TAutoIncField;
    ADODsDocumentoIdDocumentoTipo: TIntegerField;
    ADODsDocumentoIdDocumentoClase: TIntegerField;
    ADODsDocumentoDescripcion: TStringField;
    ADODsDocumentoNombreArchivo: TStringField;
    ADODsDocumentoIdArchivo: TGuidField;
    ADODsDocumentoArchivo: TBlobField;
    adodsProductoFotosNombreArchivo: TStringField;
    dsProductosFotos: TDataSource;


    procedure DataModuleCreate(Sender: TObject);
    procedure actNuevoDocumentoExecute(Sender: TObject);
    procedure actEditaDocumentoExecute(Sender: TObject);
    procedure dsProductosFotosDataChange(Sender: TObject; Field: TField);
  private
    procedure ReadFile(FileName: TFileName);

    { Private declarations }
  public
    { Public declarations }

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ProductosEdit, DocumentosDM;

{$R *.dfm}

procedure TdmProductos.actEditaDocumentoExecute(Sender: TObject);
var
  dmDocumentos : TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faAll;
  Id := adodsProductoFotosIdDocumento.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumento.Requery();
  end;
  dmDocumentos.Free;

end;

procedure TdmProductos.actNuevoDocumentoExecute(Sender: TObject);
var
  dmDocumentos : TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faAll;
  Id := dmDocumentos.Add;
  if  Id <> 0 then
  begin
    adodsDocumento.Requery();
    adodsProductoFotos.Insert; //Era master
    adodsProductoFotosIdDocumento.AsInteger := Id;
    adodsProductoFotos.Post;
  end;
  dmDocumentos.Free;

end;

procedure TdmProductos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm := TfrmProductosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
 // TfrmProductosEdit(gGridEditForm).InsertFile := actNuevoDocumento;
 // TfrmProductosEdit(gGridEditForm).EditFile := actEditaDocumento;
  adodsMaster.open;
  TfrmProductosEdit(gGridEditForm).DataSourceFotos.Dataset:=adodsProductoFotos;
  TfrmProductosEdit(gGridEditForm).DataSourceFotos.Dataset.open;
  TfrmProductosEdit(gGridEditForm).DSDocumento.Dataset:=ADODsDocumento;
  AdoDSProductoFotos.Open;     //Ya viene abierto
  ADODsDocumento.open;    //Ya viene abierto
end;



procedure TdmProductos.dsProductosFotosDataChange(Sender: TObject;
  Field: TField);
var Archivo :TFileName;
begin
  inherited;
  if not dsProductosFotos.DataSet.Eof then      //Estaba en docs
  begin
    Archivo:=AdodsDocumento.FieldByName('NombreArchivo').AsString;
    readfile(Archivo);
  end;
end;


procedure TdmProductos.ReadFile(FileName: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob:= ADODsDocumento.CreateBlobStream(ADODsDocumentoArchivo, bmRead);
  try
    Blob.Seek(0, soFromBeginning);
    Fs:= TFileStream.Create(FileName, fmCreate);
    try
      Fs.CopyFrom(Blob, Blob.Size);
    finally
      Fs.Free;
    end;
  finally
    Blob.Free
  end;
end;
end.
