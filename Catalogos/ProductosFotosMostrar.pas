unit ProductosFotosMostrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,ShellAPi;

type
  TFrmMostrarForosProd = class(TForm)
    PnlFotos: TPanel;
    ImgFoto: TImage;
    Label9: TLabel;
    ImgVacio: TImage;
    Label11: TLabel;
    DBText1: TDBText;
    SpdBtnVerArchivo: TSpeedButton;
    DBNavigatorFotos: TDBNavigator;
    DBText2: TDBText;
    datasourceFotos: TDataSource;
    ChckLstBxProdFotos: TCheckListBox;
    DSDocumento: TDataSource;
    BtBtnCancela: TBitBtn;
    BtBtnAcepta: TBitBtn;
    procedure ChckLstBxProdFotosClick(Sender: TObject);
    procedure ChckLstBxProdFotosClickCheck(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpdBtnVerArchivoClick(Sender: TObject);
    procedure BtBtnAceptaClick(Sender: TObject);
  private
    fListaArc: TStringList;
    { Private declarations }
  public
    { Public declarations }
    UsarDatos:Boolean;
    property ListaArc:TStringList read fListaArc write fListaArc;
  end;

var
  FrmMostrarForosProd: TFrmMostrarForosProd;

implementation

{$R *.dfm}

procedure TFrmMostrarForosProd.BtBtnAceptaClick(Sender: TObject);
begin
  UsarDatos:=True;
  close;
end;

procedure TFrmMostrarForosProd.ChckLstBxProdFotosClick(Sender: TObject);

var
  id:Integer;
  parte:String;
  NombreA:  TFileName;
begin    //Mostrar el actual

  Parte:=  ChckLstBxProdFotos.Items[ChckLstBxProdFotos.ItemIndex];
  id:=pos('\',Parte);
  if id>0  then
     Parte:=Copy(Parte, id+1, length(Parte)-id);
  Id:=StrToInt(Parte);
                                 //Tenia documento
  if datasourceFotos.DataSet.Locate('IDProductoFoto',ID,[]) then
  begin
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


end;

procedure TFrmMostrarForosProd.ChckLstBxProdFotosClickCheck(Sender: TObject);
var i, cant :Integer;
begin
  ListaArc.Clear;
 // Cant:=0;
 // SetLength(ListaArc  ,Cant);
  for I := 0 to ChckLstBxProdFotos.Count-1 do   //    ChckLstBxProdFotos.ItemIndex
  begin
    if ChckLstBxProdFotos.Checked[i] then
    begin
 //     Cant:=Cant+1;
 //     SetLength(ListaArc  ,Cant);
      ListaArc.Add(ChckLstBxProdFotos.Items[i]);
    end;

  end;


end;

procedure TFrmMostrarForosProd.FormCreate(Sender: TObject);
begin
  UsarDatos:=False;
  ListaArc:=TStringList.Create;
end;

procedure TFrmMostrarForosProd.SpdBtnVerArchivoClick(Sender: TObject);
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
      ShowMessage('No se puede mostrar el archivo de extension'+ ExtractFileExt(NombreA) ) ;
  end;

end;

end.
