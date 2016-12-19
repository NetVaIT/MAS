unit ProductosXEspacioDm;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, dxmdaset, Vcl.Dialogs, System.UITypes,Forms,winapi.windows;

const
  IdAlmacenPrincipal = 1;

resourcestring
  strAllowChange = '¿Desea cambiar la ubicación del producto?';
  strAviableSpace = 'Debe asignar algun espacio.';

type
  TdmProductosXEspacio = class(T_dmStandar)
    adodsMasterIdProductoXEspacio: TAutoIncField;
    adodsMasterIdAlmacen: TIntegerField;
    adodsMasterIdProducto: TIntegerField;
    adodsMasterIdEspacio: TIntegerField;
    adodsMasterIdCategoria: TIntegerField;
    adodsMasterAlmacen: TStringField;
    adodsMasterIdentificador1: TStringField;
    adodsMasterIdentificador2: TStringField;
    adodsMasterIdentificador3: TStringField;
    adodsMasterProducto: TStringField;
    adodsMasterEspacio: TStringField;
    adodsMasterCantidad: TFloatField;
    adodsAlmacenes: TADODataSet;
    adodsEspacios: TADODataSet;
    dsAlamcenes: TDataSource;
    mdCambio: TdxMemData;
    mdCambioIdAlmacen: TIntegerField;
    mdCambioIdEspacio: TIntegerField;
    mdCambioAlamacen: TStringField;
    mdCambioEspacio: TStringField;
    actCambiar: TAction;
    adospSetProductosXEspacio: TADOStoredProc;
    mdCambioCantidad: TFloatField;
    ADtStAuxiliarAjuste: TADODataSet;
    ActAjusteSUyPXE: TAction;
    ADOQryAuxiliar: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure actCambiarExecute(Sender: TObject);
    procedure ActAjusteSUyPXEExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ProductosXEspacioForm, _Utils, _ConectionDmod, ConfiguracionDM;

{$R *.dfm}

procedure TdmProductosXEspacio.ActAjusteSUyPXEExecute(Sender: TObject);
var          //nov 2/16
   IdPXECorrecto, IdSalidaUbicacionAct,i : Integer;
   Cant :Double;
   Cadena:String;
