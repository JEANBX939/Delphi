program Cadastros;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {frmPrincipal},
  TelaEmpresas in 'TelaEmpresas.pas' {frmEmpresas},
  TelaClientes in 'TelaClientes.pas' {frmClientes},
  TelaPesquisaClientes in 'TelaPesquisaClientes.pas' {frmPesquisaClientes},
  TelaPesquisaEmpresas in 'TelaPesquisaEmpresas.pas' {frmPesquisaEmpresas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
