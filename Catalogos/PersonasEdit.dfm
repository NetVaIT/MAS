inherited frmPersonasEdit: TfrmPersonasEdit
  Caption = 'frmPersonasEdit'
  ClientWidth = 1046
  KeyPreview = True
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  ExplicitTop = -151
  ExplicitWidth = 1046
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 612
    Width = 1046
    ExplicitTop = 589
    ExplicitWidth = 1046
  end
  inherited splDetail2: TSplitter
    Top = 587
    Width = 1046
    ExplicitTop = 545
    ExplicitWidth = 1046
  end
  inherited splDetail1: TSplitter
    Top = 559
    Width = 1046
    ExplicitTop = 501
    ExplicitWidth = 1046
  end
  inherited pnlClose: TPanel
    Top = 632
    Width = 1046
    Height = 18
    TabOrder = 3
    ExplicitTop = 632
    ExplicitWidth = 1046
    ExplicitHeight = 18
  end
  inherited pnlDetail3: TPanel
    Top = 615
    Width = 1046
    Height = 17
    TabOrder = 1
    ExplicitTop = 592
    ExplicitWidth = 1046
    ExplicitHeight = 17
  end
  inherited pnlDetail2: TPanel
    Top = 590
    Width = 1046
    Height = 22
    ExplicitTop = 571
    ExplicitWidth = 1046
    ExplicitHeight = 22
  end
  inherited pnlDetail1: TPanel
    Top = 562
    Width = 1046
    Height = 25
    TabOrder = 4
    ExplicitLeft = 0
    ExplicitTop = 520
    ExplicitWidth = 1046
    ExplicitHeight = 25
  end
  inherited pcMain: TcxPageControl
    Top = 43
    Width = 1046
    Height = 516
    Properties.HideTabs = False
    OnChange = pcMainChange
    ExplicitTop = 43
    ExplicitWidth = 1046
    ExplicitHeight = 458
    ClientRectBottom = 514
    ClientRectLeft = 2
    ClientRectRight = 1044
    ClientRectTop = 28
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1042
      ExplicitHeight = 428
      inherited cxScrollBox1: TcxScrollBox
        Width = 1042
        Height = 486
        ExplicitWidth = 1042
        ExplicitHeight = 428
        inherited tbarData: TToolBar
          Width = 1040
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 1040
        end
        inherited pnlMaster: TPanel
          Width = 1040
          Height = 459
          ExplicitLeft = 0
          ExplicitTop = 25
          ExplicitWidth = 1040
          ExplicitHeight = 401
          object pnlPersona: TPanel
            Left = 0
            Top = 0
            Width = 1040
            Height = 49
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              Left = 200
              Top = 9
              Width = 32
              Height = 13
              Caption = 'R.F.C.'
            end
            object Label2: TLabel
              Left = 16
              Top = 8
              Width = 20
              Height = 13
              Caption = 'Tipo'
            end
            object lblCURP: TLabel
              Left = 344
              Top = 8
              Width = 43
              Height = 13
              Caption = 'C.U.R.P.'
            end
            object Label16: TLabel
              Left = 551
              Top = 6
              Width = 39
              Height = 13
              Caption = 'Estatus '
              FocusControl = DBLkpCmbBxEstatus
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 196
              Top = 23
              DataBinding.DataField = 'RFC'
              DataBinding.DataSource = DataSource
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 121
            end
            object cmbTipoPersona: TcxDBLookupComboBox
              Left = 13
              Top = 23
              DataBinding.DataField = 'PersonaTipo'
              DataBinding.DataSource = DataSource
              Properties.KeyFieldNames = 'IdPersonaTipo'
              Properties.ListColumns = <
                item
                  FieldName = 'Descripcion'
                end>
              Properties.OnChange = cmbTipoPersonaPropertiesChange
              TabOrder = 0
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 161
            end
            object cxDBEditCURP: TcxDBMaskEdit
              Left = 340
              Top = 23
              DataBinding.DataField = 'CURP'
              DataBinding.DataSource = DataSource
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 169
            end
            object btnWeb: TButton
              Left = 508
              Top = 23
              Width = 19
              Height = 19
              Caption = '...'
              TabOrder = 3
              TabStop = False
              OnClick = btnWebClick
            end
            object DBLkpCmbBxEstatus: TDBLookupComboBox
              Left = 547
              Top = 23
              Width = 154
              Height = 21
              Color = clAqua
              DataField = 'EstatusPersona'
              DataSource = DataSource
              TabOrder = 4
              TabStop = False
              OnKeyDown = cmbTipoPersonaKeyDown
            end
            object cxDBLkupCBxRol: TcxDBLookupComboBox
              Left = 730
              Top = 23
              TabStop = False
              DataBinding.DataField = 'Rol'
              DataBinding.DataSource = DataSource
              Properties.KeyFieldNames = 'IdPersonaTipo'
              Properties.ListColumns = <
                item
                  FieldName = 'Descripcion'
                end>
              Properties.ReadOnly = True
              Properties.OnChange = cmbTipoPersonaPropertiesChange
              TabOrder = 5
              Width = 161
            end
            object cxDBLabel2: TcxDBLabel
              Left = 730
              Top = 23
              DataBinding.DataField = 'Rol'
              DataBinding.DataSource = DataSource
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Height = 21
              Width = 161
              AnchorY = 34
            end
          end
          object pnlPersonaMoral: TPanel
            Left = 0
            Top = 49
            Width = 1040
            Height = 93
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label3: TLabel
              Left = 16
              Top = 8
              Width = 60
              Height = 13
              Caption = 'Razon Social'
              FocusControl = edtRazonSocial
            end
            object Label11: TLabel
              Left = 17
              Top = 51
              Width = 19
              Height = 13
              Caption = 'Pais'
            end
            object edtRazonSocial: TcxDBTextEdit
              Left = 16
              Top = 24
              DataBinding.DataField = 'RazonSocial'
              DataBinding.DataSource = DataSource
              TabOrder = 0
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 585
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 16
              Top = 66
              DataBinding.DataField = 'Pais'
              DataBinding.DataSource = DataSource
              Properties.ListColumns = <>
              TabOrder = 1
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 267
            end
          end
          object pnlPersonaFisica: TPanel
            Left = 0
            Top = 142
            Width = 1040
            Height = 211
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            Visible = False
            ExplicitLeft = -3
            ExplicitTop = 174
            object Label5: TLabel
              Left = 16
              Top = 2
              Width = 37
              Height = 13
              Caption = 'Nombre'
              FocusControl = edtNombre
            end
            object Label6: TLabel
              Left = 16
              Top = 42
              Width = 78
              Height = 13
              Caption = 'Apellido Paterno'
              FocusControl = edtAPaterno
            end
            object Label7: TLabel
              Left = 319
              Top = 42
              Width = 80
              Height = 13
              Caption = 'Apellido Materno'
              FocusControl = edtAMaterno
            end
            object Label8: TLabel
              Left = 16
              Top = 124
              Width = 99
              Height = 13
              Caption = 'Fecha de Nacimiento'
              FocusControl = cxDBDateEdit1
            end
            object Label9: TLabel
              Left = 16
              Top = 165
              Width = 24
              Height = 13
              Caption = 'Sexo'
            end
            object Label10: TLabel
              Left = 161
              Top = 165
              Width = 55
              Height = 13
              Caption = 'Estado Civil'
            end
            object Label12: TLabel
              Left = 161
              Top = 124
              Width = 97
              Height = 13
              Caption = 'Lugar de Nacimiento'
              FocusControl = cxDBTextEdit2
            end
            object Label14: TLabel
              Left = 16
              Top = 83
              Width = 85
              Height = 13
              Caption = 'Nombre Completo'
              FocusControl = cxDBTxtEdtNombreComp
            end
            object edtNombre: TcxDBTextEdit
              Left = 16
              Top = 20
              DataBinding.DataField = 'Nombre'
              DataBinding.DataSource = DataSource
              Properties.OnEditValueChanged = edtNombrePropertiesEditValueChanged
              TabOrder = 0
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 282
            end
            object edtAPaterno: TcxDBTextEdit
              Left = 16
              Top = 58
              DataBinding.DataField = 'ApellidoPaterno'
              DataBinding.DataSource = DataSource
              Properties.OnEditValueChanged = edtNombrePropertiesEditValueChanged
              TabOrder = 1
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 282
            end
            object edtAMaterno: TcxDBTextEdit
              Left = 319
              Top = 58
              DataBinding.DataField = 'ApellidoMaterno'
              DataBinding.DataSource = DataSource
              Properties.OnEditValueChanged = edtNombrePropertiesEditValueChanged
              TabOrder = 2
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 282
            end
            object cxDBDateEdit1: TcxDBDateEdit
              Left = 16
              Top = 140
              DataBinding.DataField = 'FechaNacimiento'
              DataBinding.DataSource = DataSource
              TabOrder = 4
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 121
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox
              Left = 16
              Top = 181
              DataBinding.DataField = 'Sexo'
              DataBinding.DataSource = DataSource
              Properties.KeyFieldNames = 'IdSexo'
              Properties.ListColumns = <
                item
                  FieldName = 'Descripcion'
                end>
              TabOrder = 6
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 121
            end
            object cxDBLookupComboBox4: TcxDBLookupComboBox
              Left = 161
              Top = 184
              DataBinding.DataField = 'EstadoCivil'
              DataBinding.DataSource = DataSource
              Properties.KeyFieldNames = 'IdEstadoCivil'
              Properties.ListColumns = <
                item
                  FieldName = 'Descripcion'
                end>
              TabOrder = 7
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 137
            end
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 161
              Top = 140
              DataBinding.DataField = 'LugarNacimiento'
              DataBinding.DataSource = DataSource
              TabOrder = 5
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 440
            end
            object cxDBTxtEdtNombreComp: TcxDBTextEdit
              Left = 16
              Top = 99
              TabStop = False
              DataBinding.DataField = 'RazonSocial'
              DataBinding.DataSource = DataSource
              TabOrder = 3
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 586
            end
          end
          object PnlCliente: TPanel
            Left = 0
            Top = 353
            Width = 1040
            Height = 106
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            Visible = False
            ExplicitHeight = 75
            object LblCteCte: TLabel
              Left = 223
              Top = 6
              Width = 71
              Height = 13
              Caption = 'Cuenta Cliente'
              FocusControl = cxDBEdtCtaCliente
            end
            object Label13: TLabel
              Left = 17
              Top = 7
              Width = 99
              Height = 13
              Caption = 'Metodo Pago Cliente'
              FocusControl = cxDBEdtCtaCliente
            end
            object Label15: TLabel
              Left = 493
              Top = 6
              Width = 62
              Height = 13
              Caption = 'Saldo Cliente'
              FocusControl = cxDBEdtCtaCliente
            end
            object Label4: TLabel
              Left = 364
              Top = 6
              Width = 94
              Height = 13
              Caption = 'D'#237'as Cr'#233'dito Cliente'
              FocusControl = cxDBTextEdit3
            end
            object cxDBEdtCtaCliente: TcxDBTextEdit
              Left = 223
              Top = 22
              DataBinding.DataField = 'NumCtaPagoCliente'
              DataBinding.DataSource = DataSource
              TabOrder = 1
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 119
            end
            object cxDBLkupCBxMetodoPago: TcxDBLookupComboBox
              Left = 17
              Top = 24
              DataBinding.DataField = 'IdMetodoPagoCliente'
              DataBinding.DataSource = DataSource
              Properties.KeyFieldNames = 'IdMetodoPago'
              Properties.ListColumns = <
                item
                  FieldName = 'Descripcion'
                end>
              Properties.ListSource = DSMetodoPago
              Properties.OnEditValueChanged = cxDBLkupCBxMetodoPagoPropertiesChange
              TabOrder = 0
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 186
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 364
              Top = 22
              DataBinding.DataField = 'DiasCreditoCliente'
              DataBinding.DataSource = DataSource
              TabOrder = 2
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 111
            end
            object cxDBLabel3: TcxDBLabel
              Left = 493
              Top = 19
              DataBinding.DataField = 'SaldoCliente'
              DataBinding.DataSource = DataSource
              Properties.Alignment.Horz = taRightJustify
              Height = 25
              Width = 109
              AnchorX = 602
            end
          end
          object pnlproveedor: TPanel
            Left = 0
            Top = 353
            Width = 1040
            Height = 106
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            Visible = False
            ExplicitTop = 416
            ExplicitHeight = 40
            object Label17: TLabel
              Left = 17
              Top = 0
              Width = 80
              Height = 13
              Caption = 'Clave Proveedor'
              FocusControl = cxDBTxtEdtClavePrv
            end
            object Label18: TLabel
              Left = 154
              Top = 0
              Width = 41
              Height = 13
              Caption = 'Moneda '
              FocusControl = cxDBEdtCtaCliente
            end
            object cxDBTxtEdtClavePrv: TcxDBTextEdit
              Left = 16
              Top = 15
              DataBinding.DataField = 'Identificador'
              DataBinding.DataSource = DataSource
              TabOrder = 0
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 111
            end
            object cxDBLkpCmbBxMoneda: TcxDBLookupComboBox
              Left = 154
              Top = 15
              DataBinding.DataField = 'MonedaPrv'
              DataBinding.DataSource = DataSource
              Properties.KeyFieldNames = 'IdMetodoPago'
              Properties.ListColumns = <
                item
                  FieldName = 'Descripcion'
                end>
              Properties.ListSource = DSMetodoPago
              Properties.OnEditValueChanged = cxDBLkupCBxMetodoPagoPropertiesChange
              TabOrder = 1
              OnKeyDown = cmbTipoPersonaKeyDown
              Width = 186
            end
          end
        end
      end
    end
    object tsDomicilio: TcxTabSheet
      Caption = 'Domicilio'
      ImageIndex = 1
      ExplicitHeight = 428
    end
    object tsTelefono: TcxTabSheet
      Caption = 'Telefono'
      ImageIndex = 2
      ExplicitHeight = 428
      object cxDBLblDomicilio: TcxDBLabel
        Left = 0
        Top = 0
        Align = alTop
        DataBinding.DataField = 'Domicilio2'
        DataBinding.DataSource = dmPersonasDomicilios.dsmaster
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 1042
      end
    end
    object tsCorreo: TcxTabSheet
      Caption = 'Correo'
      ImageIndex = 3
      ExplicitHeight = 428
      object cxDBLabel4: TcxDBLabel
        Left = 0
        Top = 0
        Align = alTop
        DataBinding.DataField = 'Domicilio2'
        DataBinding.DataSource = dmPersonasDomicilios.dsmaster
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 1042
      end
    end
    object tsContactos: TcxTabSheet
      Caption = 'Contactos'
      ImageIndex = 4
      ExplicitHeight = 428
      object cxDBLabel5: TcxDBLabel
        Left = 0
        Top = 0
        Align = alTop
        DataBinding.DataField = 'Domicilio2'
        DataBinding.DataSource = dmPersonasDomicilios.dsmaster
        ParentFont = False
        Style.BorderStyle = ebsNone
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Height = 21
        Width = 1042
      end
    end
    object tsCuentasBancarias: TcxTabSheet
      Caption = 'Cuentas Bancarias'
      ImageIndex = 5
      ExplicitHeight = 428
    end
    object TSCertificadosCSD: TcxTabSheet
      Caption = 'Certificados CSD'
      ImageIndex = 6
      ExplicitHeight = 428
    end
  end
  object cxDBLabel1: TcxDBLabel [8]
    Left = 0
    Top = 22
    Align = alTop
    DataBinding.DataField = 'RazonSocial'
    DataBinding.DataSource = DataSource
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Height = 21
    Width = 1046
  end
  object PnlTitulo: TPanel [9]
    Left = 0
    Top = 0
    Width = 1046
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    Personas'
    Color = 5553385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
  end
  inherited DataSource: TDataSource
    DataSet = dmPersonas.adodsMaster
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
  end
  inherited ilPageControl: TImageList
    Bitmap = {
      494C010102000400A40110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C96A5008C8E8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFF7F700FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFE7E700FFE7
      E700FFDFDE00FFDFDE00FFD7AD0000000000FF9E0000FFF7F700FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFE7E700FFEF
      EF002979FF006BD7FF00ADAEAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFDFDE00FFDF
      DE00FFD7D600FFD7D600FFDFDE0000000000FF9E0000FFEFEF00FFEFEF00FFEF
      EF00FFEFEF00FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700EFDFDE003179
      FF006BD7FF00398EFF00EFDFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFEFEF00FFE7E700FFE7E700FFDF
      DE00FFDFDE00FFD7D600FFDFDE0000000000FF9E0000FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700F7EFEF008C8E8C0084868C00ADA6AD008C8E8C007BA6
      B500398EFF00F7DFE700FFDFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFF7F700FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFF7F700FFEFEF00FFEFEF00FFE7E700FFE7
      E700FFDFDE00FFDFDE00FFDFDE0000000000FF9E0000FFF7F700FFFFFF00FFFF
      FF00FFFFFF00DEDFDE00E7C79400F7CF9400F7CF9C00F7CF8C0063616B009496
      9400EFDFE700FFDFDE00FFDFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7E700FFE7
      E700FFDFDE00FFDFDE00FFDFDE0000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5A69400F7D7A500F7D7A500F7D79C00EFCF8C00F7CF9400C6B6
      BD00FFDFDE00FFDFDE00FFDFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFEFEF00FFE7
      E700FFDFDE00FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7DFAD00F7E7BD00F7E7C600F7DFAD00F7D79C00F7D7A5008C8E
      9400FFDFDE00FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DECFAD00FFF7DE00FFF7E700F7EFC600F7DFAD00F7D7A5009C96
      9C00FFE7E700FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A5A6AD00FFFFEF00FFFFEF00FFEFCE00F7DFAD00E7CF9C00FFEF
      EF00FFE7E700FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A5A6A500E7DFBD00FFEFBD00B5A69400E7D7DE00FFE7
      E700FFE7E700FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFEF00FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E70000000000FF9E0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDFDE00FFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E000000000000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9E0000EF860000EF860000EF86
      0000EF860000EF860000EF860000EF860000EF860000EF860000EF860000EF86
      0000EF860000EF860000F796000000000000FF9E0000EF860000EF860000EF86
      0000EF860000EF860000EF860000EF860000EF860000EF860000EF860000EF86
      0000EF860000EF860000F7960000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E00000000000000000000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E0000FF9E
      0000FF9E0000FF9E0000FF9E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFF900000000
      0001000100000000000100010000000000010001000000000001000100000000
      0001000100000000000100010000000000010001000000000001000100000000
      0001000100000000000100010000000000010001000000000001000100000000
      8001800100000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  inherited ActionList: TActionList
    object ActEjecutaconsulta: TAction
      Caption = 'ActEjecutaconsulta'
    end
  end
  inherited ilAction: TImageList
    Bitmap = {
      494C01010C000E00C80110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F906F9F9
      F906F8F8F807F8F8F807F9F9F906F9F9F906F8F8F807F8F8F807F9F9F906F8F8
      F807F8F8F807F9F9F90600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC339B9B9B648B8B
      8B749D9D9D62A6A6A659989898678E8E8E71A5A5A55AA4A4A45B898989769F9F
      9F60A5A5A55A9C9C9C63CDCDCD32000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000008486840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000000000000000000000000000000000C6C7C6000000
      00000086840000000000000000000000000000000000B1B1B14EBABABA459292
      926DC4C4C43BDBDBDB24B7B7B7489B9B9B64DBDBDB24D7D7D7288D8D8D72CACA
      CA35DBDBDB24B9B9B946B1B1B14E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000000000000000000000000000000000C6C7C6000000
      00000086840000000000000000000000000000000000AEAEAE519C9C9C637C7C
      7C83A5A5A55AB8B8B8479A9A9A658383837CB7B7B748B4B4B44B77777788AAAA
      AA55B7B7B7489C9C9C63AEAEAE51000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000000000000000000000000000000000000000000000
      00000086840000000000000000000000000000000000B0B0B04FABABAB548888
      8877B4B4B44BC9C9C936A8A8A8578F8F8F70C9C9C936C5C5C53A8282827DBABA
      BA45C9C9C936ABABAB54B0B0B04F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008486
      8400000000008486840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000868400008684000086840000868400008684000086
      84000086840000000000000000000000000000000000B0B0B04FB1B1B14E8C8C
      8C73BBBBBB44D0D0D02FAEAEAE519494946BD0D0D02FCCCCCC3387878778C1C1
      C13ED0D0D02FB1B1B14EB0B0B04F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008684000086840000000000000000000000000000000000000000000086
      84000086840000000000000000000000000000000000AEAEAE519D9D9D627C7C
      7C83A5A5A55AB9B9B9469A9A9A658383837CB8B8B847B5B5B54A78787887ABAB
      AB54B8B8B8479C9C9C63AEAEAE51000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000086840000000000C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6000000
      00000086840000000000000000000000000000000000B2B2B24DC2C2C23D9999
      9966CBCBCB34E3E3E31CBEBEBE41A2A2A25DE3E3E31CDFDFDF209393936CD2D2
      D22DE3E3E31CC1C1C13EB2B2B24D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008486840000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000086840000000000C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6000000
      00000086840000000000000000000000000000000000ADADAD52989898677878
      7887A0A0A05FB3B3B34C969696697E7E7E81B0B0B04FADADAD527373738CA5A5
      A55AB2B2B24D98989867ADADAD52000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008486
      8400000000000000000084868400000000008486840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000086840000000000C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6000000
      00000000000000000000000000000000000000000000B3B3B34CC8C8C8379D9D
      9D62CFCFCF30E7E7E718C4C4C43B6B6B6B944A4A4AB5515151AE79797986D7D7
      D728E6E6E619C4C4C43BB3B3B34C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      00000086840000000000C6C7C600C6C7C600C6C7C600C6C7C600C6C7C6000000
      0000C6C7C60000000000000000000000000000000000A7A7A7586363639C5858
      58A79B9B9B64ADADAD529191916E6464649B6D6D6D926F6F6F906464649BA0A0
      A05FACACAC539292926DADADAD52000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008486840000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999966000000FF2222
      22DDD4D4D42BE9E9E916C2C2C23DA6A6A659ECECEC13E8E8E81796969669D7D7
      D728E8E8E817C5C5C53AB2B2B24D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C43B555555AA6161
      619E9F9F9F60A7A7A758999999668F8F8F70A7A7A758A5A5A55A8A8A8A75A1A1
      A15EA7A7A7589D9D9D62CDCDCD32000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD02FBFB
      FB04F8F8F807F8F8F807F9F9F906F9F9F906F8F8F807F8F8F807F9F9F906F8F8
      F807F8F8F807F9F9F90600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008486840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008486840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848684000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008486840000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684008486840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848684008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008486840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848684000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008486840000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848684000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008486840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084868400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084868400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848684000000000000000000000000000000000000000000000000008486
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFF7EFFFFFFFFFFFFBFFFC003
      FFFFFFFFF0038001FFFFFC7FE0038001F3E7F0FFE0038001F1C7F1FFE0038001
      F88FE3FFE0038001FC1FE7FF20038001FE3FE707E0028001FC1FE387E0038001
      F88FE107E0038001F1C7F007E0038001F3E7F837E0038001FFFFFFFFFFFF8001
      FFFFFFFFBF7DC003FFFFFFFF7F7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFBFFFC7FFFFFFFFFF1FF
      FC7FFFFFE007E0FFE00FE007F00FC47FE00FE007F81FCE3FE00FE007FC3FFF1F
      FC7FFFFFFE7FFF8FFC7FFFFFFFFFFFC7FC7FFFFFFFFFFFE7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7FF9FF9FFE7E7
      E787FE1FF87FE1E7E607F81FF81FE067E007F01FF80FE007E607F81FF81FE067
      E787FE1FF87FE1E7E7E7FF9FF9FFE7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  object DSMetodoPago: TDataSource
    DataSet = dmPersonas.ADOdsMetodoPago
    Left = 672
    Top = 392
  end
end
