unit CotizacionesArchivosDM;     //May 17/16

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB;

type
  TdmCotizacionesArchivos = class(T_dmStandar)
    dsMaster: TDataSource;
    ADODsDocumento: TADODataSet;
    ADODsDocumentoIdDocumento: TAutoIncField;
    ADODsDocumentoIdDocumentoTipo: TIntegerField;
    ADODsDocumentoIdDocumentoClase: TIntegerField;
    ADODsDocumentoDescripcion: TStringField;
    ADODsDocumentoNombreArchivo: TStringField;
    ADODsDocumentoIdArchivo: TGuidField;
    ADODsDocumentoArchivo: TBlobField;
    ADODsDocumentoDocumentoTipo: TStringField;
    ADODsDocumentoDocumentoClase: TStringField;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    adodsMasterIdDocumentoSalidaArchivo: TAutoIncField;
    adodsMasterIdDocumentoSalida: TIntegerField;
    adodsMasterIdDocumento: TIntegerField;
    adodsMasterNotas: TStringField;
    adodsMasterNombreArchivo: TStringField;
    ActNuevoDocumento: TAction;
    ActEditaDocumento: TAction;
    procedure ActNuevoDocumentoExecute(Sender: TObject);
    procedure ActEditaDocumentoExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
     procedure ReadFile(FileName: TFileName);
  public
    { Public declarations }
    procedure WriteFile(FileName: TFileName);
  end;

var
  dmCotizacionesArchivos: TdmCotizacionesArchivos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosDM, CotizacionesArchivosForm;

{$R *.dfm}

procedure TdmCotizacionesArchivos.ActEditaDocumentoExecute(Sender: TObject);
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

procedure TdmCotizacionesArchivos.ActNuevoDocumentoExecute(Sender: TObject);
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

procedure TdmCotizacionesArchivos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TFrmCotizacionesArchivos.Create(Self);
  gGridForm.DataSet := adodsMaster;

  TFrmCotizacionesArchivos(gGridForm).InsertFile := actNuevoDocumento;
  TFrmCotizacionesArchivos(gGridForm).EditFile := actEditaDocumento;

  AdodsMaster.open;
  ADODsDocumento.Open;
end;

procedure TdmCotizacionesArchivos.ReadFile(FileName: TFileName);
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

procedure TdmCotizacionesArchivos.WriteFile(FileName: TFileName);
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

end.
