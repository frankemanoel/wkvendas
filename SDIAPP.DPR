program Sdiapp;

uses
  Forms,
  SDIMAIN in 'SDIMAIN.PAS' {SDIAppForm} ,
  ABOUT in 'ABOUT.PAS' {AboutBox} ,
  frmPedido in 'frmPedido.pas' {frmTelaPedido} ,
  dmFWK in 'dmFWK.pas' {dmWK: TDataModule};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TSDIAppForm, SDIAppForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TfrmTelaPedido, frmTelaPedido);
  Application.CreateForm(TdmWK, dmWK);
  Application.Run;

end.
