unit OrdenesEntradasGrid;

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
  cxGrid, Vcl.ExtCtrls, cxContainer, cxLabel;

type
  TfrmOrdenesEntradasGrid = class(T_frmStandarGFormGrid)
    tvMasterIdOrdenEntrada: TcxGridDBColumn;
    tvMasterIdDocumentoEntrada: TcxGridDBColumn;
    tvMasterIdAlmacen: TcxGridDBColumn;
    tvMasterIdOrdenEstatus: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdMoneda: TcxGridDBColumn;
    tvMasterIdUsuario: TcxGridDBColumn;
    tvMasterEstatus: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterAlmacen: TcxGridDBColumn;
    tvMasterCLaveProvedor: TcxGridDBColumn;
    tvMasterProvedor: TcxGridDBColumn;
    tvMasterMoneda: TcxGridDBColumn;
    tvMasterTipoCambio: TcxGridDBColumn;
    tvMasterSubTotal: TcxGridDBColumn;
    tvMasterIVA: TcxGridDBColumn;
    tvMasterTotal: TcxGridDBColumn;
    tvMasterObservaciones: TcxGridDBColumn;
    tvMasterUsuario: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses OrdenesEntradasDM;

end.
