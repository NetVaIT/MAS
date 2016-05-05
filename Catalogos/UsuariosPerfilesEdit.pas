unit UsuariosPerfilesEdit;

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
  Vcl.StdCtrls, Vcl.CheckLst, cxTextEdit, cxDBEdit;

type
  TfrmUsuariosPerfiles = class(T_frmStandarGFormEdit)
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    PnlMenus: TPanel;
    ChckLstBxOpcionesCat: TCheckListBox;
    ChckLstBxOpcionesAlm: TCheckListBox;
    ChckLstBxOpcionesVenta: TCheckListBox;
    ChckLstBxOpcionesCXC: TCheckListBox;
    ChckLstBxOpcionesCompra: TCheckListBox;
    ChckLstBxOpcionesRep: TCheckListBox;
    ChckBxCat: TCheckBox;
    ChckBxAlm: TCheckBox;
    ChckBxVentas: TCheckBox;
    ChckBxCompras: TCheckBox;
    ChckBxCxC: TCheckBox;
    ChckBxRep: TCheckBox;
    BtnActOpcion: TButton;
    ToolButton3: TToolButton;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    procedure ChckBxCatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnActOpcionClick(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ToolButton19MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    procedure MarcarCheckBox;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuariosPerfiles: TfrmUsuariosPerfiles;

implementation

{$R *.dfm}

uses UsuariosPerfilesDM, UsuariosPerfilesForm;

procedure TfrmUsuariosPerfiles.BtnActOpcionClick(Sender: TObject);
var
  I, j, k :Integer;
  MenuTxt, OpcionTxt, aux:String;
begin
  inherited;
  MenuTxt:='';
  OpcionTxt:='';
  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TcheckBox) and (Components[i] as TcheckBox).Checked then
      MenuTxt:=MenuTxt+intToStr((Components[i] as TcheckBox).tag)+'|';
    if (Components[i] is TchecklistBox)  then  // Abr 25/16
    begin
      for j := 0  to (Components[i] as TcheckListBox).count -1 do
      begin
        if (Components[i] as TcheckListBox).Checked[j] then
        begin
          aux:=(Components[i] as TcheckListBox).Items[j] ;
          k:= pos('|',Aux);
          Aux:= Copy(aux, k+1,length(aux)-k);  //Siempre va a tener
          OpcionTxt:= OpcionTxt+Aux+'|';
        end;
      end;
    end;
  end;
  //ShowMessage(OpcionTxt);

  if datasource.state in [dsEdit, Dsinsert] then// Abr 25/16
  begin
    datasource.DataSet.FieldByName('PermisoMenu').AsString:=  MenuTxt;
    datasource.DataSet.FieldByName('PermisoOpcion').AsString:=  OpcionTxt;
  end;
end;

procedure TfrmUsuariosPerfiles.ChckBxCatClick(Sender: TObject);
var
  I :Integer;
begin
  inherited;
  for i:=0 to ComponentCount-1 do
  begin
    if Components[i] is TcheckListBox then
      if (Components[i] as TcheckListBox).Tag= (sender as TcheckBox).Tag then
      begin
       (Components[i] as TcheckListBox).enabled:= (sender as TcheckBox).checked;
       if (sender as TcheckBox).checked then
         (Components[i] as TcheckListBox).CheckAll(cbChecked)
       else
         (Components[i] as TcheckListBox).CheckAll(cbUnChecked);
      end;
  end;
end;

procedure TfrmUsuariosPerfiles.DataSourceDataChange(Sender: TObject;
  Field: TField);
  var i :integer;
begin
  inherited;
  if DataSource.State=dsBrowse then
  begin
    for i:=0 to ComponentCount-1 do
    begin
      if (Components[i] is TcheckBox) then
         (Components[i] as TcheckBox).Checked  :=False;
    end;
    MarcarCheckBox;
  end;
end;

procedure TfrmUsuariosPerfiles.DataSourceStateChange(Sender: TObject);
begin
  inherited;
  PnlMenus.Enabled:= datasource.state in [dsEdit, Dsinsert];

end;

procedure TfrmUsuariosPerfiles.FormCreate(Sender: TObject);
begin
  inherited;
   gFormGrid := TfrmUsuariosPerfilesGrid.Create(Self);
end;

procedure TfrmUsuariosPerfiles.ToolButton19MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  BtnActOpcionClick(BtnActOpcion);
end;

procedure TfrmUsuariosPerfiles.MarcarCheckBox;  //Abr 25/16
var
  i, k, j, m:Integer;
  MenuTxt, opcionTxt, Aux:String;

begin
  MenuTxt:=datasource.DataSet.FieldByName('PermisoMenu').AsString  ;
  opcionTxt:= datasource.DataSet.FieldByName('PermisoOpcion').AsString;

  while Length(MenuTxt)>0 do
  begin
    k:=pos('|',MenuTxt);
    if k>0 then
    begin
      Aux:= Copy(MenuTxt,1,k-1);
      MenuTxt:=Copy(MenuTxt,k+1,Length(MenuTxt)-k);
    end
    else
    begin
      Aux:= Copy(MenuTxt,1,Length(MenuTxt));
      MenuTxt:='';
    end;

    for i:=0 to ComponentCount-1 do
    begin
      if (Components[i] is TcheckBox)and ((Components[i] as TcheckBox).tag = StrToInt(aux))then
      begin
       (Components[i] as TcheckBox).Checked :=True;
       break; // porque si ya lo encontró ya no tiene que buscar más
      end;
    end;
  end;

  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TcheckListBox) then
    begin
      for j:=0 to (Components[i] as TcheckListBox).count-1  do
      begin
        aux:=(Components[i] as TcheckListBox).Items[j];
        m:=pos('|',aux);
        aux:=Copy (aux, m+1,length(aux)-m);
        m:=pos(aux+'|',opcionTxt);
       (Components[i] as TcheckListBox).Checked[j]:=(pos('|'+aux+'|',opcionTxt)>0) or (m=1);
      end;
    end;
  end;

end;
end.
