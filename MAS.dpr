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
  ListaProductosForm in 'Catalogos\ListaProductosForm.pas' {frmListaProductos},
  DocumentosDM in 'Catalogos\DocumentosDM.pas' {dmDocumentos: TDataModule},
  DocumentosEdit in 'Catalogos\DocumentosEdit.pas' {frmDocumentosEdit},
  DocumentosForm in 'Catalogos\DocumentosForm.pas' {frmDocumentos},
  ProductosFotosDM in 'Catalogos\ProductosFotosDM.pas' {dmProductosFotos: TDataModule},
  ProductosFotosForm in 'Catalogos\ProductosFotosForm.pas' {FrmProductosFotos},
  OrdenesSalidasDM in 'Procesos\OrdenesSalidasDM.pas' {DMOrdenesSalidas: TDataModule},
  OrdenesSalidaFormGrid in 'Procesos\OrdenesSalidaFormGrid.pas' {FrmOrdenesSalidaGrid},
  GeneraOrdenSalida in 'Procesos\GeneraOrdenSalida.pas' {FrmGeneraOrdenSalida},
  OrdenesSalidaForm in 'Procesos\OrdenesSalidaForm.pas' {FrmOrdenesSalida},
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
  rptVentasUnidadesForm in 'Reportes\rptVentasUnidadesForm.pas' {frmrptVentasUnidades},
  DocumentosEntradasDM in 'Procesos\DocumentosEntradasDM.pas' {dmDocumentosEntradas: TDataModule},
  DocumentosEntradasForm in 'Procesos\DocumentosEntradasForm.pas' {frmDocumentosEntradas},
  DocumentosEntradasGrid in 'Procesos\DocumentosEntradasGrid.pas' {frmDocumentosEntradasGrid},
  DocumentosEntradasDetalleGrid in 'Procesos\DocumentosEntradasDetalleGrid.pas' {frmDocumentosEntradasDetalleGrid},
  DocumentosEntradasDetalleForm in 'Procesos\DocumentosEntradasDetalleForm.pas' {frmDocumentosEntradasDetalle},
  UsuariosDM in 'Catalogos\UsuariosDM.pas' {dmUsuarios: TDataModule},
  UsuariosEdit in 'Catalogos\UsuariosEdit.pas' {frmUsuariosEdit},
  UsuariosForm in 'Catalogos\UsuariosForm.pas' {frmUsuarios},
  ConfiguracionDM in 'Catalogos\ConfiguracionDM.pas' {dmConfiguracion: TDataModule},
  ConfiguracionesEdit in 'Catalogos\ConfiguracionesEdit.pas' {frmConfiguracionesEdit},
  ConfiguracionesForm in 'Catalogos\ConfiguracionesForm.pas' {frmConfiguraciones},
  BackorderEntradasDM in 'Procesos\BackorderEntradasDM.pas' {dmBackorderEntradas: TDataModule},
  BackorderEntradasForm in 'Procesos\BackorderEntradasForm.pas' {frmBackorderEntradas},
  BackorderEntradasDetallesForm in 'Procesos\BackorderEntradasDetallesForm.pas' {frmBackorderEntradasDetalles},
  FacturasDM in 'Procesos\FacturasDM.pas' {DMFacturas: TDataModule},
  UDMEnvioMail in 'Procesos\UDMEnvioMail.pas' {DMEnvioMails: TDataModule},
  PagosDM in 'Procesos\PagosDM.pas' {dmPagos: TDataModule},
  PagosEdit in 'Procesos\PagosEdit.pas' {FrmPagosEdt},
  ProductosFotosMostrar in 'Catalogos\ProductosFotosMostrar.pas' {FrmMostrarForosProd},
  PagosFormGrid in 'Procesos\PagosFormGrid.pas' {FrmPagosGrid},
  AplicacionPagos in 'Procesos\AplicacionPagos.pas' {FrmAplicacionPago},
  AplicacionesConsultaInd in 'Procesos\AplicacionesConsultaInd.pas' {FrmAplicacionesConsultaInd},
  AplicacionesConsultaDM in 'Procesos\AplicacionesConsultaDM.pas' {dmAplicacionesConsulta: TDataModule},
  AplicacionesConsultaGrid in 'Procesos\AplicacionesConsultaGrid.pas' {FrmAplicacionesConsultaGrid},
  OrdenesEntradasDM in 'Procesos\OrdenesEntradasDM.pas' {dmOrdenesEntradas: TDataModule},
  OrdenesEntradasForm in 'Procesos\OrdenesEntradasForm.pas' {frmOrdenesEntradas},
  OrdenesEntradasGrid in 'Procesos\OrdenesEntradasGrid.pas' {frmOrdenesEntradasGrid},
  OrdenesEntradasItemsForm in 'Procesos\OrdenesEntradasItemsForm.pas' {frmOrdenesEntradasItems},
  OrdenesEntradasItemsGrid in 'Procesos\OrdenesEntradasItemsGrid.pas' {frmOrdenesEntradasItemsGrid},
  OrdenesEntradasSeleccionGrid in 'Procesos\OrdenesEntradasSeleccionGrid.pas' {frmOrdenesEntradasSeleccionGrid},
  OrdenesEntradasCostosDM in 'Procesos\OrdenesEntradasCostosDM.pas' {dmOrdenesEntradasCostos: TDataModule},
  ProductosProveedoresEdit in 'Catalogos\ProductosProveedoresEdit.pas' {frmProductosProveedoresEdit},
  ProductosProveedoresForm in 'Catalogos\ProductosProveedoresForm.pas' {frmProductosProveedores},
  rptAntiguedadSaldosForm in 'Reportes\rptAntiguedadSaldosForm.pas' {frmRptAntiguedadSaldos},
  rptAntiguedadSaldosDM in 'Reportes\rptAntiguedadSaldosDM.pas' {dmRptAntiguedadSaldos: TDataModule},
  rptCostoInventarioForm in 'Reportes\rptCostoInventarioForm.pas' {rptCostoInventario},
  rptCostoInventarioDM in 'Reportes\rptCostoInventarioDM.pas' {DMrptCostoInventario: TDataModule},
  UsuariosPerfilesDM in 'Catalogos\UsuariosPerfilesDM.pas' {DmPerfilesUsuario: TDataModule},
  UsuariosPerfilesEdit in 'Catalogos\UsuariosPerfilesEdit.pas' {frmUsuariosPerfiles},
  UsuariosPerfilesForm in 'Catalogos\UsuariosPerfilesForm.pas' {frmUsuariosPerfilesGrid},
  ContactosEdit in 'Catalogos\ContactosEdit.pas' {FrmContactosEdit},
  PaqueteriasDM in 'Catalogos\PaqueteriasDM.pas' {DMPaqueterias: TDataModule},
  PaqueteriasEdit in 'Catalogos\PaqueteriasEdit.pas' {frmPaqueteriasEdit},
  PaqueteriasForm in 'Catalogos\PaqueteriasForm.pas' {frmPaqueteriasGrid},
  ProductosAplicacionesEdit in 'Catalogos\ProductosAplicacionesEdit.pas' {frmProductosAplicacionEdit},
  ProductosAplicacionesForm in 'Catalogos\ProductosAplicacionesForm.pas' {frmProductosAplicaciones},
  ListaClientesForm in 'Catalogos\ListaClientesForm.pas' {FrmBuscaCliente},
  CotizacionesArchivosDM in 'Procesos\CotizacionesArchivosDM.pas' {dmCotizacionesArchivos: TDataModule},
  CotizacionesArchivosForm in 'Procesos\CotizacionesArchivosForm.pas' {frmCotizacionesArchivos},
  ListaEtiquetasGRD in 'Procesos\ListaEtiquetasGRD.pas' {FrmListaEtiquetas},
  OrdenesEntregasDM in 'Procesos\OrdenesEntregasDM.pas' {dmOrdenesEntregas: TDataModule},
  OrdenesEntregasEdit in 'Procesos\OrdenesEntregasEdit.pas' {frmOrdenesEntregasEdit},
  OrdenesEntregasGrid in 'Procesos\OrdenesEntregasGrid.pas' {frmOrdenesEntregasGrid},
  PagosConfirmaDesaplica in 'Procesos\PagosConfirmaDesaplica.pas' {FrmConfirmaDesaplicacion},
  ProductosXEspacioDm in 'Procesos\ProductosXEspacioDm.pas' {dmProductosXEspacio: TDataModule},
  ProductosXEspacioForm in 'Procesos\ProductosXEspacioForm.pas' {frmProductosXEspacio},
  ProductosXEspacioGrid in 'Procesos\ProductosXEspacioGrid.pas' {frmProductosXEspacioGrid},
  DevolucionesDM in 'Procesos\DevolucionesDM.pas' {dmDevoluciones: TDataModule},
  DevolucionesEdit in 'Procesos\DevolucionesEdit.pas' {FrmDevoluciones},
  DevolucionesForm in 'Procesos\DevolucionesForm.pas' {FrmDevolucionesGrid},
  DevolucionesItemsEdit in 'Procesos\DevolucionesItemsEdit.pas' {FrmDevolucionesItems},
  DevolucionesItemsForm in 'Procesos\DevolucionesItemsForm.pas' {FrmDevolucionesItemsGrid},
  ListaItemsParaDevolucion in 'Catalogos\ListaItemsParaDevolucion.pas' {FrmSeleccionItemsDevolucion},
  InventarioDM in 'Procesos\InventarioDM.pas' {dmInventario: TDataModule},
  InventarioEdit in 'Procesos\InventarioEdit.pas' {frmInventarioEdit},
  InventarioGrid in 'Procesos\InventarioGrid.pas' {FrmInventarioGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(T_dmConection, _dmConection);
  Application.CreateForm(T_frmMain, _frmMain);
  Application.CreateForm(T_frmMainRibbon, _frmMainRibbon);
  Application.CreateForm(T_frmProgress, _frmProgress);
  Application.CreateForm(TdmConfiguracion, dmConfiguracion);
  Application.Run;
end.
