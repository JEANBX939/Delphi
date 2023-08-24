unit TelaPesquisaEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TfrmPesquisaEmpresas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    FDConnection: TFDConnection;
    DSEmpresas: TDataSource;
    QueryEmpresas: TFDQuery;
    QueryEmpresasID_EMPRESA: TIntegerField;
    QueryEmpresasUF: TStringField;
    QueryEmpresasNOME_FANTASIA: TStringField;
    QueryEmpresasCNPJ: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaEmpresas: TfrmPesquisaEmpresas;

implementation

{$R *.dfm}

end.
