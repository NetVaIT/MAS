unit AjustesSalidasItemsForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, cxButtonEdit;

type
  TfrmAjustesSalidasItemsForm = class(T_frmStandarGFormGrid)
    tvMasterIdOrdenSalidaItem: TcxGridDBColumn;
    tvMasterIdOrdenSalida: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterIdUnidadMedida: TcxGridDBColumn;
    tvMasterClaveProducto: TcxGridDBColumn;
    tvMasterCantidadDespachada: TcxGridDBColumn;
    tvMasterCantidadSolicitada: TcxGridDBColumn;
    tvMasterPrecio: TcxGridDBColumn;
    tvMasterImporte: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterCostoUnitario: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    cxTblVwMaster2: TcxGridDBTableView;
    cxTblVwMaster2Cantidad: TcxGridDBColumn;
    cxTblVwMaster2Producto: TcxGridDBColumn;
    cxTblVwMaster2Disponible: TcxGridDBColumn;
    cxTblVwMaster2EspacioA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FactSeleccionarProducto: TBasicAction;
    procedure SetactSeleccionarProducto(const Value: TBasicAction);

    { Private declarations }
  public
    { Public declarations }
    property actSeleccionarProducto: TBasicAction read FactSeleccionarProducto write SetactSeleccionarProducto;
  end;

implementation

{$R *.dfm}

uses AjustesSalidasDM;

{ TfrmAjustesSalidasItemsForm }

procedure TfrmAjustesSalidasItemsForm.FormCreate(Sender: TObject);
begin
  inherited;
  ApplyBestFit:= False;
end;

procedure TfrmAjustesSalidasItemsForm.SetactSeleccionarProducto(
  const Value: TBasicAction);
begin
  FactSeleccionarProducto := Value;
  tvMasterClaveProducto.Properties.Buttons[0].Action:= Value;
end;



procedure TfrmAjustesSalidasItemsForm.tvMasterCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 //

end;

end.
