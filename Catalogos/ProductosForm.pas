unit ProductosForm;

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
  Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,Data.Win.ADODB;

type
  TfrmProductos = class(T_frmStandarGFormGrid)
    tvMasterIdProducto: TcxGridDBColumn;
    tvMasterDescripcion: TcxGridDBColumn;
    tvMasterIdUnidadMedida: TcxGridDBColumn;
    tvMasterPrecioUnitario: TcxGridDBColumn;
    tvMasterIdUbicacion: TcxGridDBColumn;
    tvMasterMaximo: TcxGridDBColumn;
    tvMasterMinimo: TcxGridDBColumn;
    tvMasterPuntoReorden: TcxGridDBColumn;
    tvMasterIdProductoTipo: TcxGridDBColumn;
    tvMasterIdProductoEstatus: TcxGridDBColumn;
    tvMasterIdDocumentos: TcxGridDBColumn;
    tvMasterUnidadMedida: TcxGridDBColumn;
    tvMasterProductoTipo: TcxGridDBColumn;
    tvMasterProductoEstatus: TcxGridDBColumn;
    tvMasterIdentificador1: TcxGridDBColumn;
    tvMasterIdentificador2: TcxGridDBColumn;
    tvMasterIdentificador3: TcxGridDBColumn;
    Panel1: TPanel;
    EdtBuscar: TEdit;
    SpdBtnBuscar: TBitBtn;
    ChckBxBuscaXAp: TCheckBox;
    procedure SpdBtnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ProductosDM;

procedure TfrmProductos.SpdBtnBuscarClick(Sender: TObject);
var        //May 17/16
   idProd, ParteAp:String;
begin
  inherited;
  idProd:=EdtBuscar.Text;

  if ChckBxBuscaXAp.Checked then
  begin
    DataSource.DataSet.Close;                                   //May 11/16 , PA.Aplicacion, PA.Identificador  IdentificadorAplica
    TAdoDataset(DataSource.DataSet).commandText:='Select distinct(P.IdProducto) ,P.*,Identificador1 + '' - '' + P.Descripcion AS Identificador from Productos P '+
                                                 ' inner join ProductosAplicaciones PA on (P.IdProducto=PA.IdProducto'+
                                                  ' and  PA.Aplicacion like''%'+IDProd +'%'') ';
   DataSource.DataSet.open;
  end
  else  //Sin filtro por aplicacion
  begin
    DataSource.DataSet.Close;                                   //May 11/16    '+ParteAp+ '      ' left join ProductosAplicaciones PA on (P.IdProducto=PA.IdProducto)  '+
    TAdoDataset(DataSource.DataSet).commandText:='Select P.*,Identificador1 + '' - '' + P.Descripcion AS Identificador  from Productos P '+  //Ajustado para que funcione consulta Ago 16/16
                                          ' where(Identificador1 Like ''%'+IDProd+'%'' or Identificador2 like ''%'+IDProd+
                                          '%'' or Identificador3 Like ''%'+IDProd+'%'')';               //Ajustados para qu wbusque parcial cualquier pedazo Dic 2/16
    DataSource.DataSet.open;
    if DataSource.DataSet.Eof then
    begin
      DataSource.DataSet.Close;                                  //corregido para que funcione consulta ago 16/16
      TAdoDataset(DataSource.DataSet).commandText:='Select P.* , Identificador1 + '' - '' + P.Descripcion AS Identificador '+ParteAp+' from Productos P where P.Descripcion like ''%'+IDProd+ '%''';
      DataSource.DataSet.open;
    end;
  end;
end;

end.
