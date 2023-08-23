unit TelaEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmEmpresas = class(TForm)
    Panel1: TPanel;
    LbEmpresas: TLabel;
    LbUF: TLabel;
    LbCNPJ: TLabel;
    edEmpresa: TEdit;
    edUF: TEdit;
    CNPJ: TEdit;
    btnInserir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresas: TfrmEmpresas;

implementation

{$R *.dfm}

end.