begin      //Para los aplicados
  inherited;
  //Iniciar transaccion

  cadena:='';
  ADOQryAuxiliar.Close;
  ADtStAuxiliarAjuste.close;
  ADtStAuxiliarAjuste.Open;     //Todo..
  if (not ADtStAuxiliarAjuste.eof)
       and (application.messagebox(Pchar('¿Está seguro de realizar el ajuste de ubicaciones?('+intToStr(ADtStAuxiliarAjuste.recordcount)+')'),'Confirmación',MB_YESNO)=IDYES )then
  begin
    try
      ADtStAuxiliarAjuste.Connection.BeginTrans;
      while not ADtStAuxiliarAjuste.eof do
      begin
        if ADtStAuxiliarAjuste.FieldByName('IdSalidaUbicacionEstatus').AsInteger=3 then //Aplicado
        begin
          IdPXECorrecto:= ADtStAuxiliarAjuste.FieldByName('IdPXE').AsInteger;
          IdSalidaUbicacionAct:=ADtStAuxiliarAjuste.FieldByName('IdSalidaUbicacion').AsInteger;
          Cant:= ADtStAuxiliarAjuste.FieldByName('Cantidad').AsFloat;

          ADOQryAuxiliar.SQL.Clear;
          ADOQryAuxiliar.SQL.Add('UPDATE SalidasUbicaciones SET IDProductoXEspacio = '+inttoStr(IdPXECorrecto)+' where IdSalidaUbicacion ='+inttostr(IdSalidaUbicacionAct));
          I:=ADOQryAuxiliar.ExecSQL;
          if i<>1 then
            Cadena:=CAdena+ ' 3SU IDPXE:'+intToStr(IdPXECorrecto)+' IDSalidaUbicacion:'+ inttostr(IdSalidaUbicacionAct)+ 'Cant '+ floatToStr(cant);

          ADOQryAuxiliar.SQL.Clear;
          ADOQryAuxiliar.SQL.Add('Update ProductosXEspacio SET Cantidad = Cantidad -'+floatToStr(cant)+' Where IdProductoXEspacio ='+intToStr(IdPXECorrecto));
          I:=ADOQryAuxiliar.ExecSQL;
          if i<>1 then
            Cadena:=CAdena+ ' 3PXE IDPXE:'+intToStr(IdPXECorrecto);


        end
        else if ADtStAuxiliarAjuste.FieldByName('IdSalidaUbicacionEstatus').AsInteger=1 then
        begin
          ADOQryAuxiliar.SQL.Clear;
          ADOQryAuxiliar.SQL.Add('UPDATE SalidasUbicaciones SET IDProductoXEspacio = '+inttoStr(IdPXECorrecto)+' where IdSalidaUbicacion ='+inttostr(IdSalidaUbicacionAct));
          ADOQryAuxiliar.ExecSQL;
          if i<>1 then
            Cadena:=CAdena+ ' 1SU IDPXE:'+intToStr(IdPXECorrecto)+' IDSalidaUbicacion:'+ inttostr(IdSalidaUbicacionAct)+ 'Cant '+ floatToStr(cant);
        end;
        ADtStAuxiliarAjuste.Next;
      end; //While
      ADtStAuxiliarAjuste.Connection.CommitTrans ;

    except
       ADtStAuxiliarAjuste.Connection.RollbackTrans;
       ShowMessage('Error actualizando datos IDPXE:'+intToStr(IdPXECorrecto)+' IDSalidaUbicacion:'+ inttostr(IdSalidaUbicacionAct)+ 'Cant '+ floatToStr(cant)
                   +' SUEstatus: '+ADtStAuxiliarAjuste.FieldByName('IdSalidaUbicacionEstatus').AsString);
    end;
    if cadena <>'' then
      ShowMessage(cadena)
    else
      ShowMessage('Termino ajuste');
  end;

end;

procedure TdmProductosXEspacio.actCambiarExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg(strAllowChange, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if (not mdCambioIdAlmacen.IsNull) and (not mdCambioIdEspacio.IsNull) then
    begin
      adospSetProductosXEspacio.Parameters.ParamByName('@IdProductoXEspacioO').Value:= adodsMasterIdProductoXEspacio.Value;
      adospSetProductosXEspacio.Parameters.ParamByName('@IdEspacioD').Value:= mdCambioIdEspacio.Value;
      adospSetProductosXEspacio.Parameters.ParamByName('@CantidadD').Value:= mdCambioCantidad.Value;
      adospSetProductosXEspacio.ExecProc;
      RefreshADODS(adodsMaster, adodsMasterIdProductoXEspacio);
      mdCambioIdEspacio.Clear;
      mdCambioCantidad.Value:= 0;
    end
    else
      MessageDlg(strAviableSpace, mtWarning, [mbOK], 0);
  end;
end;

procedure TdmProductosXEspacio.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmProductosXEspacio.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmProductosXEspacio(gGridEditForm).Cambio:= mdCambio;
  TfrmProductosXEspacio(gGridEditForm).actCambiar:= actCambiar;
  TfrmProductosXEspacio(gGridEditForm).actAjustar:=ActAjusteSUyPXE;
  Adodsmaster.Filter:='cantidad <>0  or (cantidad = 0 and IdEspacio<>'+ intToStr(dmConfiguracion.IDEspacioAduana)+')';//Nov 7/16
  Adodsmaster.Filtered:= True;
  mdCambio.Open;
  mdCambio.Insert;
  mdCambioIdAlmacen.Value := IdAlmacenPrincipal;
  mdCambioCantidad.Value:= 0;
end;

end.
