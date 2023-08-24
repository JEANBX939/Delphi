unit TelaClientes;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  TelaPesquisaClientes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

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
    btnPesquisar: TButton;
    FDConnection: TFDConnection;
    FDQueryClientes: TFDQuery;
    edID: TEdit;
    lbID: TLabel;
    CbPessoaFisica: TCheckBox;
    FDQueryClientesID_CLIENTES: TIntegerField;
    FDQueryClientesNOME: TStringField;
    FDQueryClientesCPF: TStringField;
    FDQueryClientesCNPJ: TStringField;
    FDQueryClientesDATAHORA: TSQLTimeStampField;
    FDQueryClientesRG: TStringField;
    FDQueryClientesDATA_NASCIMENTO: TStringField;
    FDQueryClientesEMPRESA: TIntegerField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure CbPessoaFisicaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}


procedure TfrmClientes.btnInserirClick(Sender: TObject);
var
  Empresa, Nome, CpfCnpj, Telefone, RG: String;
  DataHora, DataNascimento: TTimeStamp;
begin
  Empresa := edEmpresa.ToString;
  Nome := edNome.ToString;
  CpfCnpj := edCpfCnpj.ToString;
  Telefone := edTelefone.ToString;
  RG := edRG.ToString;

   with FDQueryClientes do
   begin
     Close;
     SQL.Clear;
     SQL.Add('insert into clientes (ID_CLIENTES, nome, cpf, cnpj, datahora, rg, data_nascimento, empresa) values (:ID_CLIENTES, :nome, :cpf, :cnpj, :datahora, :rg, :data_nascimento, :empresa) ');

     ParamByName('ID_CLIENTES').AsInteger := StrToInt(edID.Text);
     ParamByName('nome').AsString := edNome.Text;
     ParamByName('cpf').AsString := edCpfCnpj.Text;
     ParamByName('cnpj').AsString := edCpfCnpj.Text;
     ParamByName('datahora').AsDate := StrToDate(edDataHora.Text);
     ParamByName('rg').AsString := edRG.Text;
     ParamByName('data_nascimento').AsDate := StrToDate(edDataNascimento.Text);
     ParamByName('empresa').AsInteger := StrToInt(edEmpresa.Text);
     ExecSQL;

   end;



end;

procedure TfrmClientes.btnPesquisarClick(Sender: TObject);
var
  TelaPesquisaCliente: TelaPesquisaClientes.TfrmPesquisaClientes;
begin
  TelaPesquisaCliente := TfrmPesquisaClientes.Create(Self);

  try
    TelaPesquisaCliente.ShowModal;
  finally
    TelaPesquisaCliente.Free;
  end;

end;

procedure TfrmClientes.CbPessoaFisicaClick(Sender: TObject);
begin
  edRG.Enabled := CbPessoaFisica.Checked
end;

end.
