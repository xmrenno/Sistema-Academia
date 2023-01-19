object FormIMC: TFormIMC
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FormIMC'
  ClientHeight = 430
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 232
      Height = 29
      Caption = 'Calculadora de IMC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 710
    Height = 349
    Align = alClient
    TabOrder = 1
    object Label3: TLabel
      Left = 74
      Top = 173
      Width = 83
      Height = 13
      Caption = 'Digite sua Altura:'
    end
    object Label4: TLabel
      Left = 108
      Top = 56
      Width = 43
      Height = 25
      Caption = 'IMC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 74
      Top = 117
      Width = 77
      Height = 13
      Caption = 'Digite seu Peso:'
    end
    object Label2: TLabel
      Left = 384
      Top = 173
      Width = 48
      Height = 13
      Caption = 'Resultado'
    end
    object Label6: TLabel
      Left = 384
      Top = 117
      Width = 19
      Height = 13
      Caption = 'IMC'
    end
    object Button1: TButton
      Left = 96
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Calcular'
      TabOrder = 0
      OnClick = Button1Click
    end
    object txtPeso: TEdit
      Left = 74
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object txtAltura: TEdit
      Left = 74
      Top = 192
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object editResultado: TEdit
      Left = 384
      Top = 192
      Width = 217
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object editIMC: TEdit
      Left = 384
      Top = 136
      Width = 89
      Height = 21
      Enabled = False
      TabOrder = 4
    end
  end
end
