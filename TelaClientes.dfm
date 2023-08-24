object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 250
  ClientWidth = 457
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
    Width = 457
    Height = 250
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 453
    ExplicitHeight = 249
    object lbName: TLabel
      Left = 20
      Top = 45
      Width = 45
      Height = 15
      Caption = 'Empresa'
    end
    object lbNome: TLabel
      Left = 20
      Top = 71
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object lbCpfCpnj: TLabel
      Left = 260
      Top = 69
      Width = 53
      Height = 15
      Caption = 'CPF/CNPJ'
    end
    object lbDataHora: TLabel
      Left = 258
      Top = 129
      Width = 55
      Height = 15
      Caption = 'Data/Hora'
    end
    object lbTelefones: TLabel
      Left = 20
      Top = 100
      Width = 49
      Height = 15
      Caption = 'Telefones'
    end
    object lbRG: TLabel
      Left = 260
      Top = 100
      Width = 15
      Height = 15
      Caption = 'RG'
    end
    object lbDataNascimento: TLabel
      Left = 20
      Top = 129
      Width = 91
      Height = 15
      Caption = 'Data Nascimento'
    end
    object lbID: TLabel
      Left = 20
      Top = 13
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object edEmpresa: TEdit
      Left = 117
      Top = 39
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object edNome: TEdit
      Left = 117
      Top = 68
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object edCpfCnpj: TEdit
      Left = 319
      Top = 66
      Width = 121
      Height = 23
      TabOrder = 4
    end
    object edDataHora: TEdit
      Left = 319
      Top = 126
      Width = 121
      Height = 23
      TabOrder = 6
    end
    object edTelefone: TEdit
      Left = 117
      Top = 97
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object edRG: TEdit
      Left = 319
      Top = 97
      Width = 121
      Height = 23
      Enabled = False
      TabOrder = 5
    end
    object edDataNascimento: TEdit
      Left = 117
      Top = 126
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object btnInserir: TButton
      Left = 365
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 8
      OnClick = btnInserirClick
    end
    object btnPesquisar: TButton
      Left = 284
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 7
      OnClick = btnPesquisarClick
    end
    object edID: TEdit
      Left = 117
      Top = 10
      Width = 121
      Height = 23
      TabOrder = 9
    end
    object CbPessoaFisica: TCheckBox
      Left = 319
      Top = 42
      Width = 97
      Height = 17
      Caption = 'Pessoa Fisica'
      TabOrder = 10
      OnClick = CbPessoaFisicaClick
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
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    Left = 80
    Top = 192
  end
  object FDQueryClientes: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select'
      '*'
      'from clientes')
    Left = 176
    Top = 200
    object FDQueryClientesID_CLIENTES: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CLIENTES'
      Origin = 'ID_CLIENTES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQueryClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 55
    end
    object FDQueryClientesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 14
    end
    object FDQueryClientesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object FDQueryClientesDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object FDQueryClientesRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object FDQueryClientesDATA_NASCIMENTO: TStringField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
      Size = 10
    end
    object FDQueryClientesEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
  end
end
