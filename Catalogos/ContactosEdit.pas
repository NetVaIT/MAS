unit ContactosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  cxScrollBox, Vcl.StdActns, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Data.DB, cxStyles, cxClasses;

type
  TFrmContactosEdit = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxsEven: TcxStyle;
    cxsOdd: TcxStyle;
    cxsInactive: TcxStyle;
    cxsDelete: TcxStyle;
    cxsActive: TcxStyle;
    DataSource: TDataSource;
    ilPageControl: TImageList;
    ActionList: TActionList;
    DataSetFirst: TDataSetFirst;
    DataSetPrior: TDataSetPrior;
    DataSetNext: TDataSetNext;
    DataSetLast: TDataSetLast;
    DataSetRefresh: TDataSetRefresh;
    DataSetInsert: TDataSetInsert;
    DataSetEdit: TDataSetEdit;
    DataSetDelete: TDataSetDelete;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    FileSaveAs1: TFileSaveAs;
    actShowGrid: TAction;
    actCloseGrid: TAction;
    ilAction: TImageList;
    cxScrollBox1: TcxScrollBox;
    tbarData: TToolBar;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    pnlMaster: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContactosEdit: TFrmContactosEdit;

implementation

{$R *.dfm}

uses PersonasContactosDM;

end.
