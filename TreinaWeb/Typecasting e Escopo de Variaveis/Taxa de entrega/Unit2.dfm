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
    Left = 56
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Mouse'
  end
  object Label2: TLabel
    Left = 192
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label3: TLabel
    Left = 328
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Valor Total'
  end
  object Label4: TLabel
    Left = 56
    Top = 58
    Width = 37
    Height = 13
    Caption = 'Teclado'
  end
  object Label5: TLabel
    Left = 192
    Top = 58
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label6: TLabel
    Left = 328
    Top = 58
    Width = 51
    Height = 13
    Caption = 'Valor Total'
  end
  object Label7: TLabel
    Left = 56
    Top = 101
    Width = 36
    Height = 13
    Caption = 'Monitor'
  end
  object Label8: TLabel
    Left = 192
    Top = 101
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label9: TLabel
    Left = 328
    Top = 101
    Width = 51
    Height = 13
    Caption = 'Valor Total'
  end
  object edtValorMouse: TEdit
    Left = 56
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtValorTeclado: TEdit
    Left = 56
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtValorMonitor: TEdit
    Left = 56
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ValorTotalMouse: TEdit
    Left = 328
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ValorTotalTeclado: TEdit
    Left = 328
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ValorTotalMonitor: TEdit
    Left = 328
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object speQuantMouse: TSpinEdit
    Left = 192
    Top = 37
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 0
  end
  object speQuantTeclado: TSpinEdit
    Left = 192
    Top = 77
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 7
    Value = 0
  end
  object speQuantMonitor: TSpinEdit
    Left = 192
    Top = 120
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 0
  end
  object Button1: TButton
    Left = 464
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 464
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 464
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 11
    OnClick = Button3Click
  end
end
