object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 195
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 146
    Height = 25
    Caption = 'Vogais'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 8
    Width = 146
    Height = 25
    Caption = 'Dias da semana'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 39
    Width = 146
    Height = 121
    ItemHeight = 13
    TabOrder = 2
  end
  object ListBox2: TListBox
    Left = 160
    Top = 39
    Width = 146
    Height = 121
    ItemHeight = 13
    TabOrder = 3
  end
end
