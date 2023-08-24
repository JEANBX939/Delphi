object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cadastros'
  ClientHeight = 415
  ClientWidth = 711
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
    Width = 711
    Height = 415
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 703
    ExplicitHeight = 403
    object Label1: TLabel
      Left = 208
      Top = 56
      Width = 300
      Height = 60
      Caption = 'Bem- Vindo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -60
      Font.Name = 'SimSun'
      Font.Style = []
      ParentFont = False
    end
    object btnEmpresas: TButton
      Left = 72
      Top = 208
      Width = 240
      Height = 120
      Caption = 'Empresas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 45
      Font.Name = 'SimSun'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnEmpresasClick
    end
    object btnClientes: TButton
      Left = 374
      Top = 208
      Width = 240
      Height = 120
      Caption = 'Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 45
      Font.Name = 'SimSun'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnClientesClick
    end
  end
end
