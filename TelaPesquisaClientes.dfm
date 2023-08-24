object frmPesquisaClientes: TfrmPesquisaClientes
  Left = 0
  Top = 0
  Caption = 'Pesquisa Clientes'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 441
    object lbClientes: TLabel
      Left = 200
      Top = 16
      Width = 200
      Height = 50
      Caption = 'Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 50
      Font.Name = 'SimSun'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 88
      Width = 626
      Height = 353
      Align = alBottom
      DataSource = DSClientes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CLIENTES'
          Title.Caption = 'Codigo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMPRESA'
          Title.Caption = 'Empresa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAHORA'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_NASCIMENTO'
          Title.Caption = 'Data De Nascimento'
          Visible = True
        end>
    end
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\Delphi\Banco\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=LOCALHOST'
      'Port=3050'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 560
    Top = 232
  end
  object QueryClientes: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select'
      '*'
      'from clientes c'
      'order by c.nome')
    Left = 560
    Top = 368
    object QueryClientesID_CLIENTES: TIntegerField
      FieldName = 'ID_CLIENTES'
      Origin = 'ID_CLIENTES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 55
    end
    object QueryClientesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 14
    end
    object QueryClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object QueryClientesDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object QueryClientesRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object QueryClientesDATA_NASCIMENTO: TStringField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
      Size = 10
    end
    object QueryClientesEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
  end
  object DSClientes: TDataSource
    DataSet = QueryClientes
    Left = 560
    Top = 296
  end
end
