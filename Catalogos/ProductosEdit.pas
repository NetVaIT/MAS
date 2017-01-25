unit ProductosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormEdit, cxStyles, cxClasses,
  Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, cxTextEdit,
  Vcl.StdCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxScrollBox, cxPC, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, ProductosFotosDM, dxGDIPlusClasses, Vcl.Imaging.jpeg,
  cxSpinEdit, shellApi, cxPropertiesStore, cxMemo, cxLabel, cxDBLabel,Data.Win.ADODB;

type
  TfrmProductosEdit = class(T_frmStandarGFormEdit)
    datasourceFotos: TDataSource;
    DatasetInsertDoc: TDataSetInsert;
    DSDocumento: TDataSource;
    PnlProducto: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    ToolButton3: TToolButton;
    cxDBTxtIdentificador1: TcxDBTextEdit;
    Label10: TLabel;
    Label12: TLabel;
    cxDBTxtIdentificador2: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTxtIdentificador3: TcxDBTextEdit;
    PnlTitulo: TPanel;
    tsProductoProveedor: TcxTabSheet;
    tsProductoAplicacion: TcxTabSheet;
    cxPropertiesStore1: TcxPropertiesStore;
    cxPageControl1: TcxPageControl;
    cxTbShtFotosYDocs: TcxTabSheet;
    PnlFotos: TPanel;
    ImgFoto: TImage;
    Label9: TLabel;
    ImgVacio: TImage;
    Label11: TLabel;
    DBText1: TDBText;
    SpdBtnVerArchivo: TSpeedButton;
    DBNavigatorFotos: TDBNavigator;
    BtBtnFotos: TBitBtn;
    BBtnGuardaNota: TBitBtn;
    DBMemo1: TDBMemo;
    bbtnCancela: TBitBtn;
    cxTbShtEspecifica: TcxTabSheet;
    dsEspecificaciones: TDataSource;
    DBNvgtrEspecifica: TDBNavigator;
    Label14: TLabel;
    Label15: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cxDBMemo1: TcxDBMemo;
    DBGrid1: TDBGrid;
    cxTSPrecioMayoreo: TcxTabSheet;
    cxDBLabel1: TcxDBLabel;
    SpdBtnVerIdentifica: TSpeedButton;
    DSAuxiliar: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure DataSetEditExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtBtnFotosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNavigatorFotosClick(Sender: TObject; Button: TNavigateBtn);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure datasourceFotosDataChange(Sender: TObject; Field: TField);
    procedure BBtnGuardaNotaClick(Sender: TObject);
    procedure bbtnCancelaClick(Sender: TObject);
    procedure datasourceFotosStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBText1DblClick(Sender: TObject);
    procedure SpdBtnVerArchivoClick(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure SpdBtnVerIdentificaClick(Sender: TObject);
  private
    { Private declarations }
    FEditFile: TBasicAction;
    FInsertFile: TBasicAction;
    dmProductosFotos: TdmProductosFotos;
    procedure SetEditFile(const Value: TBasicAction);
    procedure SetInsertFile(const Value: TBasicAction);
  public
    { Public declarations }
    property InsertFile : TBasicAction read FInsertFile write SetInsertFile;
    property EditFile : TBasicAction read FEditFile write SetEditFile;
  end;

implementation

{$R *.dfm}

uses ProductosDM, ProductosForm;

procedure TfrmProductosEdit.bbtnCancelaClick(Sender: TObject);
begin
  inherited;
 if datasourceFotos.State=dsedit then //Para que guarde las notas
   begin
     datasourceFotos.DataSet.Cancel;
   end;
end;

procedure TfrmProductosEdit.BBtnGuardaNotaClick(Sender: TObject);
begin
  inherited;
  if datasourceFotos.State=dsedit then //Para que guarde las notas
   begin
     datasourceFotos.DataSet.Post;
   end;
end;

procedure TfrmProductosEdit.BtBtnFotosClick(Sender: TObject);
begin
  inherited;
  dmProductosFotos.dsMaster.DataSet:=DataSourceFotos.DataSet;
  dmProductosFotos.MasterSource := DataSource;
  dmProductosFotos.MasterFields := 'IdProducto';
  dmProductosFotos.ShowModule(nil,'');
  DataSourceFotos.DataSet.Close;
  DataSourceFotos.DataSet.Open;
end;

procedure TfrmProductosEdit.DataSetEditExecute(Sender: TObject);
begin
  inherited;
  EditFile.Execute;
end;

procedure TfrmProductosEdit.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  ImgFoto.Picture:=ImgVacio.Picture;
  DataSourceFotos.DataSet.Close;
  DataSourceFotos.DataSet.Open;
end;

procedure TfrmProductosEdit.datasourceFotosDataChange(Sender: TObject;
  Field: TField);
var
  NombreA:  TFileName; //Nov 12/15
begin
  inherited;
  if fileExists( dsDocumento.DataSet.FieldByName('NombreArchivo').AsString) then
  begin                  //DataSourceFotos .
    NombreA:=dsDocumento.DataSet.FieldByName('NombreArchivo').AsString;
    SpdBtnVerArchivo.Visible:= (upperCase(ExtractFileExt(NombreA))='.PDF') or (upperCase(ExtractFileExt(NombreA))='.DOC') or (upperCase(ExtractFileExt(NombreA))='.DOCX');//Feb 3/16
    try
      ImgFoto.Picture.LoadFromFile(NombreA);
    Except
      ImgFoto.Picture:=ImgVacio.Picture;
    end;
  end;
end;

procedure TfrmProductosEdit.datasourceFotosStateChange(Sender: TObject);
begin
  inherited; //Nov 12 para guardar notas
  BBtnGuardaNota.Enabled:=datasourceFotos.State=dsEdit;
  bbtnCancela.Enabled:=datasourceFotos.State=dsEdit;
end;

procedure TfrmProductosEdit.DataSourceStateChange(Sender: TObject);
begin
  inherited;
  SpdBtnVerIdentifica.Visible:=datasource.DataSet.State in[dsEdit,dsInsert];

end;

procedure TfrmProductosEdit.DBNavigatorFotosClick(Sender: TObject;
  Button: TNavigateBtn);
var
  NombreA:  TFileName;
begin
  inherited;
  if fileExists( dsDocumento.DataSet.FieldByName('NombreArchivo').AsString) then
  begin                  //DataSourceFotos .
    NombreA:=dsDocumento.DataSet.FieldByName('NombreArchivo').AsString;
    SpdBtnVerArchivo.Visible:= (upperCase(ExtractFileExt(NombreA))='.PDF') or (upperCase(ExtractFileExt(NombreA))='.DOC') or (upperCase(ExtractFileExt(NombreA))='.DOCX'); //Feb 3/16
    try
      ImgFoto.Picture.LoadFromFile(NombreA);
    Except
      ImgFoto.Picture:=ImgVacio.Picture;
    end;
  end;
end;

procedure TfrmProductosEdit.DBText1DblClick(Sender: TObject);
Var
  nombreA:String;  //Feb 3/16
begin
  inherited;
  if fileExists(dsDocumento.DataSet.FieldByName('NombreArchivo').AsString) then
  begin
    NombreA:=dsDocumento.DataSet.FieldByName('NombreArchivo').AsString;
    if (upperCase(ExtractFileExt(NombreA))='.PDF') or (upperCase(ExtractFileExt(NombreA))='.DOC') or (upperCase(ExtractFileExt(NombreA))='.DOCX') then
      ShellExecute(application.Handle, 'open', PChar(NombreA), nil, nil, SW_SHOWNORMAL)
    else
      ShowMessage('No se puede mostrar el archivo de  extension'+ ExtractFileExt(NombreA) ) ;
  end;
end;

procedure TfrmProductosEdit.FormActivate(Sender: TObject);
begin
  inherited;
  ToolButton3.Left:=23; //Porque lo deja al final.
end;

procedure TfrmProductosEdit.FormCreate(Sender: TObject);
begin
  inherited;
  gFormGrid := TfrmProductos.Create(Self);
  ContainerDetail1:= tsProductoProveedor;
  ContainerDetail2:= tsProductoAplicacion;  //May 12/16
 // TfrmProductos(gFormGrid).CerrarGrid := actCloseGrid;
  dmProductosFotos := TdmProductosFotos.Create(self); //Pa fotos
 // DataSourceFotos.DataSet.Open;
   ContainerDetail3:= cxTSPrecioMayoreo;

end;


procedure TfrmProductosEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmProductosFotos);
end;

