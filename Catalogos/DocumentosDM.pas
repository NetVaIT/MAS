unit DocumentosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, Vcl.Dialogs,
  System.IOUtils,
  Winapi.ShellAPI, windows;

  const                                                                                       //Dic 21/15     //FEb 19/16
  FileExts: array[0..9] of string = ('.xml', '.doc', '.docx', '.xls', '.xlsx', '.txt', '.csv', '.cer', '.key','.jpg' );

type                                                                       //Dic 21/15   //FEb 19/16
  TFileAllowed = (faAll, faXML, faDOC, faDOCx, faXLS, faXLSx, faTXT, faCSV,faCER, faKEY, faJPG);
  TFilesAllowed = set of TFileAllowed;

  TdmDocumentos = class(T_dmStandar)
    adodsMasterIdDocumento: TAutoIncField;
    adodsMasterIdDocumentoTipo: TIntegerField;
    adodsMasterIdDocumentoClase: TIntegerField;
    adodsMasterDescripcion: TStringField;
    adodsMasterNombreArchivo: TStringField;
    adodsMasterIdArchivo: TGuidField;
    adodsMasterArchivo: TBlobField;
    adodsDocumentoTipo: TADODataSet;
    adodsDocumentoClase: TADODataSet;
    adodsMasterDocumentoTipo: TStringField;
    adodsMasterDocumentoClase: TStringField;
    adodsUpdateIdDocumento: TAutoIncField;
    adodsUpdateIdDocumentoTipo: TIntegerField;
    adodsUpdateIdDocumentoClase: TIntegerField;
    adodsUpdateDescripcion: TStringField;
    adodsUpdateNombreArchivo: TStringField;
    adodsUpdateIdArchivo: TGuidField;
    adodsUpdateArchivo: TBlobField;
    adodsUpdateDocumentoTipo: TStringField;
    adodsUpdateDocumentoClase: TStringField;
    actSaveFile: TAction;
    actLoadFile: TAction;
    actViewFile: TAction;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    procedure DataModuleCreate(Sender: TObject);
    procedure actLoadFileExecute(Sender: TObject);
    procedure actSaveFileExecute(Sender: TObject);
    procedure actSaveFileUpdate(Sender: TObject);
    procedure actViewFileUpdate(Sender: TObject);
    procedure actViewFileExecute(Sender: TObject);
  private
    { Private declarations }
    FFilename: TFileName;
    FFileAllowed: TFileAllowed;
    procedure WriteFile(FileName: TFileName);
    procedure ReadFile(FileName: TFileName);
    procedure TuneOpenDialog;
    procedure SetFileAllowed(const Value: TFileAllowed);
    function TamanoFichero(sFileToExamine: string): Longword; //Feb 19/16
  public
    { Public declarations }
    function GetFileName(IdDocumento: Integer): TFileName;
    function SetFile: Integer;
    property FileAllowed: TFileAllowed read FFileAllowed write SetFileAllowed default faXLSx;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DocumentosForm, DocumentosEdit;

{$R *.dfm}

procedure TdmDocumentos.actLoadFileExecute(Sender: TObject);
var
 Tam:Longint;
begin
  inherited;
  if OpenDialog.Execute then
  begin

    FFilename:= OpenDialog.FileName;
    Tam:= TamanoFichero(FFilename);
    if tam<1000000 then
    begin
      adodsUpdateNombreArchivo.AsString := ExtractFileName(FFilename);
      WriteFile(FFilename);
    end
    else
      ShowMessage('El tama�o del archivo excede el permitido');
  end;
end;

procedure TdmDocumentos.actSaveFileExecute(Sender: TObject);
begin
  inherited;
  SaveDialog.FileName:= adodsUpdateNombreArchivo.AsString;
  if SaveDialog.Execute then
  begin
    FFilename:= SaveDialog.FileName;
    ReadFile(FFilename);
  end;
end;

procedure TdmDocumentos.actSaveFileUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
    TAction(Sender).Enabled:= adodsUpdateNombreArchivo.AsString <> EmptyStr;
end;

procedure TdmDocumentos.actViewFileExecute(Sender: TObject);
var
  FileName: TFileName;
begin
  inherited;
  FileName:= TPath.GetTempPath + adodsUpdateNombreArchivo.AsString;
  ReadFile(FileName);
  ShellExecute(TfrmDocumentosEdit(frmEdit).Handle, 'open', PChar(FileName), nil, nil, 0);
