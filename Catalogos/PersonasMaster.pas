unit PersonasMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _StandarMDFormEdit, cxStyles, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, PersonasDM, DomiciliosDM, TelefonosDM, EmailDM;

type
  TfrmPersonasMaster = class(T_frmStandarMDFormEdit)
    ToolButton1: TToolButton;
    actPersona: TAction;
    actDomicilio: TAction;
    actTelefono: TAction;
    actEmail: TAction;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    dmPersonas : TdmPersonas;
    dmDomicilios : TdmDomicilios;
    dmTelefonos : TdmTelefonos;
    dmEmails : TdmEmail;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmPersonasMaster.FormCreate(Sender: TObject);
begin
  inherited;
//  dmPersonas := TdmPersonas.Create(Self);
  //dmDomicilios := TdmDomicilios.Create(nil);
//  dmTelefonos := TdmTelefonos.Create(nil);
//  dmEmails := TdmEmail.Create(nil);
//  dmPersonas.ShowModule(pnlMaster,'');
end;

procedure TfrmPersonasMaster.FormDestroy(Sender: TObject);
begin
  inherited;
//  FreeAndNil(dmPersonas);
//  FreeAndNil(dmDomicilios);
//  FreeAndNil(dmTelefonos);
//  FreeAndNil(dmEmails);
end;

end.