procedure TfrmProductosEdit.FormShow(Sender: TObject);
Var
  nombreA:String;  //Nov 12/15
begin
  inherited;
  DataSourceFotos.dataset.open;
  if(not DataSourceFotos.dataset.Eof) and fileExists(DataSourceFotos.DataSet.FieldByName('NombreArchivo').AsString) then
  begin
    NombreA:=DataSourceFotos.DataSet.FieldByName('NombreArchivo').AsString;
    SpdBtnVerArchivo.Visible:= (upperCase(ExtractFileExt(NombreA))='.PDF') or (upperCase(ExtractFileExt(NombreA))='.DOC') or (upperCase(ExtractFileExt(NombreA))='.DOCX');  //Feb 3/16
    try
      ImgFoto.Picture.LoadFromFile(NombreA);
    Except
      ImgFoto.Picture:=ImgVacio.Picture;
    end;
  end;
end;

//Nov 9/15
procedure TfrmProductosEdit.SetEditFile(const Value: TBasicAction);
begin
  FEditFile := Value;
end;

procedure TfrmProductosEdit.SetInsertFile(const Value: TBasicAction);
begin
  FInsertFile := Value;
end;

procedure TfrmProductosEdit.SpdBtnVerArchivoClick(Sender: TObject);
Var
  nombreA:String;  //Feb 3/16
