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
    dsMaster: TDataSource;
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
    adodsProductosProveedores: TADODataSet;
    adodsProductosProveedoresIdProductoProveedor: TAutoIncField;
    adodsProductosProveedoresIdProducto: TIntegerField;
    adodsProductosProveedoresIdPersonaProveedor: TIntegerField;
    adodsProductosProveedoresUltimaCompra: TDateTimeField;
    adodsProductosProveedoresUltimoPrecio: TFMTBCDField;
    adodsProductosProveedoresTipoCambio: TFMTBCDField;
    adodsPersonas: TADODataSet;
    adodsPersonasIdPersona: TAutoIncField;
    adodsPersonasIdMoneda: TIntegerField;
    adodsPersonasIdentificador: TStringField;
    adodsPersonasProvedor: TStringField;
    adodsPersonasMoneda: TStringField;
    adodsProductosProveedoresProveedor: TStringField;
    ADODtStMarcas: TADODataSet;
    ADODtStMarcasIdMarca: TAutoIncField;
    ADODtStMarcasIdentificador: TStringField;
    ADODtStMarcasDescripcion: TStringField;
    ADODtStProductosAplicaciones: TADODataSet;
    adodsMasterIdProductoAplicacion: TAutoIncField;
    adodsMasterIdMarca: TIntegerField;
    IntegerField1: TIntegerField;
    adodsMasterIdentificador: TStringField;
    StringField1: TStringField;
    adodsMasterAplicacion: TStringField;
    adodsMasterMarca: TStringField;
    ADODtStEspecificaciones: TADODataSet;
    ADODtStEspecificacionesIdProductoEspecificacion: TAutoIncField;
    ADODtStEspecificacionesIdProducto: TIntegerField;
    ADODtStEspecificacionesIdEspecificacionTipo: TIntegerField;
    ADODtStEspecificacionesDescripcion: TStringField;
    ADODtStTipoEspecificacion: TADODataSet;
    ADODtStTipoEspecificacionIdEspecificacionTipo: TAutoIncField;
    ADODtStTipoEspecificacionIdentificador: TStringField;
    ADODtStTipoEspecificacionDescripcion: TStringField;
    ADODtStEspecificacionesTipo: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actNuevoDocumentoExecute(Sender: TObject);
    procedure actEditaDocumentoExecute(Sender: TObject);
    procedure dsProductosFotosDataChange(Sender: TObject; Field: TField);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterBeforeInsert(DataSet: TDataSet);
    procedure ADODtStEspecificacionesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ReadFile(FileName: TFileName);
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ProductosEdit, DocumentosDM, ProductosProveedoresEdit,
   ProductosAplicacionesEdit;

{$R *.dfm}

procedure TdmProductos.actEditaDocumentoExecute(Sender: TObject);
var
  dmDocumentos : TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(nil);
  dmDocumentos.FileAllowed := faJPG;
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
  dmDocumentos.FileAllowed := faJPG;  //era ALL
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

procedure TdmProductos.adodsMasterBeforeInsert(DataSet: TDataSet);
const    //May 17/16
  TxtSQL='SELECT IdProducto, Descripcion, IdUnidadMedida, PrecioUnitario, Maximo, Minimo, PuntoReorden,'+
  ' IdProductoTipo, IdProductoEstatus, Identificador1, Identificador2, Identificador3 FROM Productos';
var Txt:String;
begin
  Txt:=   Tadodataset(adodsMaster).CommandText;
  if pos('inner ',Txt)>0 then
  begin
    Tadodataset(adodsMaster).Close;
    Tadodataset(adodsMaster).CommandText:=TxtSQL;
    Tadodataset(adodsMaster).open;
  end;
  inherited;

end;

procedure TdmProductos.ADODtStEspecificacionesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodtsttipoespecificacion.open;
end;

procedure TdmProductos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  if adodsProductosProveedores.CommandText <> EmptyStr then adodsProductosProveedores.Open;
  if adodtstProductosAplicaciones.CommandText <> EmptyStr then adodtstProductosAplicaciones.Open; //May 12/16
  gGridEditForm := TfrmProductosEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
//  TfrmProductosEdit(gGridEditForm).InsertFile := actNuevoDocumento;
//  TfrmProductosEdit(gGridEditForm).EditFile := actEditaDocumento;
//  adodsMaster.open;
  TfrmProductosEdit(gGridEditForm).DataSourceFotos.Dataset:=adodsProductoFotos;
  TfrmProductosEdit(gGridEditForm).DataSourceFotos.Dataset.open;
  TfrmProductosEdit(gGridEditForm).DSDocumento.Dataset:=ADODsDocumento;
  TfrmProductosEdit(gGridEditForm).dsEspecificaciones.Dataset:=ADODtStEspecificaciones; //Jul 26/16
  ADODtStEspecificaciones.Open;
  AdoDSProductoFotos.Open;     //Ya viene abierto
  ADODsDocumento.open;    //Ya viene abierto
  gFormDetail1:= TfrmProductosProveedoresEdit.Create(Self);
  gFormDetail1.DataSet:= adodsProductosProveedores;
  gFormDetail2:= TfrmProductosAplicacionEdit.Create(Self);  //May 12/16
  gFormDetail2.DataSet:= adodtstProductosAplicaciones;     //May 12/16
  TfrmProductosAplicacionEdit(gFormDetail2).DSIdentificadores.DataSet:= adodsMaster;
end;

procedure TdmProductos.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  adodsProductosProveedores.Close;
  AdoDSProductoFotos.Close;
  ADODsDocumento.Close;
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
