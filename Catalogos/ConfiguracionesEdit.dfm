inherited frmConfiguracionesEdit: TfrmConfiguracionesEdit
  Caption = 'Configuraci'#243'n'
  ClientHeight = 555
  ClientWidth = 378
  ExplicitWidth = 384
  ExplicitHeight = 583
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 378
    Height = 514
    ExplicitWidth = 408
    ExplicitHeight = 413
    ClientRectBottom = 512
    ClientRectRight = 376
    inherited tsGeneral: TcxTabSheet
      ExplicitWidth = 487
      ExplicitHeight = 484
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
        FocusControl = DBLookupComboBox1
      end
      object Label2: TLabel
        Left = 32
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBLookupComboBox2
      end
      object Label8: TLabel
        Left = 32
        Top = 112
        Width = 119
        Height = 13
        Caption = 'Ruta Base para Facturas'
        FocusControl = cxDBTextEdit1
      end
      object Label11: TLabel
        Left = 215
        Top = 161
        Width = 81
        Height = 13
        Caption = 'Ultimo Folio Pago'
        FocusControl = cxDBSpinEdit1
      end
      object Label12: TLabel
        Left = 32
        Top = 161
        Width = 83
        Height = 13
        Caption = 'Ultima Serie Pago'
        FocusControl = cxDBTextEdit9
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 40
        Width = 304
        Height = 21
        DataField = 'Pais'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 32
        Top = 80
        Width = 304
        Height = 21
        DataField = 'Moneda'
        DataSource = DataSource
        TabOrder = 1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 128
        DataBinding.DataField = 'RutaBaseFacturas'
        DataBinding.DataSource = DataSource
        TabOrder = 2
        Width = 304
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 215
        Top = 177
        DataBinding.DataField = 'UltimoFolioPago'
        DataBinding.DataSource = DataSource
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 32
        Top = 177
        DataBinding.DataField = 'UltimaSeriePago'
        DataBinding.DataSource = DataSource
        TabOrder = 4
        Width = 121
      end
      object PnlDatosCorreoSalida: TPanel
        Left = 3
        Top = 217
        Width = 366
        Height = 254
        BevelInner = bvLowered
        TabOrder = 5
        object Label3: TLabel
          Left = 29
          Top = 13
          Width = 62
          Height = 13
          Caption = 'Correo Envio'
          FocusControl = cxDBTextEdit2
        end
        object Label4: TLabel
          Left = 27
          Top = 61
          Width = 51
          Height = 13
          Caption = 'Host Envio'
          FocusControl = cxDBTextEdit3
        end
        object Label5: TLabel
          Left = 212
          Top = 61
          Width = 61
          Height = 13
          Caption = 'Puerto Envio'
          FocusControl = cxDBTextEdit4
        end
        object Label6: TLabel
          Left = 29
          Top = 109
          Width = 72
          Height = 13
          Caption = 'Usuario Correo'
          FocusControl = cxDBTextEdit5
        end
        object Label7: TLabel
          Left = 29
          Top = 157
          Width = 82
          Height = 13
          Caption = 'Password Correo'
          FocusControl = cxDBTextEdit6
        end
        object Label9: TLabel
          Left = 212
          Top = 157
          Width = 71
          Height = 13
          Caption = 'Tipo Seguridad'
          FocusControl = cxDBTextEdit7
        end
        object Label10: TLabel
          Left = 29
          Top = 205
          Width = 104
          Height = 13
          Caption = 'Metodo Autenticacion'
          FocusControl = cxDBTextEdit8
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 29
          Top = 32
          DataBinding.DataField = 'CorreoEnvio'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 304
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 27
          Top = 77
          DataBinding.DataField = 'HostEnvio'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 155
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 212
          Top = 77
          DataBinding.DataField = 'PuertoEnvio'
          DataBinding.DataSource = DataSource
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 29
          Top = 125
          DataBinding.DataField = 'UsuarioCorreo'
          DataBinding.DataSource = DataSource
          TabOrder = 3
          Width = 304
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 29
          Top = 173
          DataBinding.DataField = 'PasswordCorreo'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 212
          Top = 173
          DataBinding.DataField = 'TipoSeguridad'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 29
          Top = 221
          DataBinding.DataField = 'MetodoAutenticacion'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 121
        end
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 514
    Width = 378
    ExplicitTop = 413
    ExplicitWidth = 408
    inherited btnCancel: TButton
      Left = 296
      ExplicitLeft = 326
    end
    inherited btnOk: TButton
      Left = 215
      ExplicitLeft = 245
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmConfiguracion.adodsMaster
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
