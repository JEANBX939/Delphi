object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 176
    ExplicitTop = 136
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lbName: TLabel
      Left = 20
      Top = 21
      Width = 45
      Height = 15
      Caption = 'Empresa'
    end
    object lbNome: TLabel
      Left = 20
      Top = 50
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object lbCpfCpnj: TLabel
      Left = 20
      Top = 79
      Width = 53
      Height = 15
      Caption = 'CPF/CNPJ'
    end
    object lbDataHora: TLabel
      Left = 18
      Top = 100
      Width = 55
      Height = 15
      Caption = 'Data/Hora'
    end
    object lbTelefones: TLabel
      Left = 20
      Top = 132
      Width = 49
      Height = 15
      Caption = 'Telefones'
    end
    object lbRG: TLabel
      Left = 20
      Top = 161
      Width = 15
      Height = 15
      Caption = 'RG'
    end
    object lbDataNascimento: TLabel
      Left = 20
      Top = 195
      Width = 91
      Height = 15
      Caption = 'Data Nascimento'
    end
    object edEmpresa: TEdit
      Left = 117
      Top = 13
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object edNome: TEdit
      Left = 117
      Top = 42
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object edCpfCnpj: TEdit
      Left = 117
      Top = 71
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object edDataHora: TEdit
      Left = 117
      Top = 100
      Width = 121
      Height = 23
      TabOrder = 3
    end
    object edTelefone: TEdit
      Left = 117
      Top = 129
      Width = 121
      Height = 23
      TabOrder = 4
    end
    object edRG: TEdit
      Left = 117
      Top = 158
      Width = 121
      Height = 23
      TabOrder = 5
    end
    object edDataNascimento: TEdit
      Left = 117
      Top = 187
      Width = 121
      Height = 23
      TabOrder = 6
    end
    object btnInserir: TButton
      Left = 163
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 7
    end
  end
end
