unit GeneraOrdenSalida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Vcl.StdCtrls, Vcl.DBCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, Vcl.Buttons,Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmGeneraOrdenSalida = class(TForm)
    Panel1: TPanel;
    DSOrdenSalida: TDataSource;
    DSOrdenSalidaItems: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    BtBtnGuardar: TBitBtn;
    BitBtn2: TBitBtn;
    DSQryActualizacion: TDataSource;
    DBGrid1: TDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtBtnGuardarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure ActualizarSumasyTotales(IDDocSalida,idOrdenSalida: integer);
    { Private declarations }
  public
    { Public declarations }
    IdOrden:Integer;
  end;

var
  FrmGeneraOrdenSalida: TFrmGeneraOrdenSalida;

implementation

{$R *.dfm}

uses CuentasBancariasDM, CotizacionesDM;

procedure TFrmGeneraOrdenSalida.BtBtnGuardarClick(Sender: TObject);
begin
 //Guardar , verificar cantidades  poner  Estatus
  if DSOrdenSalidaItems.State=dsedit then
  begin
    DSOrdenSalidaItems.dataset.Post;
  end;

  //Verificar operaciones de Items con

  ActualizarSumasyTotales(DSOrdenSalida.dataset.fieldbyname('IDDocumentoSalida').ASInteger,DSOrdenSalidaItems.dataset.fieldbyname('IDOrdenSalida').ASInteger );
  // y actualizar cantidades pendientes en Documento SalidaDetalles)
end;

procedure TFrmGeneraOrdenSalida.BitBtn2Click(Sender: TObject);
begin
 //con los ids Borrar items  y luego Orden , regresar Documento a Pedido
end;

procedure TFrmGeneraOrdenSalida.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=True;
  if (DSOrdenSalidaItems.dataset.State=dsEdit) then
  begin
    if(application.MessageBox('¿Guardar cambios y salir?','Confirmación Salida',MB_YESNO)=idYes)  then
    begin
      BtBtnGuardarClick(BtBtnGuardar);
    end
    else
      CanClose:=False;
  end;

end;

procedure TFrmGeneraOrdenSalida.ActualizarSumasyTotales(IDDocSalida,idOrdenSalida:integer);
var
   IDDocItem:integer;
begin
  IDDocItem:=-1; //Jul 14/16
  DSOrdenSalidaItems.dataset.first;
  DsQryActualizacion.dataset.close;
  while not DSOrdenSalidaItems.dataset.eof  do
  begin
    IDDocItem:= DSOrdenSalidaItems.dataset.FieldByName('IDDocumentoSalidaDetalle').AsInteger;

    TAdoQuery(DsQryActualizacion.dataset).SQL.Clear;
    TAdoQuery(DsQryActualizacion.dataset).SQL.Add('UPDATE DocumentosSalidasDetalles SET CantidadPendiente=CantidadPendiente -'
                                                  +DSOrdenSalidaItems.dataset.FieldByName('CantidadDespachada').AsString
                                                  +' where IDDocumentoSalidaDetalle ='+IntToStr(IDDocItem));
    TAdoQuery(DsQryActualizacion.dataset).ExecSQL;


    DSOrdenSalidaItems.dataset.next;
  end;

   TAdoQuery(DsQryActualizacion.dataset).SQL.Clear;
   TAdoQuery(DsQryActualizacion.dataset).SQL.Add('Select Sum(CantidadPendiente) as SumaCantPend From DocumentosSalidasDetalles '+
                                                 'where idDocumentoSalida='+intToStr(idDocSalida));
   TAdoQuery(DsQryActualizacion.dataset).open;
   if DsQryActualizacion.dataset.fieldbyname('SumaCantPend').ASFloat=0 then //Toda aceptada.
   begin
     DsQryActualizacion.dataset.close;
     TAdoQuery(DsQryActualizacion.dataset).SQL.Clear;
     TAdoQuery(DsQryActualizacion.dataset).SQL.Add('UPDATE DocumentosSalidas SET IdDocumentoSalidaEstatus= 2 ' //Cerrado
                                                  +' where IDDocumentoSalida ='+IntToStr(IDDocItem));
    TAdoQuery(DsQryActualizacion.dataset).ExecSQL;
   end;





end;

end.
