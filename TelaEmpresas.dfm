object frmEmpresas: TfrmEmpresas
  Left = 0
  Top = 0
  Caption = 'Empresas'
  ClientHeight = 193
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  ScreenSnap = True
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 193
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 325
    ExplicitHeight = 192
    object LbEmpresas: TLabel
      Left = 24
      Top = 49
      Width = 45
      Height = 15
      Caption = 'Empresa'
      ParentShowHint = False
      ShowHint = False
      StyleName = 'Windows'
    end
    object LbUF: TLabel
      Left = 55
      Top = 73
      Width = 14
      Height = 15
      Caption = 'UF'
      ParentShowHint = False
      ShowHint = False
      StyleName = 'Windows'
    end
    object LbCNPJ: TLabel
      Left = 42
      Top = 102
      Width = 27
      Height = 15
      Caption = 'CNPJ'
      ParentShowHint = False
      ShowHint = False
      StyleName = 'Windows'
    end
    object lbID: TLabel
      Left = 42
      Top = 15
      Width = 11
      Height = 15
      Caption = 'ID'
      ParentShowHint = False
      ShowHint = False
      StyleName = 'Windows'
    end
    object edEmpresa: TEdit
      Left = 75
      Top = 41
      Width = 158
      Height = 23
      TabOrder = 1
    end
    object edUF: TEdit
      Left = 75
      Top = 70
      Width = 158
      Height = 23
      ImeName = 'Portuguese (Brazilian ABNT)'
      TabOrder = 2
    end
    object edCNPJ: TEdit
      Left = 75
      Top = 99
      Width = 158
      Height = 23
      Hint = 'Insira o CNPJ da empresa'
      TabOrder = 3
    end
    object btnInserir: TButton
      Left = 158
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 5
      OnClick = btnInserirClick
    end
    object btPesquisar: TButton
      Left = 77
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 4
      OnClick = btPesquisarClick
    end
    object edID_EMPRESA: TEdit
      Left = 75
      Top = 12
      Width = 38
      Height = 23
      TabOrder = 0
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
    LoginPrompt = False
    Left = 24
    Top = 200
  end
  object FDQueryEmpresas: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select'
      'e.ID_EMPRESA,'
      'e.UF,'
      'e.NOME_FANTASIA,'
      'e.CNPJ'
      'from empresas e'
      'order by 1')
    Left = 128
    Top = 200
    object FDQueryEmpresasID_EMPRESA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQueryEmpresasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FDQueryEmpresasNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 50
    end
    object FDQueryEmpresasCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
  end
end