begin
  inherited;
  if fileExists(dsDocumento.DataSet.FieldByName('NombreArchivo').AsString) then
  begin
    NombreA:=dsDocumento.DataSet.FieldByName('NombreArchivo').AsString;
    if (upperCase(ExtractFileExt(NombreA))='.PDF') or (upperCase(ExtractFileExt(NombreA))='.DOC') or (upperCase(ExtractFileExt(NombreA))='.DOCX') then
      ShellExecute(application.Handle, 'open', PChar(NombreA), nil, nil, SW_SHOWNORMAL)
    else
      ShowMessage('No se puede mostrar el archivo de  extension'+ ExtractFileExt(NombreA) ) ;
  end;
end;

procedure TfrmProductosEdit.SpdBtnVerIdentificaClick(Sender: TObject);
var uno,dos,tres, Cond:String;           //Nov 4/16
begin
  inherited;
  uno:=cxDBTxtIdentificador1.Text;
  dos:=cxDBTxtIdentificador2.Text;
  tres:=cxDBTxtIdentificador3.Text;

  dsAuxiliar.DataSet.Close;
  TAdoQuery(dsAuxiliar.DataSet).sql.clear;
  TAdoQuery(dsAuxiliar.DataSet).sql.Add('Select * from Productos P where (P.identificador1 ='''+uno+''' or P.identificador2 ='''+uno
                                        +''' or P.identificador3 ='''+uno +'''' );
  cond:='(P2.identificador1 ='''+ uno+''' or P2.identificador2 ='''+uno+''' or P2.identificador3 ='''+uno +'''';
  if dos<>'' then
  begin
    Cond:=  cond+ ' or P2.identificador2 ='''+dos+''' or P2.identificador2 ='''+dos+''' or P2.identificador3 ='''+dos +'''';
    TAdoQuery(dsAuxiliar.DataSet).sql.Add(' or P.identificador2 ='''+dos+''' or P.identificador1 ='''+dos
                                        +''' or P.identificador3 ='''+dos +'''' );
  end;
  if tres <>'' then
  begin
    TAdoQuery(dsAuxiliar.DataSet).sql.Add(' or P.identificador3 ='''+tres+''' or P.identificador1 ='''+tres
                                        +''' or P.identificador2 ='''+tres +'''' );
    Cond:=  cond+ ' or P2.identificador3 ='''+tres+''' or P2.identificador1 ='''+tres+''' or P2.identificador2 ='''+tres +'''';
  end;
  Cond:=  cond+ ')';
  TAdoQuery(dsAuxiliar.DataSet).sql.Add(')');
  if Datasource.State=dsEdit then
    TAdoQuery(dsAuxiliar.DataSet).sql.Add(' and exists (Select * from productos P2 where '+cond+' and (P.idproducto <> P2.idproducto))');
  ShowMessage( TAdoQuery(dsAuxiliar.DataSet).sql.Text);
  dsAuxiliar.DataSet.open;
  if not dsAuxiliar.DataSet.eof  then
    ShowMessage(' Alguno de los identificadores esta repetido en otro producto o puede que el producto ya este registrado'+#13+
                ' Producto :'+dsAuxiliar.DataSet.fieldbyname('Descripcion').asstring + ' id: '+dsAuxiliar.DataSet.fieldbyname('idproducto').AsString)
  else
    ShowMessage(' Verificación correcta');

end;

end.
