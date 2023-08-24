unit TelaEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, TelaPesquisaEmpresas,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrmEmpresas = class(TForm)
    Panel1: TPanel;
    LbEmpresas: TLabel;
    LbUF: TLabel;
    LbCNPJ: TLabel;
    edEmpresa: TEdit;
    edUF: TEdit;
    edCNPJ: TEdit;
    btnInserir: TButton;
    btPesquisar: TButton;
    FDConnection: TFDConnection;
    FDQueryEmpresas: TFDQuery;
    FDQueryEmpresasID_EMPRESA: TIntegerField;
    FDQueryEmpresasUF: TStringField;
    FDQueryEmpresasNOME_FANTASIA: TStringField;
    FDQueryEmpresasCNPJ: TStringField;
    edID_EMPRESA: TEdit;
    lbID: TLabel;
    procedure btPesquisarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresas: TfrmEmpresas;

implementation

{$R *.dfm}

procedure TfrmEmpresas.btnInserirClick(Sender: TObject);
var
  Empresa, UF, CNPJ: String;
begin
  Empresa := edEmpresa.ToString;
  UF := edUF.ToString;
  CNPJ := edCNPJ.ToString;

  with FDQueryEmpresas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('insert into empresas (ID_EMPRESA, NOME_FANTASIA, UF, CNPJ) values (:ID_EMPRESA, :NOME_FANTASIA, :UF, :CNPJ)');
    ParamByName('ID_EMPRESA').AsInteger := StrToInt(edID_EMPRESA.Text);
    ParamByName('NOME_FANTASIA').AsString := edEmpresa.Text;
    ParamByName('UF').AsString := edUF.Text;
    ParamByName('CNPJ').AsInteger := StrToInt(edCNPJ.Text);
    ExecSQL;

    ShowMessage('Cadastro realizado com sucesso');


    edEmpresa.Text := '';
    edUF.Text := '';
    edCNPJ.Text := '';


  end;

end;

procedure TfrmEmpresas.btPesquisarClick(Sender: TObject);
var
  TelaPesquisaEmpresa: TelaPesquisaEmpresas.TfrmPesquisaEmpresas;
begin
  TelaPesquisaEmpresa := TfrmPesquisaEmpresas.Create(Self);

  try
    TelaPesquisaEmpresa.ShowModal;
  finally
    TelaPesquisaEmpresa.Free;
  end;

end;

end.
