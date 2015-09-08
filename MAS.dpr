program MAS;

uses
  Vcl.Forms,
  _AboutForm in '..\Standard\_AboutForm.pas' {_frmAbout},
  _ConectionDmod in '..\Standard\_ConectionDmod.pas' {_dmConection: TDataModule},
  _DualListDM in '..\Standard\_DualListDM.pas' {_dmDualList: TDataModule},
  _DualListForm in '..\Standard\_DualListForm.pas' {_frmDualList},
  _EditForm in '..\Standard\_EditForm.pas' {_frmEdit},
  _GridForm in '..\Standard\_GridForm.pas' {_frmGrid},
  _LoginForm in '..\Standard\_LoginForm.pas' {_frmLogin},
  _MainForm in '..\Standard\_MainForm.pas' {_frmMain},
  _MainRibbonForm in '..\Standard\_MainRibbonForm.pas' {_frmMainRibbon},
  _ProgressForm in '..\Standard\_ProgressForm.pas' {_frmProgress},
  _ProviderDMod in '..\Standard\_ProviderDMod.pas' {_dmProvider: TDataModule},
  _ReportDMod in '..\Standard\_ReportDMod.pas' {_dmReport: TDataModule},
  _ReportForm in '..\Standard\_ReportForm.pas' {_frmReport},
  _SplashForm in '..\Standard\_SplashForm.pas' {_frmSplash},
  _StandarDMod in '..\Standard\_StandarDMod.pas' {_dmStandar: TDataModule},
  _StandarForm in '..\Standard\_StandarForm.pas' {_StandarFrm},
  _StandarGridForm in '..\Standard\_StandarGridForm.pas' {_frmStandarGrid},
  _Utils in '..\Standard\_Utils.pas',
  MainForm in 'MainForm.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(T_dmConection, _dmConection);
  Application.CreateForm(T_frmMain, _frmMain);
  Application.CreateForm(T_frmMainRibbon, _frmMainRibbon);
  Application.CreateForm(T_frmProgress, _frmProgress);
  Application.Run;
end.
