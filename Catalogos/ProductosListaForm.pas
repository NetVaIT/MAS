unit ProductosListaForm;

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
  cxNavigator, Data.DB, cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,Data.Win.ADODB;

type
  TfrmListaProductosGrid = class(T_frmStandarGFormGrid)
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterIdentificador1: TcxGridDBColumn;
    tvMasterIdentificador2: TcxGridDBColumn;
    tvMasterIdentificador3: TcxGridDBColumn;
    tvMasterPrecioUnitario: TcxGridDBColumn;
    Panel1: TPanel;
    RdGrpPor: TRadioGroup;
    EdtBuscar: TEdit;
    SpdBtnBuscar: TSpeedButton;
    procedure SpdBtnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaProductosGrid: TfrmListaProductosGrid;

implementation

{$R *.dfm}

uses ProductosListaDM;

procedure TfrmListaProductosGrid.SpdBtnBuscarClick(Sender: TObject);
var
   idProd:String;
begin
  inherited;
  idProd:=EdtBuscar.Text;
  DataSource.DataSet.Close;
  case RdGrpPor.ItemIndex of
  0: TAdoDataset(DataSource.DataSet).commandText:='Select * from Productos where (Identificador1 Like '''+IDProd+
                               '%'' or Identificador2 like '''+IDProd+'%'' or Identificador3 Like '''+IDProd+
                               '%'')';

  1: TAdoDataset(DataSource.DataSet).commandText:='Select * from Productos where Descripcion like '''+IDProd+ '%''';
  end;
  DataSource.DataSet.open;

end;

end.
