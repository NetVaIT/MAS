inherited FrmPagosEdt: TFrmPagosEdt
  Caption = 'FrmPagosEdt'
  ClientWidth = 880
  ExplicitWidth = 880
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 619
    Width = 880
    ExplicitTop = 619
    ExplicitWidth = 880
  end
  inherited splDetail2: TSplitter
    Top = 593
    Width = 880
    ExplicitTop = 593
    ExplicitWidth = 880
  end
  inherited splDetail1: TSplitter
    Top = 571
    Width = 880
    ExplicitTop = 571
    ExplicitWidth = 880
  end
  inherited pnlClose: TPanel
    Top = 638
    Width = 880
    Height = 12
    ExplicitTop = 638
    ExplicitWidth = 880
    ExplicitHeight = 12
  end
  inherited pnlDetail3: TPanel
    Top = 622
    Width = 880
    Height = 16
    ExplicitTop = 622
    ExplicitWidth = 880
    ExplicitHeight = 16
  end
  inherited pnlDetail2: TPanel
    Top = 596
    Width = 880
    Height = 23
    ExplicitTop = 596
    ExplicitWidth = 880
    ExplicitHeight = 23
  end
  inherited pnlDetail1: TPanel
    Top = 574
    Width = 880
    Height = 19
    ExplicitTop = 574
    ExplicitWidth = 880
    ExplicitHeight = 19
  end
  inherited pcMain: TcxPageControl
    Top = 22
    Width = 880
    Height = 549
    ExplicitWidth = 880
    ExplicitHeight = 571
    ClientRectBottom = 548
    ClientRectRight = 879
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 878
      ExplicitHeight = 569
      inherited cxScrollBox1: TcxScrollBox
        Width = 878
        Height = 547
        ExplicitWidth = 878
        ExplicitHeight = 569
        inherited tbarData: TToolBar
          Width = 876
          ExplicitWidth = 876
          object ToolButton3: TToolButton
            Left = 254
            Top = 0
            Action = DataSetEdit
          end
        end
        inherited pnlMaster: TPanel
          Width = 876
          Height = 520
          ExplicitWidth = 876
          ExplicitHeight = 542
          object Label7: TLabel
            Left = 181
            Top = 204
            Width = 49
            Height = 13
            Caption = 'Folio Pago'
          end
          object Label8: TLabel
            Left = 22
            Top = 207
            Width = 51
            Height = 13
            Caption = 'Serie Pago'
            FocusControl = cxDBTextEdit1
          end
          object Label9: TLabel
            Left = 22
            Top = 29
            Width = 29
            Height = 13
            Caption = 'Fecha'
            FocusControl = cxDBDateEdit1
          end
          object Label10: TLabel
            Left = 383
            Top = 204
            Width = 52
            Height = 13
            Caption = 'Referencia'
            FocusControl = cxDBTextEdit2
          end
          object Label11: TLabel
            Left = 384
            Top = 269
            Width = 38
            Height = 13
            Caption = 'Importe'
            FocusControl = cxDBTxtEdtImporte
          end
          object Label12: TLabel
            Left = 385
            Top = 329
            Width = 26
            Height = 13
            Caption = 'Saldo'
            FocusControl = cxDBTxtEdtSaldo
          end
          object Label13: TLabel
            Left = 22
            Top = 269
            Width = 71
            Height = 13
            Caption = 'Observaciones'
          end
          object Label1: TLabel
            Left = 22
            Top = 84
            Width = 73
            Height = 13
            Caption = 'Nombre Cliente'
            FocusControl = DBLkpCmbBxCliente
          end
          object Label2: TLabel
            Left = 22
            Top = 141
            Width = 60
            Height = 13
            Caption = 'MetodoPago'
            FocusControl = DBLkpCmbBxMetodoPago
          end
          object Label3: TLabel
            Left = 385
            Top = 141
            Width = 69
            Height = 13
            Caption = 'Banco Ingreso'
            FocusControl = DBLkpCmbBxBanco
          end
          object Label4: TLabel
            Left = 384
            Top = 84
            Width = 76
            Height = 13
            Caption = 'Domicilio Cliente'
            FocusControl = DBLookupComboBox4
          end
          object Label5: TLabel
            Left = 762
            Top = 84
            Width = 78
            Height = 13
            Caption = 'IdentificadorCte'
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 22
            Top = 223
            DataBinding.DataField = 'SeriePago'
            DataBinding.DataSource = DataSource
            TabOrder = 0
            Width = 121
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 23
            Top = 48
            DataBinding.DataField = 'Fecha'
            DataBinding.DataSource = DataSource
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 382
            Top = 223
            DataBinding.DataField = 'Referencia'
            DataBinding.DataSource = DataSource
            TabOrder = 2
            Width = 283
          end
          object cxDBTxtEdtImporte: TcxDBTextEdit
            Left = 384
            Top = 288
            DataBinding.DataField = 'Importe'
            DataBinding.DataSource = DataSource
            TabOrder = 3
            OnExit = cxDBTxtEdtImporteExit
            Width = 121
          end
          object cxDBTxtEdtSaldo: TcxDBTextEdit
            Left = 385
            Top = 345
            DataBinding.DataField = 'Saldo'
            DataBinding.DataSource = DataSource
            TabOrder = 4
            Width = 121
          end
          object cxDBMemo1: TcxDBMemo
            Left = 22
            Top = 288
            DataBinding.DataField = 'Observaciones'
            DataBinding.DataSource = DataSource
            TabOrder = 5
            Height = 78
            Width = 341
          end
          object DBLkpCmbBxCliente: TDBLookupComboBox
            Left = 22
            Top = 103
            Width = 341
            Height = 21
            DataField = 'NombreCliente'
            DataSource = DataSource
            TabOrder = 6
            OnClick = DBLkpCmbBxClienteClick
          end
          object DBLkpCmbBxMetodoPago: TDBLookupComboBox
            Left = 22
            Top = 160
            Width = 341
            Height = 21
            DataField = 'MetodoPago'
            DataSource = DataSource
            TabOrder = 7
          end
          object DBLkpCmbBxBanco: TDBLookupComboBox
            Left = 384
            Top = 160
            Width = 281
            Height = 21
            DataField = 'Banco'
            DataSource = DataSource
            TabOrder = 8
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 385
            Top = 103
            Width = 371
            Height = 21
            DataField = 'DomicilioCliente'
            DataSource = DataSource
            TabOrder = 9
          end
          object cxDBLabel3: TcxDBLabel
            Left = 762
            Top = 103
            DataBinding.DataField = 'Identificador'
            DataBinding.DataSource = DataSource
            Height = 21
            Width = 90
          end
          object cxDBLabel5: TcxDBLabel
            Left = 386
            Top = 103
            DataBinding.DataField = 'DomicilioCliente'
            DataBinding.DataSource = DataSource
            Height = 21
            Width = 370
          end
          object DBLkupCmbBxDirAuxiliar: TDBLookupComboBox
            Left = 383
            Top = 103
            Width = 373
            Height = 21
            DataField = 'IdDomicilioCliente'
            DataSource = DataSource
            KeyField = 'IdPersonaDomicilio'
            ListField = 'DirCompleta'
            ListSource = DSDireccioncliente
            TabOrder = 11
            Visible = False
          end
          object BtBtnAplicaciones: TBitBtn
            Left = 544
            Top = 32
            Width = 161
            Height = 25
            Caption = 'Aplicaci'#243'n Pago'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
              333333333333337FF3333333333333903333333333333377FF33333333333399
              03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
              99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
              99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
              03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
              33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
              33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
              3333777777333333333333333333333333333333333333333333}
            NumGlyphs = 2
            TabOrder = 13
            OnClick = BtBtnAplicacionesClick
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 181
            Top = 223
            DataBinding.DataField = 'FolioPago'
            DataBinding.DataSource = DataSource
            TabOrder = 14
            Width = 121
          end
        end
      end
    end
  end
  object PnlTitulo: TPanel [8]
    Left = 0
    Top = 0
    Width = 880
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    Registro de Pagos'
    Color = 5553385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    ExplicitLeft = -397
    ExplicitWidth = 1277
  end
  inherited DataSource: TDataSource
    AutoEdit = False
    DataSet = dmPagos.adodsMaster
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
  object DSAuxiliar: TDataSource
    DataSet = dmCotizaciones.ADODSAuxiliar
    Left = 824
    Top = 304
  end
  object DSDireccioncliente: TDataSource
    DataSet = dmPagos.ADODtStDireccAuxiliar
    Left = 652
    Top = 80
  end
  object DSAplicacion: TDataSource
    DataSet = dmPagos.ADODtStAplicacionesPagos
    Left = 804
    Top = 440
  end
  object dsConFacturasPendientes: TDataSource
    DataSet = dmPagos.ADODtStConFactPendientes
    Left = 692
    Top = 440
  end
end
