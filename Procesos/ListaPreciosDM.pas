unit ListaPreciosDM;

interface

uses
  winapi.windows,System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB, ppCtrls, ppDB, ppDBPipe, ppParameter,
  ppDesignLayer, ppBands, dxGDIPlusClasses, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppVar, shellapi,forms, dialogs;

type
  TDmListaPrecios = class(T_dmStandar)
    ADODtStBitacora: TADODataSet;
    adodsMasterIdProducto: TAutoIncField;
    adodsMasterIdProductoTipo: TIntegerField;
    adodsMasterIdUnidadMedida: TIntegerField;
    adodsMasterIdProductoEstatus: TIntegerField;
    adodsMasterIdentificador1: TStringField;
    adodsMasterIdentificador2: TStringField;
    adodsMasterIdentificador3: TStringField;
    adodsMasterDescripcion: TStringField;
    adodsMasterPrecioUnitario: TFloatField;
    ADODtStUnidadesMedida: TADODataSet;
    ADODtStBitacoraFechaReg: TDateTimeField;
    ADODtStBitacoraidUsuario: TIntegerField;
    ADODtStBitacoraSistema: TStringField;
    ADODtStBitacoraTabla: TStringField;
    ADODtStBitacoraIdTabla: TIntegerField;
    ADODtStBitacoraDatosViejos: TStringField;
    ADODtStBitacoraDatosNvos: TStringField;
    ADODtStBitacoraAccion: TStringField;
    ADODtStBitacoraObservaciones: TStringField;
    ADODtStInventario: TADODataSet;
    ADODtStInventarioIdInventario: TAutoIncField;
    ADODtStInventarioIdAlmacen: TIntegerField;
    ADODtStInventarioIdProducto: TIntegerField;
    ADODtStInventarioPrecioVenta: TFloatField;
    ADODtStProveedor: TADODataSet;
    ADODtStProveedorIdPersona: TAutoIncField;
    ADODtStProveedorIdRol: TIntegerField;
    ADODtStProveedorIdentificador: TStringField;
    ADODtStProveedorRazonSocial: TStringField;
    adodsMasterPrecioNuevo: TFloatField;
    ppRptListaPrecios: TppReport;
    ppParameterList4: TppParameterList;
    ppDBPplnListaPrecios: TppDBPipeline;
    DSMaster: TDataSource;
    ADODtStAplicaciones: TADODataSet;
    ADODtStAplicacionesIdProducto: TIntegerField;
    ADODtStAplicacionesIdentificador: TStringField;
    ADODtStAplicacionesDescripcion: TStringField;
    ADODtStAplicacionesAplicacion: TStringField;
    ActActualizaPrecios: TAction;
    ActImpListaPrecios: TAction;
    ppHeaderBand4: TppHeaderBand;
    ppImage3: TppImage;
    ppLabel41: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand4: TppDetailBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel7: TppLabel;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppDBText2: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ADOQryActualizaInventario: TADOQuery;
    ADOQryconsProductos: TADOQuery;
    ADODtStVerUsuario: TADODataSet;
    ADODtStVerUsuarioIdUsuario: TAutoIncField;
    ADODtStVerUsuarioIdPersona: TIntegerField;
    ADODtStVerUsuarioIdUsuarioEstatus: TIntegerField;
    ADODtStVerUsuarioIdUsuarioPerfil: TIntegerField;
    ADODtStVerUsuarioLogin: TStringField;
    ADODtStVerUsuarioPassword: TStringField;
    ADODtStVerUsuarioPermiso: TStringField;
    ADODtStProductosPrecios: TADODataSet;
    ADODtStProductosPreciosIdProducto: TAutoIncField;
    ADODtStProductosPreciosIdProductoTipo: TIntegerField;
    ADODtStProductosPreciosIdUnidadMedida: TIntegerField;
    ADODtStProductosPreciosIdProductoEstatus: TIntegerField;
    ADODtStProductosPreciosIdentificador1: TStringField;
    ADODtStProductosPreciosIdentificador2: TStringField;
    ADODtStProductosPreciosIdentificador3: TStringField;
    ADODtStProductosPreciosDescripcion: TStringField;
    ADODtStProductosPreciosPrecioUnitario: TFloatField;
    ADODtStProductosPreciosPrecioNuevo: TFloatField;
    ADODtStProductosPreciosAplicacion: TStringField;
    ADODtStProductosPreciosCompleto: TStringField;
    ADODtStProductosPreciosunidadMedida: TStringField;
    ADOQryAuxiliar: TADOQuery;
    DSProductosPrecios: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterBeforeEdit(DataSet: TDataSet);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
    procedure adodsMasterBeforeInsert(DataSet: TDataSet);
    procedure adodsMasterBeforeCancel(DataSet: TDataSet);
    procedure adodsMasterBeforeDelete(DataSet: TDataSet);
    procedure ADODtStBitacoraNewRecord(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure adodsMasterCalcFields(DataSet: TDataSet);
    procedure adodsMasterBeforeOpen(DataSet: TDataSet);
    procedure ActImpListaPreciosExecute(Sender: TObject);
    procedure ActActualizaPreciosExecute(Sender: TObject);
    procedure ADODtStProductosPreciosCalcFields(DataSet: TDataSet);
  private
    fDatosViejos: String;
    FAccion: String;
    procedure RegistraBitacora(Tabla, Id, DatosV, DatosN,AccionAct, obs: String);
    function ObtenerAplicaciones: String;
    function VerificaClave: Boolean;
    { Private declarations }
  public
    { Public declarations }
    property DatosViejos:String read fDatosViejos write fDatosViejos;//Jul 5/16
    Property Accion:String read FAccion write FAccion; //Jul 5/16
    procedure PrintPDFFile(IDReporte: Integer; Cant:Integer=1;mostrar: boolean=true; nombrePDF:TFileName=''); //Jul 19/16

  end;

var
  DmListaPrecios: TDmListaPrecios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ListaPreciosEdit, _ConectionDmod,  _Utils;

{$R *.dfm}
function  TDmListaPrecios.VerificaClave:Boolean;
var
   clave:String;
begin
  Result:=False;
  clave:='';
  if InputQuery('Solicitud Contraseña','Indique su contraseña',clave) then
  begin
    ADODtStVerUsuario.Close;
    ADODtStVerUsuario.Parameters.ParamByName('IdUsuario').value:= _dmConection.IdUsuario;
    ADODtStVerUsuario.Open;
    if (not ADODtStVerUsuario.Eof)and(clave =ADODtStVerUsuario.fieldbyname('Password').value) then
    begin
      REsult:=True;
    end;

  end;



end;

procedure TDmListaPrecios.ActActualizaPreciosExecute(Sender: TObject);
var cont :integer;
    DVI, obs,DNI:String;
    x,i, con2:integer;
begin
  inherited;
  if  (application.MessageBox(pchar('¿Está seguro de hacer el cambio de precios?'), 'Confirmación', MB_YESNO )=idYES) and VerificaClave then
  begin
    //
    ADOdsmaster.Connection.BeginTrans;
    try


      ADOQryActualizaInventario.SQL.Clear;
      ADOQryActualizaInventario.SQL.Add('Update Productos SET PrecioUnitario=PrecioNuevo where (PrecioNuevo is not null) and (PrecioUnitario<>PrecioNuevo)');
      cont :=ADOQryActualizaInventario.ExecSQL;
     // application.MessageBox(pchar('Actualizó'+intTostr(cont)+' registros Productos '), 'Informacion', MB_ok );

      ADOQryconsProductos.Close;
      ADOQryconsProductos.Open;
      cont:=0;
      con2:= ADOQryconsProductos.recordcount;
      i:=1;
     //Quitar filtro
      while not ADOQryconsProductos.eof  do
      begin
         X:= i*100 div con2 ;
         ShowProgress(i,con2,'Actualizando precios definitivos..' + IntToStr(x) + '%');
         ADODtStInventario.Close;
         AdoDtStInventario.Parameters.ParamByName('IdProducto').value:=ADOQryconsProductos.FieldByName('IdProducto').Asinteger;
         AdoDtStInventario.open;
        if not AdoDtStInventario.eof  and (AdoDtStInventario.FieldByName('PrecioVenta').AsFloat <> ADOQryconsProductos.FieldByName('PrecioUnitario').asFloat ) then
        begin
          DVI:= 'IdInv:'+ AdoDtStInventario.FieldByName('IdInventario').AsString+'IDProd:'+AdoDtStInventario.FieldByName('IdProducto').AsString
          +'-PV:'+AdoDtStInventario.FieldByName('PrecioVenta').AsString;
         AdoDtStInventario.Edit;
         AdoDtStInventario.FieldByName('PrecioVenta').AsFloat:=ADOQryconsProductos.FieldByName('PrecioUnitario').asFloat;
         AdoDtStInventario.Post;
         DNI:= 'IdInv:'+ AdoDtStInventario.FieldByName('IdInventario').AsString+'IDProd:'+AdoDtStInventario.FieldByName('IdProducto').AsString
           +'-PV:'+AdoDtStInventario.FieldByName('PrecioVenta').AsString;
         RegistraBitacora('Inventario',AdoDtStInventario.FieldByName('IdInventario').AsString,DVI,DNI, 'Edita', obs);

         cont:=cont+1;
       end;
       i:=i+1;
       ADOQryconsProductos.Next;
      end;
      ADOdsmaster.Connection.CommitTrans;

      application.MessageBox(pchar('Actualizó '+intTostr(cont)+' registros'), 'Informacion', MB_ok );
    except
      ADOdsmaster.Connection.RollbackTrans;

    end;
    ShowProgress(100,100);
  end;



end;

procedure TDmListaPrecios.ActImpListaPreciosExecute(Sender: TObject);
var ArcCotiza:String;     //Jul 19/16 copiado
begin
  inherited;
  if adodsMaster.State in [dsInsert, dsEdit] then
     adodsMaster.post;

  ADODtStProductosPrecios.Close;
  ADODtStProductosPrecios.open;
  ArcCotiza:='ListaPrecios.pdf';
  if FileExists(ArcCotiza) then
    deleteFile(arcCotiza);
   //PrintPDFFile(True); // deshabilitado para que no muestre desde el Reportbuilder
  PrintPDFFile(1,1, false,ArcCotiza);// que sólo muestre el PDF   //May 13 /16
  if FileExists(ArcCotiza) then  //May 13 /16
  begin
    ShellExecute(application.Handle, 'open', PChar(ArcCotiza), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TDmListaPrecios.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStProveedor.Open;
  ADODtStProductosPrecios.Open;

end;

procedure TDmListaPrecios.adodsMasterAfterPost(DataSet: TDataSet);
var
  DAtosNuevos, DVI, DNI, obs:String;
  i:integer;
begin
  inherited;

 (*
  if adodsMaster.Tag = 5 then //Es individual //Jul 6/16
     obs:='IDProducto ='+dataset.FieldByName('IdProducto').AsString
  else
  begin
    obs:= adodsMaster.CommandText;   //Jul 6/16
    i:=pos('inner' ,obs);
    if i>0 then
      obs:= Copy(obs,i,length(obs)-i+1);
  end;
  DAtosNuevos:='ID:'+dataset.FieldByName('IdProducto').AsString +'-PU:'+dataset.FieldByName('PrecioUnitario').AsString+
  'Id1:'+ dataset.FieldByName('Identificador1').AsString +'Id2'+dataset.FieldByName('Identificador2').AsString
  +'ID3:'+dataset.FieldByName('Identificador3').AsString+ 'Desc:'+dataset.FieldByName('Descripcion').AsString+'IDTP:'+
  dataset.FieldByName('IdProductoTipo').AsString +'IdUM:'+dataset.FieldByName('IdUnidadMedida').AsString
  +'IdPE:'+dataset.FieldByName('IdProductoEstatus').AsString;

   RegistraBitacora('Productos',dataset.FieldByName('IdProducto').AsString,DAtosViejos,DAtosNuevos, Accion, obs+DataSet.Filter);
  //Actualiza inventario
  //Sacar id y precio, actualizar valor en inventario
  if Accion='Edita' then  //Por que si es nuevo no lo encuentra
  begin
    ADODtStInventario.Close;
    AdoDtStInventario.Parameters.ParamByName('IdProducto').value:=dataset.FieldByName('IdProducto').Asinteger;
    AdoDtStInventario.open;
    if not AdoDtStInventario.eof then
    begin
      DVI:= 'IdInv:'+ AdoDtStInventario.FieldByName('IdInventario').AsString+'IDProd:'+AdoDtStInventario.FieldByName('IdProducto').AsString
           +'-PV:'+AdoDtStInventario.FieldByName('PrecioVenta').AsString;
      AdoDtStInventario.Edit;
      AdoDtStInventario.FieldByName('PrecioVenta').AsFloat:=dataset.FieldByName('PrecioUnitario').asFloat;
      AdoDtStInventario.Post;

    end;
    DNI:= 'IdInv:'+ AdoDtStInventario.FieldByName('IdInventario').AsString+'IDProd:'+AdoDtStInventario.FieldByName('IdProducto').AsString
           +'-PV:'+AdoDtStInventario.FieldByName('PrecioVenta').AsString;
    RegistraBitacora('Inventario',AdoDtStInventario.FieldByName('IdInventario').AsString,DVI,DNI, Accion, obs);
  end;
   //guardar datos en bitacora para productos y para inventario
  Accion:='';    *)
end;
procedure TDmListaPrecios.RegistraBitacora(Tabla, Id, DatosV, DatosN, AccionAct, obs:String);
begin
  ADODtStBitacora.Insert;
  ADODtStBitacoraTabla.AsString:=Tabla;
  ADODtStBitacoraIdTabla.AsString:=Id;
  ADODtStBitacoraDatosViejos.AsString:=DatosV;
  ADODtStBitacoraDatosNvos.AsString:=DatosN;
  ADODtStBitacoraAccion.AsString:=Accion;
  ADODtStBitacoraObservaciones.AsString:=Obs;
  ADODtStBitacora.Post;

end;

procedure TDmListaPrecios.adodsMasterBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  Accion:='';
end;

procedure TDmListaPrecios.adodsMasterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //No se debe permitir
end;

procedure TDmListaPrecios.adodsMasterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//Tomar Datos originales
(*  fDatosViejos:='ID:'+dataset.FieldByName('IdProducto').AsString +'-PU:'+dataset.FieldByName('PrecioUnitario').AsString+
  'Id1:'+ dataset.FieldByName('Identificador1').AsString +'Id2'+dataset.FieldByName('Identificador2').AsString
  +'ID3:'+dataset.FieldByName('Identificador3').AsString+ 'Desc:'+dataset.FieldByName('Descripcion').AsString+'IDTP:'+
  dataset.FieldByName('IdProductoTipo').AsString +'IdUM:'+dataset.FieldByName('IdUnidadMedida').AsString
  +'IdPE:'+dataset.FieldByName('IdProductoEstatus').AsString; *)
  Accion:='Edita';
end;

procedure TDmListaPrecios.adodsMasterBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   Accion:='Inserta';
   fDatosViejos:='Nuevo';
end;

procedure TDmListaPrecios.adodsMasterBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStAplicaciones.Open;
end;

procedure TDmListaPrecios.adodsMasterCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('Completo').asString:=  DataSet.FieldByName('Descripcion').asString+'-'+DataSet.FieldByName('Aplicacion').asString; //ObtenerAplicaciones(DataSet.FieldByName('Descripcion').asString);
end;

function  TDmListaPrecios.ObtenerAplicaciones:String;
begin
  Result:='';
  ADODtStAplicaciones.First;
  while not ADODtStAplicaciones.eof do
  begin
    if Result='' then
       Result:= '-'+ ADODtStAplicaciones.FieldByName('Aplicacion').AsString
    else
      Result:=Result +','+ ADODtStAplicaciones.FieldByName('Aplicacion').AsString;
    ADODtStAplicaciones.Next;
  end;

end;
procedure TDmListaPrecios.PrintPDFFile(IDReporte, Cant: Integer;
  mostrar: boolean; nombrePDF: TFileName);
var                       // Modificado   //Jul 19/16
  vPDFFileName: TFileName;
  Actual:Integer;
begin
   // Configura el reporte
  case IDReporte of
  1:begin
      ppRptListaPrecios.Template.FileName:=ExtractFilePath(application.exeName)+'ListaPrecios.rtm';   //Es posible que luego se quite y se deje fijo
      ppRptListaPrecios.Template.LoadFromFile;

      ppRptListaPrecios.ShowPrintDialog:= False;
      ppRptListaPrecios.ShowCancelDialog:= False;
      ppRptListaPrecios.AllowPrintToArchive:= False;
      if Mostrar then
        ppRptListaPrecios.DeviceType:= 'Screen'
      else
      begin
        if nombrePDF<>'' then
        begin
          ppRptListaPrecios.DeviceType:= 'PDF';
          ppRptListaPrecios.PDFSettings.OpenPDFFile := False;
          ppRptListaPrecios.TextFileName:= nombrePDF;
        end; //Siempre muesta el PDF
      end;
    //    ppReport.PrinterSetup.Copies:= 1;
    // DES ABAN eNE7/16      ppReport.PrinterSetup.DocumentName:= ExtractFileName(vPDFFileName);
      ppRptListaPrecios.Print;
    end;
  end;
end;

procedure TDmListaPrecios.ADODtStBitacoraNewRecord(DataSet: TDataSet);
begin
  inherited;  //Solo para la actualizacion final
  DataSet.FieldByName('FechaReg').AsDateTime:=Now;
  DataSet.FieldByName('IdUsuario').AsInteger:=_dmConection.IdUsuario;
  DataSet.FieldByName('Sistema').AsString:='SISMAS';
end;

procedure TDmListaPrecios.ADODtStProductosPreciosCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('Completo').asString:=  DataSet.FieldByName('Descripcion').asString+'-'+DataSet.FieldByName('Aplicacion').asString; //ObtenerAplicaciones(DataSet.FieldByName('Descripcion').asString);

end;

procedure TDmListaPrecios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmListaPrecioEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  TfrmListaPrecioEdit(gGridEditForm).DSVerificaActualiza.DataSet:=ADOQryAuxiliar;
  ADODtStBitacora.open;
  TfrmListaPrecioEdit(gGridEditForm).actImprimeLista:=ActImpListaPrecios;
   TfrmListaPrecioEdit(gGridEditForm).actActualizaprecios :=ActActualizaPrecios;

end;

procedure TDmListaPrecios.DataModuleDestroy(Sender: TObject);
begin
  inherited;
   ADODtStProveedor.close;
end;

end.
