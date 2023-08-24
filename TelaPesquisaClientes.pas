unit TelaPesquisaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPesquisaClientes = class(TForm)
    Panel1: TPanel;
    FDConnection: TFDConnection;
    QueryClientes: TFDQuery;
    DBGrid1: TDBGrid;
    lbClientes: TLabel;
    DSClientes: TDataSource;
    QueryClientesID_CLIENTES: TIntegerField;
    QueryClientesNOME: TStringField;
    QueryClientesCPF: TStringField;
    QueryClientesCNPJ: TStringField;
    QueryClientesDATAHORA: TSQLTimeStampField;
    QueryClientesRG: TStringField;
    QueryClientesDATA_NASCIMENTO: TStringField;
    QueryClientesEMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaClientes: TfrmPesquisaClientes;

implementation

{$R *.dfm}

end.
