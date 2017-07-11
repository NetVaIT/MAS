unit ProductosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppBands,
  ppCtrls, ppVar, dxGDIPlusClasses, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, dialogs;

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
    ADODtStPreciosMayoreo: TADODataSet;
    ADODtStPreciosMayoreoIdProductoPrecioMayoreo: TAutoIncField;
    ADODtStPreciosMayoreoIdProducto: TIntegerField;
    ADODtStPreciosMayoreoEscala: TFloatField;
    ADODtStPreciosMayoreoPrecioXEscala: TFloatField;
    ADODtStPreciosMayoreoProducto: TStringField;
    ppRprtPrecioMayoreo: TppReport;
    ppParameterList1: TppParameterList;
    ppDBPplnPrecioMayoreo: TppDBPipeline;
    ADODtStPrecioXEscala: TADODataSet;
    ADODtStPrecioXEscalaidentificador1: TStringField;
    ADODtStPrecioXEscalaDescripcion: TStringField;
    ADODtStPrecioXEscalaEscala: TFloatField;
    ADODtStPrecioXEscalaPrecioXEscala: TFloatField;
    DSPrecioXEscala: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel21: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel22: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLabel20: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    adodsMasterIdentificador4: TStringField;
    ADOQryAuxiliar: TADOQuery;
    ADOConProdFotos: TADODataSet;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    ADOConProdEspecificacion: TADODataSet;
    AutoIncField1: TAutoIncField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    ADOConDocumentoPF: TADODataSet;
    AutoIncField2: TAutoIncField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    GuidField1: TGuidField;
    BlobField1: TBlobField;
    ADOConProdDocto: TADODataSet;
    dsConProdFotos: TDataSource;
    adodsMasterPrecioNuevo: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure actNuevoDocumentoExecute(Sender: TObject);
    procedure actEditaDocumentoExecute(Sender: TObject);
    procedure dsProductosFotosDataChange(Sender: TObject; Field: TField);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterBeforeInsert(DataSet: TDataSet);
    procedure ADODtStEspecificacionesAfterOpen(DataSet: TDataSet);
    procedure adodsMasterBeforePost(DataSet: TDataSet);
    procedure ADODtStProductosAplicacionesBeforePost(DataSet: TDataSet);
    procedure ADODtStProductosAplicacionesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ReadFile(FileName: TFileName);
    function VerificaIdentificador: Boolean;
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ProductosEdit, DocumentosDM, ProductosProveedoresEdit,
   ProductosAplicacionesEdit, ProductosMayoreoEdit;

{$R *.dfm}

procedure TdmProductos.actEditaDocumentoExecute(Sender: TObject);
var
  dmDocumentos : TdmDocumentos;
  Id : Integer;
begin
  inherited;
  dmDocumentos := TdmDocumentos.Create(self);
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
  dmDocumentos := TdmDocumentos.Create(self);
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

procedure TdmProductos.adodsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not verificaIdentificador then //Nov 7/16
  begin
    ShowMessage(' Alguno de los identificadores esta repetido en otro producto o puede que el producto ya este registrado'+#13+
                ' Producto :'+AdoQryAuxiliar.fieldbyname('Descripcion').asstring + ' id: '+AdoQryAuxiliar.fieldbyname('idproducto').AsString);
    abort;
  end;
end;

function TdmProductos.VerificaIdentificador:Boolean;  //Nov 7/16
var uno,dos,tres, Cond:String;
begin
  inherited;
  uno:=adodsMaster.fieldbyname('Identificador1').asString;//cxDBTxtIdentificador1.Text;
  dos:=adodsMaster.fieldbyname('Identificador2').asString;
  tres:=adodsMaster.fieldbyname('Identificador3').asString;

  AdoQryAuxiliar.Close;
  AdoQryAuxiliar.sql.clear;
  AdoQryAuxiliar.sql.Add('Select * from Productos P where (P.identificador1 ='''+uno+''' or P.identificador2 ='''+uno
                                        +''' or P.identificador3 ='''+uno +'''' );
  cond:='(P2.identificador1 ='''+ uno+''' or P2.identificador2 ='''+uno+''' or P2.identificador3 ='''+uno +'''';
  if dos<>'' then
  begin
    Cond:=  cond+ ' or P2.identificador2 ='''+dos+''' or P2.identificador2 ='''+dos+''' or P2.identificador3 ='''+dos +'''';
    AdoQryAuxiliar.sql.Add(' or P.identificador2 ='''+dos+''' or P.identificador1 ='''+dos
                                        +''' or P.identificador3 ='''+dos +'''' );
  end;
  if tres <>'' then
  begin
    AdoQryAuxiliar.sql.Add(' or P.identificador3 ='''+tres+''' or P.identificador1 ='''+tres
                                        +''' or P.identificador2 ='''+tres +'''' );
    Cond:=  cond+ ' or P2.identificador3 ='''+tres+''' or P2.identificador1 ='''+tres+''' or P2.identificador2 ='''+tres +'''';
  end;
  Cond:=  cond+ ')';
  AdoQryAuxiliar.sql.Add(')');
  if adodsMaster.State=dsEdit then
   AdoQryAuxiliar.sql.Add(' and exists (Select * from productos P2 where '+cond+' and (P.idproducto <> P2.idproducto))');
 // ShowMessage( AdoQryAuxiliar.sql.Text);
  AdoQryAuxiliar.open;
  if not AdoQryAuxiliar.eof  then
    Result:=False
  else
    result:=True;
end;

procedure TdmProductos.ADODtStEspecificacionesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  adodtsttipoespecificacion.open;
end;

procedure TdmProductos.ADODtStProductosAplicacionesAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  //Verificar que lade productos este guardada... //Ene 25/17
  if adodsMaster.State in [dsInsert, dsEdit] then
     adodsMaster.Post;
end;

procedure TdmProductos.ADODtStProductosAplicacionesBeforePost(
  DataSet: TDataSet);
begin
  inherited;
 //VErificar que tenga idmarca parta que pueda verse en el listado de precios ene 25/17

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
//  TfrmProductosEdit(gGridEditForm).DataSourceFotos.Dataset.open;  verificar   Deshabilitado ene 13/17
  TfrmProductosEdit(gGridEditForm).DSDocumento.Dataset:=ADODsDocumento;
  TfrmProductosEdit(gGridEditForm).dsEspecificaciones.Dataset:=ADODtStEspecificaciones; //Jul 26/16
  ADODtStEspecificaciones.Open;
 // AdoDSProductoFotos.Open;     //Ya viene abierto   DEshabilitado Ene 13/17
 // ADODsDocumento.open;    //Ya viene abierto     DEshabilitado Ene 13/17
  gFormDetail1:= TfrmProductosProveedoresEdit.Create(Self);
  gFormDetail1.DataSet:= adodsProductosProveedores;
  gFormDetail2:= TfrmProductosAplicacionEdit.Create(Self);  //May 12/16
  gFormDetail2.DataSet:= adodtstProductosAplicaciones;     //May 12/16
  TfrmProductosAplicacionEdit(gFormDetail2).DSIdentificadores.DataSet:= adodsMaster;

  ADODtStPreciosMayoreo.Open; //Ago 11/16
  gFormDetail3:= TFrmProductosPrecioMayoreo.Create(Self);    //Ago 11/16
  gFormDetail3.DataSet:= ADODtStPreciosMayoreo;     //Ago 11/16
 //  TFrmProductosPrecioMayoreo(gFormDetail3).DS.DataSet:= adodsMaster; ??   //Ago 11/16


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
