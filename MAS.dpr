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
  MainForm in 'MainForm.pas' {frmMain},
  BancosDM in 'Catalogos\BancosDM.pas' {dmBancos: TDataModule},
  MonedasDM in 'Catalogos\MonedasDM.pas' {dmMonedas: TDataModule},
  UbicacionesDM in 'Catalogos\UbicacionesDM.pas' {dmUbicaciones: TDataModule},
  UnidadMedidaDM in 'Catalogos\UnidadMedidaDM.pas' {dmUnidadMedida: TDataModule},
  MonedasCotizacionesDM in 'Catalogos\MonedasCotizacionesDM.pas' {dmMonedasCotizaciones: TDataModule},
  PersonasDM in 'Catalogos\PersonasDM.pas' {dmPersonas: TDataModule},
  MetodosPagosDM in 'Catalogos\MetodosPagosDM.pas' {dmMetodosPagos: TDataModule},
  EmailDM in 'Catalogos\EmailDM.pas' {dmEmail: TDataModule},
  TelefonosDM in 'Catalogos\TelefonosDM.pas' {dmTelefonos: TDataModule},
  PersonasDomiciliosDM in 'Catalogos\PersonasDomiciliosDM.pas' {dmPersonasDomicilios: TDataModule},
  ProductosDM in 'Catalogos\ProductosDM.pas' {dmProductos: TDataModule},
  BancosForm in 'Catalogos\BancosForm.pas' {frmBancos},
  EmailForm in 'Catalogos\EmailForm.pas' {frmEmail},
  MetodosPagosForm in 'Catalogos\MetodosPagosForm.pas' {frmMetodosPagos},
  MonedasCotizacionesForm in 'Catalogos\MonedasCotizacionesForm.pas' {frmMonedasCotizaciones},
  MonedasForm in 'Catalogos\MonedasForm.pas' {frmMonedas},
  PersonasForm in 'Catalogos\PersonasForm.pas' {frmPersonas},
  UnidadMedidaForm in 'Catalogos\UnidadMedidaForm.pas' {frmUnidadMedida},
  UbicacionesForm in 'Catalogos\UbicacionesForm.pas' {frmUbicaciones},
  EstadosForm in 'Catalogos\EstadosForm.pas' {frmEstados},
  MunicipiosForm in 'Catalogos\MunicipiosForm.pas' {frmMunicipios},
  PoblacionesForm in 'Catalogos\PoblacionesForm.pas' {frmPoblaciones},
  PersonasDomiciliosForm in 'Catalogos\PersonasDomiciliosForm.pas' {frmPersonasDomicilios},
  TelefonosForm in 'Catalogos\TelefonosForm.pas' {frmTelefonos},
  ProductosForm in 'Catalogos\ProductosForm.pas' {frmProductos},
  DomiciliosDM in 'Catalogos\DomiciliosDM.pas' {dmDomicilios: TDataModule},
  DomiciliosForm in 'Catalogos\DomiciliosForm.pas' {frmDomicilios},
  _StandarMasterDetailForm in '..\Standard\_StandarMasterDetailForm.pas' {_frmStandarMasterDetail},
  CotizacionesDM in 'Procesos\CotizacionesDM.pas' {dmCotizaciones: TDataModule},
  _StandarMDFormEdit in '..\Standard\_StandarMDFormEdit.pas' {_frmStandarMDFormEdit},
  MonedasEdit in 'Catalogos\MonedasEdit.pas' {frmMonedasEdit},
  BancosEdit in 'Catalogos\BancosEdit.pas' {frmBancosEdit},
  UbicacionesEdit in 'Catalogos\UbicacionesEdit.pas' {frmUbicacionesEdit},
  PoblacionesEdit in 'Catalogos\PoblacionesEdit.pas' {frmPoblacionesEdit},
  EstadosEdit in 'Catalogos\EstadosEdit.pas' {frmEstadosEdit},
  MunicipiosEdit in 'Catalogos\MunicipiosEdit.pas' {frmMunicipiosEdit},
  MonedasCotizacionesEdit in 'Catalogos\MonedasCotizacionesEdit.pas' {frmMonedasCotizacionesEdit},
  UnidadMedidaEdit in 'Catalogos\UnidadMedidaEdit.pas' {frmUnidadMedidaEdit},
  MetodosPagosEdit in 'Catalogos\MetodosPagosEdit.pas' {frmMetodosPagosEdit},
  ProductosEdit in 'Catalogos\ProductosEdit.pas' {frmProductosEdit},
  EmailEdit in 'Catalogos\EmailEdit.pas' {frmEmailEdit},
  TelefonosEdit in 'Catalogos\TelefonosEdit.pas' {frmTelefonosEdit},
  PersonasEdit in 'Catalogos\PersonasEdit.pas' {frmPersonasEdit},
  PersonasDomiciliosEdit in 'Catalogos\PersonasDomiciliosEdit.pas' {frmPersonasDomiciliosEdit},
  PersonasContactosDM in 'Catalogos\PersonasContactosDM.pas' {dmPersonaContactos: TDataModule},
  PersonasContactosEdit in 'Catalogos\PersonasContactosEdit.pas' {frmPersonasContactosEdit},
  PersonasContactosForm in 'Catalogos\PersonasContactosForm.pas' {frmPersonasContactos},
  DomiciliosEdit in 'Catalogos\DomiciliosEdit.pas' {frmDomiciliosEdit},
  CuentasBancariasDM in 'Catalogos\CuentasBancariasDM.pas' {dmCuentasBancarias: TDataModule},
  CuentasBancariasEdit in 'Catalogos\CuentasBancariasEdit.pas' {frmCuentasBancariasEdit},
  CuentasBancariasForm in 'Catalogos\CuentasBancariasForm.pas' {frmCuentasBancarias},
  CotizacionesForm in 'Procesos\CotizacionesForm.pas' {frmCotizaciones},
  CotizacionesFormGrid in 'Procesos\CotizacionesFormGrid.pas' {frmCotizacionesGrid},
  ListaProductosForm in 'Catalogos\ListaProductosForm.pas' {FrmListaProductos},
  DocumentosDM in 'Catalogos\DocumentosDM.pas' {dmDocumentos: TDataModule},
  DocumentosEdit in 'Catalogos\DocumentosEdit.pas' {frmDocumentosEdit},
  DocumentosForm in 'Catalogos\DocumentosForm.pas' {frmDocumentos},
  ProductosFotosDM in 'Catalogos\ProductosFotosDM.pas' {dmProductosFotos: TDataModule},
  ProductosFotosForm in 'Catalogos\ProductosFotosForm.pas' {FrmProductosFotos},
  ProductosFotosEdit in 'Catalogos\ProductosFotosEdit.pas' {FrmProductosFotosEdit},
  OrdenesSalidasDM in 'Procesos\OrdenesSalidasDM.pas' {DMOrdenesSalidas: TDataModule},
  OrdenesSalidaFormGrid in 'Procesos\OrdenesSalidaFormGrid.pas' {FrmOrdenesSalidaGrid},
  GeneraOrdenSalida in 'Procesos\GeneraOrdenSalida.pas' {FrmGeneraOrdenSalida},
  OrdenesSalidaForm in 'Procesos\OrdenesSalidaForm.pas' {FrmOrdenesSalida},
  FacturasDM in 'Procesos\FacturasDM.pas' {DMFacturas: TDataModule},
  FacturasFormEdit in 'Procesos\FacturasFormEdit.pas' {frmFacturasFormEdit},
  FacturasFormGrid in 'Procesos\FacturasFormGrid.pas' {frmFacturasGrid},
  DocComprobanteFiscal in 'Facturar\DocComprobanteFiscal.pas',
  FacturaReglamentacion in 'Facturar\FacturaReglamentacion.pas',
  FacturaTipos in 'Facturar\FacturaTipos.pas',
  VirtualXML in 'Facturar\VirtualXML.pas',
  XMLtoPDFDmod in 'Facturar\XMLtoPDFDmod.pas' {dmodXMLtoPDF: TDataModule},
  _StandarGFormEdit in '..\Standard\_StandarGFormEdit.pas' {_frmStandarGFormEdit},
  _StandarGFormGrid in '..\Standard\_StandarGFormGrid.pas' {_frmStandarGFormGrid},
  PersonasCSDEdit in 'Catalogos\PersonasCSDEdit.pas' {FrmPersonasCSDEdit},
  PersonasCSDForm in 'Catalogos\PersonasCSDForm.pas' {frmPersonasCSDFormGrid},
  PersonasCSDDM in 'Catalogos\PersonasCSDDM.pas' {dmPersonasCSD: TDataModule},
  AlmacenesDM in 'Catalogos\AlmacenesDM.pas' {dmAlmacenes: TDataModule},
  AlmacenesEdit in 'Catalogos\AlmacenesEdit.pas' {frmAlmacenesEdit},
  AlmacenesForm in 'Catalogos\AlmacenesForm.pas' {frmAlmacenes},
  ZonasEdit in 'Catalogos\ZonasEdit.pas' {frmZonasEdit},
  ZonasForm in 'Catalogos\ZonasForm.pas' {frmZonas},
  AnaquelesEdit in 'Catalogos\AnaquelesEdit.pas' {frmAnaquelesEdit},
  AnaquelesForm in 'Catalogos\AnaquelesForm.pas' {frmAnaqueles},
  SeccionesEdit in 'Catalogos\SeccionesEdit.pas' {frmSeccionesEdit},
  SeccionesForm in 'Catalogos\SeccionesForm.pas' {frmSecciones},
  EspaciosEdit in 'Catalogos\EspaciosEdit.pas' {frmEspaciosEdit},
  EspaciosForm in 'Catalogos\EspaciosForm.pas' {frmEspacios},
  ImpresosSalidasDM in 'Procesos\ImpresosSalidasDM.pas' {DMImpresosSalidas: TDataModule},
  rptVentasUnidadesDM in 'Reportes\rptVentasUnidadesDM.pas' {dmrptVentasUnidades: TDataModule},
  rptVentasUnidadesForm in 'Reportes\rptVentasUnidadesForm.pas' {frmrptVentasUnidades};

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
