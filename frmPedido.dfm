object frmTelaPedido: TfrmTelaPedido
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 484
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 14
    Width = 98
    Height = 13
    Caption = 'Selecione um Cliente'
  end
  object Label2: TLabel
    Left = 656
    Top = 36
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTotalGeral: TLabel
    Left = 829
    Top = 442
    Width = 6
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 772
    Top = 442
    Width = 46
    Height = 25
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBTCod: TDBText
    Left = 248
    Top = 14
    Width = 65
    Height = 17
    DataField = 'codigo'
    DataSource = dsClientes
  end
  object Label7: TLabel
    Left = 319
    Top = 14
    Width = 46
    Height = 13
    Caption = 'Pedido n'#186
  end
  object DBTNPed: TDBText
    Left = 384
    Top = 14
    Width = 65
    Height = 17
    DataField = 'npedido'
    DataSource = dsPedidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBCod: TDBText
    Left = 8
    Top = 376
    Width = 65
    Height = 17
    DataField = 'codigo'
    DataSource = dsPedProdutos
  end
  object pnConsulta: TPanel
    Left = 528
    Top = 8
    Width = 250
    Height = 65
    Color = clMedGray
    ParentBackground = False
    TabOrder = 8
    Visible = False
  end
  object pnProdutos: TPanel
    Left = 24
    Top = 79
    Width = 958
    Height = 65
    Color = clWhite
    Padding.Left = 8
    Padding.Top = 8
    Padding.Right = 8
    Padding.Bottom = 8
    ParentBackground = False
    TabOrder = 10
    Visible = False
    object Label3: TLabel
      Left = 23
      Top = 4
      Width = 103
      Height = 13
      Caption = 'Selecione um Produto'
    end
    object Label4: TLabel
      Left = 336
      Top = 4
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label5: TLabel
      Left = 496
      Top = 4
      Width = 64
      Height = 13
      Caption = 'Valor Unit'#225'rio'
    end
    object lbTotal: TLabel
      Left = 661
      Top = 28
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 656
      Top = 4
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object DBTCProd: TDBText
      Left = 242
      Top = 6
      Width = 65
      Height = 17
      DataField = 'codigo'
      DataSource = dsClientes
    end
    object edQuantidade: TEdit
      Left = 336
      Top = 25
      Width = 121
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edQuantidadeChange
    end
    object edbVunitario: TDBEdit
      Left = 496
      Top = 25
      Width = 121
      Height = 27
      DataField = 'prcvenda'
      DataSource = dsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object btConsultar: TButton
    Left = 784
    Top = 19
    Width = 198
    Height = 41
    Caption = 'Consultar Pedidos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btConsultarClick
  end
  object btInserir: TButton
    Left = 829
    Top = 90
    Width = 113
    Height = 41
    Caption = 'Inserir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btInserirClick
  end
  object btCancelaPedido: TButton
    Left = 24
    Top = 440
    Width = 145
    Height = 36
    Caption = 'Cancelar Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = btCancelaPedidoClick
  end
  object edtPedido: TEdit
    Left = 544
    Top = 24
    Width = 130
    Height = 27
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object btOK: TButton
    Left = 680
    Top = 24
    Width = 33
    Height = 35
    BiDiMode = bdLeftToRight
    Caption = 'OK'
    ParentBiDiMode = False
    TabOrder = 4
    Visible = False
    OnClick = btOKClick
  end
  object btX: TButton
    Left = 719
    Top = 24
    Width = 34
    Height = 35
    Caption = 'X'
    TabOrder = 5
    Visible = False
    OnClick = btXClick
  end
  object dbgPedidos: TDBGrid
    Left = 24
    Top = 153
    Width = 958
    Height = 283
    DataSource = dsPedProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = dbgPedidosKeyDown
    OnKeyPress = dbgPedidosKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Caption = 'C'#243'digo'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'npedido'
        ReadOnly = True
        Title.Caption = 'N'#250'mero do Pedido'
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigoproduto'
        ReadOnly = True
        Title.Caption = 'C'#243'digo do Produto'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlrunitario'
        Title.Caption = 'Valor Unit'#225'rio'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlrtotal'
        ReadOnly = True
        Title.Caption = 'Valor Total'
        Width = 166
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 33
    Width = 289
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'nome'
    ListField = 'nome'
    ListSource = dsClientes
    ParentFont = False
    TabOrder = 7
  end
  object dblProduto: TDBLookupComboBox
    Left = 46
    Top = 104
    Width = 289
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'descricao'
    ListField = 'descricao'
    ListSource = dsProdutos
    ParentFont = False
    TabOrder = 9
    OnCloseUp = dblProdutoCloseUp
  end
  object btGravaPedido: TButton
    Left = 319
    Top = 33
    Width = 130
    Height = 28
    Caption = 'Gravar Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button1Click
  end
  object dsProdutos: TDataSource
    DataSet = dmWK.fdqProdutos
    Left = 440
    Top = 440
  end
  object dsClientes: TDataSource
    DataSet = dmWK.fdqClientes
    Left = 384
    Top = 440
  end
  object dsPedidos: TDataSource
    DataSet = dmWK.fdqDGPedidos
    Left = 552
    Top = 440
  end
  object dsPedProdutos: TDataSource
    DataSet = dmWK.fdqPDPedidos
    Left = 616
    Top = 440
  end
end
