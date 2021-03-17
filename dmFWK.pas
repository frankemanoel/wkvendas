unit dmFWK;

interface

uses
  SysUtils, Classes, WideStrings, DBXMySql, DB, SqlExpr, FMTBcd, Provider,
  DBClient, FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TdmWK = class(TDataModule)
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDConn: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdqProdutos: TFDQuery;
    fdqDGPedidos: TFDQuery;
    fdqPDPedidos: TFDQuery;
    fdqClientes: TFDQuery;
    fdqProdutoscodigo: TFDAutoIncField;
    fdqProdutosdescricao: TWideStringField;
    fdqProdutosprcvenda: TFloatField;
    fdqClientescodigo: TFDAutoIncField;
    fdqClientesnome: TWideStringField;
    fdqClientescidade: TWideStringField;
    fdqClientesuf: TWideStringField;
    fdqPDPedidoscodigo: TFDAutoIncField;
    fdqPDPedidosnpedido: TIntegerField;
    fdqPDPedidoscodigoproduto: TIntegerField;
    fdqPDPedidosquantidade: TIntegerField;
    fdqPDPedidosvlrunitario: TFloatField;
    fdqPDPedidosvlrtotal: TFloatField;
    fdqDGPedidosnpedido: TFDAutoIncField;
    fdqDGPedidosdtemissao: TSQLTimeStampField;
    fdqDGPedidoscdcliente: TIntegerField;
    fdqDGPedidosvtotal: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmWK: TdmWK;

implementation

{$R *.dfm}

end.
