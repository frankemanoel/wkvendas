unit frmPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TfrmTelaPedido = class(TForm)
    btConsultar: TButton;
    btInserir: TButton;
    btCancelaPedido: TButton;
    edtPedido: TEdit;
    btOK: TButton;
    btX: TButton;
    Label1: TLabel;
    dsProdutos: TDataSource;
    dsClientes: TDataSource;
    dbgPedidos: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    pnConsulta: TPanel;
    dblProduto: TDBLookupComboBox;
    pnProdutos: TPanel;
    Label3: TLabel;
    edQuantidade: TEdit;
    Label4: TLabel;
    edbVunitario: TDBEdit;
    Label5: TLabel;
    lbTotal: TLabel;
    dsPedidos: TDataSource;
    Label2: TLabel;
    lbTotalGeral: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    btGravaPedido: TButton;
    DBTCod: TDBText;
    DBTCProd: TDBText;
    Label7: TLabel;
    DBTNPed: TDBText;
    dsPedProdutos: TDataSource;
    DBCod: TDBText;
    procedure btConsultarClick(Sender: TObject);
    procedure btXClick(Sender: TObject);
    procedure edQuantidadeChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btCancelaPedidoClick(Sender: TObject);
    procedure dblProdutoCloseUp(Sender: TObject);
    procedure dbgPedidosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPedidosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btOKClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPedido: TfrmTelaPedido;

implementation

{$R *.dfm}

uses dmFWK;

procedure TfrmTelaPedido.btCancelaPedidoClick(Sender: TObject);
begin
  btCancelaPedido.Visible := False;
  With dmFWK.dmWK.fdqDGPedidos do
  begin
    close;
    SQL.Clear;
    SQL.Text := 'DELETE * from pdadosgerais where npedido = ' +
      DBTNPed.Caption + '';
    ExecSQL;
  end;
end;

procedure TfrmTelaPedido.btConsultarClick(Sender: TObject);
begin
  edtPedido.Visible := True;
  btOK.Visible := True;
  btX.Visible := True;
  pnConsulta.Visible := True;
  btCancelaPedido.Visible := False;
end;

procedure TfrmTelaPedido.btInserirClick(Sender: TObject);
begin
  edbVunitario.Text := StringReplace(edbVunitario.Text, ',', '.',
    [rfReplaceAll, rfIgnoreCase]);
  lbTotal.Caption := StringReplace(lbTotal.Caption, ',', '.',
    [rfReplaceAll, rfIgnoreCase]);

  With dmFWK.dmWK.fdqPDPedidos do
  begin
    close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO pprodutos (npedido, codigoproduto, quantidade, vlrunitario, vlrtotal) values ('
      + DBTNPed.Caption + ', ' + DBTCProd.Caption + ', ' + edQuantidade.Text +
      ', ' + edbVunitario.Text + ', ' + lbTotal.Caption + ')';
    ExecSQL;
  end;

  With dmFWK.dmWK.fdqPDPedidos do
  begin
    close;
    SQL.Clear;
    SQL.Add('SELECT * FROM pprodutos where npedido = ' + DBTNPed.Caption + '');
    Open;
  end;

end;

procedure TfrmTelaPedido.btOKClick(Sender: TObject);
begin
  With dmFWK.dmWK.fdqPDPedidos do
  begin
    close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM pprodutos where npedido = ' +
      edtPedido.Text + '';
    Open;
  end;
end;

procedure TfrmTelaPedido.btXClick(Sender: TObject);
begin
  edtPedido.Visible := False;
  btOK.Visible := False;
  btX.Visible := False;
  pnConsulta.Visible := False;
end;

procedure TfrmTelaPedido.Button1Click(Sender: TObject);
var
  cdclie: integer;
begin

  pnProdutos.Visible := True;
  btCancelaPedido.Visible := True;

  With dmFWK.dmWK.fdqDGPedidos do
  begin
    close;
    SQL.Clear;
    SQL.Text := 'INSERT INTO pdadosgerais (dtemissao, cdcliente) values (' +
      DatetoStr(Date()) + ', ' + DBTCod.Caption + ')';
    ExecSQL;
  end;

  With dmFWK.dmWK.fdqDGPedidos do
  begin
    close;
    SQL.Clear;
    SQL.Add('SELECT * FROM pdadosgerais ORDER BY npedido DESC LIMIT 1');
    Open;
  end;

end;

procedure TfrmTelaPedido.dbgPedidosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
    if MessageDlg('Deseja excluir o registro?', mtConfirmation, mbYesNo, 0) = mrYes
    then
      with dmFWK.dmWK.fdqPDPedidos do
      begin
        close;
        SQL.Clear;
        SQL.Text := 'DELETE FROM pprodutos where codigo = ' +
          DBCod.Caption + '';
        ExecSQL;
        // RETORNA
        close;
        SQL.Clear;
        SQL.Add('SELECT * FROM pprodutos where npedido = ' +
          DBTNPed.Caption + '');
        ExecSQL;
      end;
end;

procedure TfrmTelaPedido.dbgPedidosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    showmessage('Alteração realizada com sucesso!');
end;

procedure TfrmTelaPedido.dblProdutoCloseUp(Sender: TObject);
begin
  edQuantidade.Text := '1';

end;

procedure TfrmTelaPedido.edQuantidadeChange(Sender: TObject);
var
  total: real;
begin
  total := strtoInt(edQuantidade.Text) * strtoFloat(edbVunitario.Text);
  lbTotal.Caption := formatfloat('#,,0.00', total);
end;

end.
