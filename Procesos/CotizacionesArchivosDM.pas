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
    ActNuevoDocumento: TAction;
    ActEditaDocumento: TAction;
    ADODtStDocumentoCon: TADODataSet;
    ADODtStDocumentoConDescripcion: TStringField;
    ADODtStDocumentoConNombreArchivo: TStringField;
    ADODtStDocumentoConIdDocumento: TAutoIncField;
    adodsMasterNombreArchivo: TStringField;
    adodsMasterotronombre: TStringField;
    procedure ActNuevoDocumentoExecute(Sender: TObject);
    procedure ActEditaDocumentoExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterCalcFields(DataSet: TDataSet);
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
//  AdodsMaster.open;      //aca pasado  Ene 13/17
//  ADODsDocumento.Open;  //aca pasado  Ene 13/17

  dmDocumentos := TdmDocumentos.Create(self);
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
//  AdodsMaster.open;      //aca pasado  Ene 13/17
//  ADODsDocumento.Open;  //aca pasado  Ene 13/17

  dmDocumentos := TdmDocumentos.Create(self);
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

procedure TdmCotizacionesArchivos.adodsMasterCalcFields(DataSet: TDataSet);
begin
  inherited;
  ADODtStDocumentoCon.Close;
  ADODtStDocumentoCon.Parameters.ParamByName('iddocumento').Value:=dataset.FieldByName('idDocumento').AsInteger;
  ADODtStDocumentoCon.Open;
  dataset.FieldByName('NombreArchivo').AsString:=ADODtStDocumentoCon.FieldByName('NombreArchivo').asString;

end;

procedure TdmCotizacionesArchivos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm := TFrmCotizacionesArchivos.Create(Self);
  gGridForm.DataSet := adodsMaster;

  TFrmCotizacionesArchivos(gGridForm).InsertFile := actNuevoDocumento;
  TFrmCotizacionesArchivos(gGridForm).EditFile := actEditaDocumento;

//  AdodsMaster.open; //Deshabilitado de aca pasado antes de nuevo documento  Ene 13/17

//  ADODsDocumento.Open;   //Deshabilitado de aca pasado antes de nuevo documento  Ene 13/17
end;

procedure TdmCotizacionesArchivos.DataModuleDestroy(Sender: TObject);
begin
  inherited;
   ADODtStDocumentoCon.Close;
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
