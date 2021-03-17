object dmWK: TdmWK
  OldCreateOrder = False
  Height = 411
  Width = 741
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Projetos GIT\wk\libmysql.dll'
    Left = 224
    Top = 120
  end
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=wkdata'
      'User_Name=root'
      'Password=159753'
      'Server=localhost'
      'CharacterSet=utf8'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 336
    Top = 120
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 440
    Top = 120
  end
  object fdqProdutos: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM produtos')
    Left = 176
    Top = 208
    object fdqProdutoscodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqProdutosdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 254
    end
    object fdqProdutosprcvenda: TFloatField
      FieldName = 'prcvenda'
      Origin = 'prcvenda'
      Required = True
    end
  end
  object fdqDGPedidos: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from pdadosgerais')
    Left = 352
    Top = 208
    object fdqDGPedidosnpedido: TFDAutoIncField
      FieldName = 'npedido'
      Origin = 'npedido'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqDGPedidosdtemissao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'dtemissao'
      Origin = 'dtemissao'
    end
    object fdqDGPedidoscdcliente: TIntegerField
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
      Required = True
    end
    object fdqDGPedidosvtotal: TFloatField
      FieldName = 'vtotal'
      Origin = 'vtotal'
      Required = True
    end
  end
  object fdqPDPedidos: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from pprodutos')
    Left = 448
    Top = 208
    object fdqPDPedidoscodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqPDPedidosnpedido: TIntegerField
      FieldName = 'npedido'
      Origin = 'npedido'
      Required = True
    end
    object fdqPDPedidoscodigoproduto: TIntegerField
      FieldName = 'codigoproduto'
      Origin = 'codigoproduto'
      Required = True
    end
    object fdqPDPedidosquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Required = True
    end
    object fdqPDPedidosvlrunitario: TFloatField
      FieldName = 'vlrunitario'
      Origin = 'vlrunitario'
      Required = True
    end
    object fdqPDPedidosvlrtotal: TFloatField
      FieldName = 'vlrtotal'
      Origin = 'vlrtotal'
      Required = True
    end
  end
  object fdqClientes: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 264
    Top = 208
    object fdqClientescodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdqClientesnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 254
    end
    object fdqClientescidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 254
    end
    object fdqClientesuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      Size = 2
    end
  end
end
