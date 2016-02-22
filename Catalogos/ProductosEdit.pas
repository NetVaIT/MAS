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
  cxSpinEdit, shellApi;

type
  TfrmProductosEdit = class(T_frmStandarGFormEdit)
    datasourceFotos: TDataSource;
    DatasetInsertDoc: TDataSetInsert;
    PnlFotos: TPanel;
    DBNavigatorFotos: TDBNavigator;
    ImgFoto: TImage;
    BtBtnFotos: TBitBtn;
    Label9: TLabel;
    DSDocumento: TDataSource;
    ImgVacio: TImage;
    Label11: TLabel;
    DBText1: TDBText;
    BBtnGuardaNota: TBitBtn;
    DBMemo1: TDBMemo;
    bbtnCancela: TBitBtn;
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
    cxDBTextEdit6: TcxDBTextEdit;
    Label10: TLabel;
    Label12: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label13: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    SpdBtnVerArchivo: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure DataSetEditExecute(Sender: TObject);
    procedure DataSetInsertExecute(Sender: TObject);
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
  private
    FEditFile: TBasicAction;
    FInsertFile: TBasicAction;
 //   dmProductosFotos:TDmProductosFotos;

    procedure SetEditFile(const Value: TBasicAction);
    procedure SetInsertFile(const Value: TBasicAction);

    { Private declarations }
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

procedure TfrmProductosEdit.DataSetInsertExecute(Sender: TObject);
begin
  inherited;
  InsertFile.Execute;
end;

procedure TfrmProductosEdit.DataSourceDataChange(Sender: TObject;
  Field: TField);
var
  NombreA:  TFileName;
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
 // TfrmProductos(gFormGrid).CerrarGrid := actCloseGrid;
  dmProductosFotos := TdmProductosFotos.Create(nil); //Pa fotos

 // DataSourceFotos.DataSet.Open;


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


end.
