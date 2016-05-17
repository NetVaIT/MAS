unit CotizacionesArchivosForm;//May 17/16

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls;

type
  TfrmCotizacionesArchivos = class(T_frmGrid)
    tvMasterNombreArchivo: TcxGridDBColumn;
    tvMasterNotas: TcxGridDBColumn;
    procedure DatasetInsertExecute(Sender: TObject);
    procedure DatasetEditExecute(Sender: TObject);
  private
    FEditFile: TBasicAction;
    FInsertFile: TBasicAction;
    procedure SetEditFile(const Value: TBasicAction);
    procedure SetInsertFile(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property InsertFile : TBasicAction read FInsertFile write SetInsertFile;
    property EditFile : TBasicAction read FEditFile write SetEditFile;

  end;

var
  frmCotizacionesArchivos: TfrmCotizacionesArchivos;

implementation

{$R *.dfm}

uses CotizacionesArchivosDM;

{ TfrmCotizacionesArchivos }

procedure TfrmCotizacionesArchivos.DatasetEditExecute(Sender: TObject);
var  LaNota:String;
begin
  inherited;
  LaNota:=dataset.FieldByName('Notas').AsString;
  EditFile.Execute;
  if inputquery('Agregar o Editar nota','Nota',LaNota) then
  begin
    if Dataset.State=dsBrowse then
      DAtaset.Edit;
    dataset.FieldByName('Notas').AsString:= LaNota;
    Dataset.Post;
  end
  else //No quiere modificar la nota
     if Dataset.State=dsEdit then
       Dataset.Cancel;

end;

procedure TfrmCotizacionesArchivos.DatasetInsertExecute(Sender: TObject);
var  LaNota:String;
begin
  inherited;
  InsertFile.Execute;
  if inputquery('Agregar o Editar nota','Nota',LaNota) then
  begin
    if Dataset.State=dsBrowse then
      DAtaset.Edit;
    dataset.FieldByName('Notas').AsString:= LaNota;
    Dataset.Post;
  end;

end;

procedure TfrmCotizacionesArchivos.SetEditFile(const Value: TBasicAction);
begin
  FEditFile := Value;
end;

procedure TfrmCotizacionesArchivos.SetInsertFile(const Value: TBasicAction);
begin
  FInsertFile := Value;
end;

end.
