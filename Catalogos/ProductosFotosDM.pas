unit ProductosFotosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

type
  TdmProductosFotos = class(T_dmStandar)
    ADODsDocumento: TADODataSet;
    dsMaster: TDataSource;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    actEditaDocumento: TAction;
    actNuevoDocumento: TAction;
    adodsMasterIdProductoFoto: TIntegerField;
    adodsMasterIdProducto: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterNotas: TStringField;
    ADODsDocumentoIdDocumento: TAutoIncField;
    ADODsDocumentoIdDocumentoTipo: TIntegerField;
    ADODsDocumentoIdDocumentoClase: TIntegerField;
    ADODsDocumentoDescripcion: TStringField;
    ADODsDocumentoNombreArchivo: TStringField;
    ADODsDocumentoIdArchivo: TGuidField;
    ADODsDocumentoArchivo: TBlobField;
    ADODsDocumentoDocumentoTipo: TStringField;
    ADODsDocumentoDocumentoClase: TStringField;
    adodsMasterNombreArchivo: TStringField;
    procedure actNuevoDocumentoExecute(Sender: TObject);
    procedure actEditaDocumentoExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure ReadFile(FileName: TFileName);
  public
    { Public declarations }
    procedure WriteFile(FileName: TFileName);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses  DocumentosDM, ProductosFotosForm;

{$R *.dfm}

procedure TdmProductosFotos.actEditaDocumentoExecute(Sender: TObject);
var
  dmDocumentos : TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faDoc;
  Id := adodsMasterIdDocumento.AsInteger;
  if Id  <> 0 then
  begin
    dmDocumentos.Edit(Id);
    adodsDocumento.Requery();
  end;
  dmDocumentos.Free;
end;

procedure TdmProductosFotos.actNuevoDocumentoExecute(Sender: TObject);
var
  dmDocumentos : TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faDoc;
  Id := dmDocumentos.Add;
  if  Id <> 0 then
  begin
    adodsDocumento.Requery();
    adodsMaster.Insert;
    adodsMasterIdDocumento.AsInteger := Id;
    adodsMaster.Post;
  end;
  dmDocumentos.Free;
end;

procedure TdmProductosFotos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TFrmProductosFotos.Create(Self);
  gGridForm.DataSet := adodsMaster;
//  TfrmPersonasRolesDocumentos(gGridForm).UpdateFile := actExpedienteDigital;
  TFrmProductosFotos(gGridForm).InsertFile := actNuevoDocumento;
  TFrmProductosFotos(gGridForm).EditFile := actEditaDocumento;
  AdodsMaster.open;
  ADODsDocumento.Open;
end;

procedure TdmProductosFotos.dsMasterDataChange(Sender: TObject; Field: TField);
//var Archivo :TFileName;
begin
  inherited;
 // Archivo:=ADODsDocumento.FieldByName('NombreArchivo').AsString;   //No tiene nada
 // readfile(Archivo);
end;

procedure TdmProductosFotos.WriteFile(FileName: TFileName);     //A ver si se puede leer
var
  Blob: TStream;
  Fs: TFileStream;
begin
  Blob:= ADODsDocumento.CreateBlobStream(ADODsDocumentoArchivo, bmWrite);
  try
    Blob.Seek(0, soFromBeginning);
    Fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
    try
      Blob.CopyFrom(Fs, Fs.Size)
    finally
      Fs.Free
    end;
  finally
    Blob.Free
  end;
end;

procedure TdmProductosFotos.ReadFile(FileName: TFileName);
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