end;

procedure TdmDocumentos.actViewFileUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
    TAction(Sender).Enabled:= adodsUpdateNombreArchivo.AsString <> EmptyStr;
end;

procedure TdmDocumentos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  frmEdit:= TfrmDocumentosEdit.Create(Self);
  TfrmDocumentosEdit(frmEdit).actLoadFile:= actLoadFile;
  TfrmDocumentosEdit(frmEdit).actSaveFile:= actSaveFile;
  TfrmDocumentosEdit(frmEdit).actViewFile:= actViewFile;
  gGridForm := TfrmDocumentos.Create(Self);
  gGridForm.DataSet := adodsMaster;
end;

function TdmDocumentos.GetFileName(IdDocumento: Integer): TFileName;
var
  FileName: TFileName;
begin
  adodsUpdate.Close;
  adodsUpdate.Parameters[0].Value:= IdDocumento;
  adodsUpdate.Open;
  FileName:= TPath.GetTempPath + adodsUpdateNombreArchivo.AsString;
  ReadFile(FileName);
  Result:= FileName;
end;

procedure TdmDocumentos.ReadFile(FileName: TFileName);
var
  Blob : TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsUpdateArchivo, bmRead);
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

function TdmDocumentos.SetFile: Integer;
begin
  if OpenDialog.Execute then
  begin
    FFilename:= OpenDialog.FileName;
    adodsUpdate.Open;
    try
      adodsUpdate.Insert;
      adodsUpdateIdDocumentoTipo.Value:= 1;
      adodsUpdateIdDocumentoClase.Value:= 1;
      adodsUpdateDescripcion.AsString:= ExtractFileName(FFilename);
      adodsUpdateNombreArchivo.AsString:= ExtractFileName(FFilename);
      WriteFile(FFilename);
      adodsUpdate.Post;
      Result:= adodsUpdateIdDocumento.Value;
    finally
      adodsUpdate.Close;
    end;
  end
  else
    Result:= 0;
end;

procedure TdmDocumentos.SetFileAllowed(const Value: TFileAllowed);
begin
  if FFileAllowed <> Value then
  begin
//    if not (Value in Wizard.AllowedImports) then
//      raise EQImportError.Create(QImportLoadStr(QIE_UnknownImportSource));
    FFileAllowed := Value;
//    rbtXLS.Checked := FImportType = aiXLS;
    TuneOpenDialog;
//    ChangeExtension;
  end;
end;

procedure TdmDocumentos.WriteFile(FileName: TFileName);
var
  Blob: TStream;
  Fs: TFileStream;
begin
  Blob:= adodsUpdate.CreateBlobStream(adodsUpdateArchivo, bmWrite);
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

procedure TdmDocumentos.TuneOpenDialog;
begin
  case FFileAllowed of
    faAll: OpenDialog.Filter:= 'Todos los Archivos|*.*';
    faXLS: OpenDialog.Filter:= 'Archivo Microsoft Excel|*.xls';
    faXLSx: OpenDialog.Filter:= 'Archivo Microsoft Excel|*.xlsx';
    faDOC,faDOCx:OpenDialog.Filter:= 'Archivo Documentos|*.doc;*.docx;*.jpg;*.pdf'; //D Feb 19/16
    faKEY:OpenDialog.Filter:= 'Archivo KEY|*.key';
    faCER:OpenDialog.Filter:= 'Archivo CER|*.cer';
    faJPG:OpenDialog.Filter:= 'Archivo JPG|*.jpg';   //H Feb 19/16
  end;
end;

//procedure TQImport3WizardF.ChangeExtension;
//begin
//  if not Wizard.AutoChangeExtension then Exit;
//  if Trim(FileName) = EmptyStr then Exit;
//  FileName := ChangeFileExt(FileName, FileExts[Ord(FImportType)]);
//end;

function TdmDocumentos.TamanoFichero (sFileToExamine: string) : Longword;  //Feb 19/16
var
  FileHandle: THandle;
  FileSize: Longword;
  d1: Double;
begin
  FileHandle := CreateFile(PChar(sFileToExamine),
    GENERIC_READ,
    0, {exclusivo}
    nil, {seguridad}
    OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL,
    0);
  FileSize   := GetFileSize(FileHandle, nil);
  Result     := FileSize;
  CloseHandle(FileHandle);
end;
end.
