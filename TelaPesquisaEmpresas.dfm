object frmPesquisaEmpresas: TfrmPesquisaEmpresas
  Left = 0
  Top = 0
  Caption = 'Pesquisa Empresas'
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
    object Label1: TLabel
      Left = 200
      Top = 16
      Width = 200
      Height = 50
      Caption = 'Empresas'
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
      DataSource = DSEmpresas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_EMPRESA'
          Title.Caption = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FANTASIA'
          Title.Caption = 'Nome Fantasia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = True
        end>
    end
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\Delphi\Banco\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=LOCALHOST'
      'Protocol=TCPIP'
      'CharacterSet=WIN1252'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 552
    Top = 240
  end
  object DSEmpresas: TDataSource
    DataSet = QueryEmpresas
    Left = 552
    Top = 304
  end
  object QueryEmpresas: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select'
      '*'
      'from empresas e'
      'order by ID_EMPRESA')
    Left = 552
    Top = 368
    object QueryEmpresasID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryEmpresasUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object QueryEmpresasNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 50
    end
    object QueryEmpresasCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
  end
end
