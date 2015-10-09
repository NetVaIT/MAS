unit DomiciliosForm;

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
  Vcl.ExtCtrls;

type
  TfrmDomicilios = class(T_frmStandarGFormGrid)
    tvMasterIdDomicilio: TcxGridDBColumn;
    tvMasterCalle: TcxGridDBColumn;
    tvMasterNoExterior: TcxGridDBColumn;
    tvMasterNoInterior: TcxGridDBColumn;
    tvMasterColonia: TcxGridDBColumn;
    tvMasterReferencia: TcxGridDBColumn;
    tvMasterIdPais: TcxGridDBColumn;
    tvMasterIdEstado: TcxGridDBColumn;
    tvMasterIdMunicipio: TcxGridDBColumn;
    tvMasterIdPoblacion: TcxGridDBColumn;
    tvMasterPais: TcxGridDBColumn;
    tvMasterEstado: TcxGridDBColumn;
    tvMasterMunicipio: TcxGridDBColumn;
    tvMasterPoblacion: TcxGridDBColumn;
    tvMasterCodigoPostal: TcxGridDBColumn;
  private
    FDataSetPaises: TDataSet;
    FDataSetPoblaciones: TDataSet;
    FDataSetMunicipios: TDataSet;
    FDataSetEstados: TDataSet;
    { Private declarations }
  public
    { Public declarations }
    property DataSetPaises: TDataSet read FDataSetPaises write FDataSetPaises;
    property DataSetEstados: TDataSet read FDataSetEstados write FDataSetEstados;
    property DataSetMunicipios: TDataSet read FDataSetMunicipios write FDataSetMunicipios;
    property DataSetPoblaciones: TDataSet read FDataSetPoblaciones write FDataSetPoblaciones;
  end;

implementation

{$R *.dfm}

uses DomiciliosDM;

end.
