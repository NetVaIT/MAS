unit ProductosXEspacioGrid;

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
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, cxGridLevel, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls;

type
  TfrmProductosXEspacioGrid = class(T_frmStandarGFormGrid)
    tvMasterIdProductoXEspacio: TcxGridDBColumn;
    tvMasterIdAlmacen: TcxGridDBColumn;
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterIdEspacio: TcxGridDBColumn;
    tvMasterIdCategoria: TcxGridDBColumn;
    tvMasterAlmacen: TcxGridDBColumn;
    tvMasterIdentificador1: TcxGridDBColumn;
    tvMasterIdentificador2: TcxGridDBColumn;
    tvMasterIdentificador3: TcxGridDBColumn;
    tvMasterProducto: TcxGridDBColumn;
    tvMasterEspacio: TcxGridDBColumn;
    tvMasterCantidad: TcxGridDBColumn;
    TlbAjuste: TToolButton;
  private
    FactAjustar: TBasicAction;
    procedure SetactAjustar(const Value: TBasicAction);
    { Private declarations }
  public
    { Public declarations }
    property actAjustar: TBasicAction read FactAjustar write SetactAjustar;
  end;

implementation

{$R *.dfm}

uses ProductosXEspacioDm;

{ TfrmProductosXEspacioGrid }

procedure TfrmProductosXEspacioGrid.SetactAjustar(const Value: TBasicAction);
begin
  FactAjustar := Value;
  TlbAjuste.Action:=Value;
  TlbAjuste.ImageIndex:=12;
end;

end.
