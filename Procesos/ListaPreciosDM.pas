unit ListaPreciosDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, System.Actions,
  Vcl.ActnList, Data.Win.ADODB;

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
    adodsMasterUnidadMedida: TStringField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure adodsMasterBeforeEdit(DataSet: TDataSet);
    procedure adodsMasterAfterPost(DataSet: TDataSet);
    procedure adodsMasterBeforeInsert(DataSet: TDataSet);
    procedure adodsMasterBeforeCancel(DataSet: TDataSet);
    procedure adodsMasterBeforeDelete(DataSet: TDataSet);
    procedure ADODtStBitacoraNewRecord(DataSet: TDataSet);
    procedure adodsMasterAfterOpen(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    fDatosViejos: String;
    FAccion: String;
    procedure RegistraBitacora(Tabla, Id, DatosV, DatosN,AccionAct, obs: String);
    { Private declarations }
  public
    { Public declarations }
    property DatosViejos:String read fDatosViejos write fDatosViejos;//Jul 5/16
    Property Accion:String read FAccion write FAccion; //Jul 5/16
  end;

var
  DmListaPrecios: TDmListaPrecios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ListaPreciosEdit, _ConectionDmod;

{$R *.dfm}

procedure TDmListaPrecios.adodsMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ADODtStProveedor.Open;
end;

procedure TDmListaPrecios.adodsMasterAfterPost(DataSet: TDataSet);
var
  DAtosNuevos, DVI, DNI, obs:String;
  i:integer;
begin
  inherited;
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
  Accion:='';
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
  fDatosViejos:='ID:'+dataset.FieldByName('IdProducto').AsString +'-PU:'+dataset.FieldByName('PrecioUnitario').AsString+
  'Id1:'+ dataset.FieldByName('Identificador1').AsString +'Id2'+dataset.FieldByName('Identificador2').AsString
  +'ID3:'+dataset.FieldByName('Identificador3').AsString+ 'Desc:'+dataset.FieldByName('Descripcion').AsString+'IDTP:'+
  dataset.FieldByName('IdProductoTipo').AsString +'IdUM:'+dataset.FieldByName('IdUnidadMedida').AsString
  +'IdPE:'+dataset.FieldByName('IdProductoEstatus').AsString;
  Accion:='Edita';
end;

procedure TDmListaPrecios.adodsMasterBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   Accion:='Inserta';
   fDatosViejos:='Nuevo';
end;

procedure TDmListaPrecios.ADODtStBitacoraNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FechaReg').AsDateTime:=Now;
  DataSet.FieldByName('IdUsuario').AsInteger:=_dmConection.IdUsuario;
  DataSet.FieldByName('Sistema').AsString:='SISMAS';
end;

procedure TDmListaPrecios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridEditForm:= TfrmListaPrecioEdit.Create(Self);
  gGridEditForm.DataSet := adodsMaster;
  ADODtStBitacora.open;
end;

procedure TDmListaPrecios.DataModuleDestroy(Sender: TObject);
begin
  inherited;
   ADODtStProveedor.close;
end;

end.
