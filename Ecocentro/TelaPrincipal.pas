unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.StdCtrls, TelaEmpresas, TelaClientes;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnEmpresas: TButton;
    btnClientes: TButton;
    procedure btnEmpresasClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
var
  TelaCliente: TelaClientes.TfrmClientes;
begin
  TelaCliente := TfrmClientes.Create(Self);

  try
    TelaCliente.ShowModal;  
  finally
    TelaCliente.Free;
  end;

end;

procedure TfrmPrincipal.btnEmpresasClick(Sender: TObject);
var
  TelaEmpresa: TelaEmpresas.TfrmEmpresas;
begin 
  TelaEmpresa := TfrmEmpresas.Create(Self);

  try
    TelaEmpresa.ShowModal;
  finally
    TelaEmpresa.Free
  end;

end;

end.
