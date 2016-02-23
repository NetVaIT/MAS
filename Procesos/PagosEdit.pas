unit PagosEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarGFormEdit, dxSkinsCore,
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
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxClasses, Vcl.StdActns,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls,
  Vcl.ToolWin, cxScrollBox, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit,
  Vcl.DBCtrls, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.StdCtrls;

type
  TFrmPagosEdt = class(T_frmStandarGFormEdit)
    Label7: TLabel;
    cxDBSpinEdit7: TcxDBSpinEdit;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label9: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label10: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label13: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagosEdt: TFrmPagosEdt;

implementation

{$R *.dfm}

uses PagosDM;

end.
