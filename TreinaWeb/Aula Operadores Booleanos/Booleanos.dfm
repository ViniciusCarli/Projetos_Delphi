object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 13
    Width = 83
    Height = 13
    Caption = 'Digite Sua Idade:'
  end
  object Button1: TButton
    Left = 143
    Top = 30
    Width = 193
    Height = 25
    Caption = 'Verificar Idade'
    TabOrder = 0
    OnClick = Button1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 16
    Top = 32
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object Button2: TButton
    Left = 143
    Top = 61
    Width = 193
    Height = 25
    Caption = 'Verificar Entrada Livre'
    TabOrder = 2
    OnClick = Button2Click
  end
end
