unit TelaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmClientes = class(TForm)
    Panel1: TPanel;
    lbName: TLabel;
    lbNome: TLabel;
    lbCpfCpnj: TLabel;
    lbDataHora: TLabel;
    lbTelefones: TLabel;
    lbRG: TLabel;
    lbDataNascimento: TLabel;
    edEmpresa: TEdit;
    edNome: TEdit;
    edCpfCnpj: TEdit;
    edDataHora: TEdit;
    edTelefone: TEdit;
    edRG: TEdit;
    edDataNascimento: TEdit;
    btnInserir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

end.
