﻿object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 684
  ClientWidth = 1106
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
    Left = 40
    Top = 80
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 40
    Top = 162
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 40
    Top = 208
    Width = 101
    Height = 13
    Caption = 'Pre'#231'o / Pre'#231'o por kilo'
  end
  object Label4: TLabel
    Left = 40
    Top = 123
    Width = 47
    Height = 13
    Caption = 'Categoria'
  end
  object Label5: TLabel
    Left = 105
    Top = 251
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label6: TLabel
    Left = 105
    Top = 298
    Width = 23
    Height = 13
    Caption = 'Peso'
  end
  object Label7: TLabel
    Left = 262
    Top = 302
    Width = 80
    Height = 13
    Caption = 'Valor a Adicionar'
  end
  object Label8: TLabel
    Left = 174
    Top = 302
    Width = 84
    Height = 13
    Caption = 'Nome Do Produto'
  end
  object Label9: TLabel
    Left = 478
    Top = 35
    Width = 33
    Height = 15
    Caption = 'CAIXA'
    GlowSize = 1
  end
  object Label10: TLabel
    Left = 64
    Top = 33
    Width = 125
    Height = 13
    Caption = 'REGISTRO DE PRODUTOS'
  end
  object Label11: TLabel
    Left = 379
    Top = 76
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Label12: TLabel
    Left = 530
    Top = 76
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label13: TLabel
    Left = 105
    Top = 349
    Width = 94
    Height = 13
    Caption = 'LOG DE CADASTRO'
  end
  object trespordois: TRadioButton
    Left = 174
    Top = 236
    Width = 113
    Height = 17
    Caption = '3 por 2'
    TabOrder = 0
  end
  object rdbPromCp2Desc50: TRadioButton
    Left = 174
    Top = 252
    Width = 210
    Height = 17
    Caption = '50% de Desconto No Segundo Produto'
    TabOrder = 1
  end
  object rdbCompxly: TRadioButton
    Left = 174
    Top = 275
    Width = 146
    Height = 17
    Caption = 'Compre X e leve y por mais '
    TabOrder = 2
  end
  object edtNome: TEdit
    Left = 40
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Feij'#227'o'
  end
  object edtCategoria: TEdit
    Left = 40
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Alimento'
  end
  object Button2: TButton
    Left = 167
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 40
    Top = 368
    Width = 233
    Height = 161
    ItemHeight = 13
    TabOrder = 6
  end
  object RadioButton4: TRadioButton
    Left = 174
    Top = 190
    Width = 98
    Height = 17
    Caption = 'Sem Promo'#231#227'o'
    Checked = True
    TabOrder = 7
    TabStop = True
  end
  object CaixaListBox: TListBox
    Left = 379
    Top = 123
    Width = 233
    Height = 52
    Enabled = False
    ItemHeight = 13
    TabOrder = 8
  end
  object edtnomenovoproduto: TEdit
    Left = 174
    Top = 317
    Width = 82
    Height = 21
    TabOrder = 9
  end
  object chBoxUnidade: TCheckBox
    Left = 40
    Top = 272
    Width = 59
    Height = 17
    Caption = 'Unidade?'
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = chBoxUnidadeClick
  end
  object chBoxPeso: TCheckBox
    Left = 40
    Top = 321
    Width = 59
    Height = 17
    Caption = 'Peso?'
    TabOrder = 11
    OnClick = chBoxPesoClick
  end
  object edtPreço: TEdit
    Left = 40
    Top = 227
    Width = 121
    Height = 21
    TabOrder = 12
    Text = '0'
  end
  object speID: TSpinEdit
    Left = 40
    Top = 180
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 13
    Value = 0
  end
  object edtValorAdicional: TEdit
    Left = 262
    Top = 317
    Width = 80
    Height = 21
    TabOrder = 14
    Text = '0'
  end
  object rdbDescPorc: TRadioButton
    Left = 174
    Top = 213
    Width = 98
    Height = 17
    Caption = 'Desconto de %?'
    TabOrder = 15
  end
  object edtPorcent: TEdit
    Left = 278
    Top = 209
    Width = 50
    Height = 21
    TabOrder = 16
    Text = '0'
  end
  object edtPeso: TEdit
    Left = 105
    Top = 317
    Width = 56
    Height = 21
    TabOrder = 17
    Text = '0'
  end
  object CaixaProduto: TEdit
    Left = 379
    Top = 95
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 18
    Text = 'Feij'#227'o'
  end
  object Button1: TButton
    Left = 608
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Comprar'
    Enabled = False
    TabOrder = 19
    OnClick = Button1Click
  end
  object speQuant: TSpinEdit
    Left = 530
    Top = 95
    Width = 56
    Height = 22
    Enabled = False
    MaxValue = 0
    MinValue = 0
    TabOrder = 20
    Value = 0
  end
  object speEstoque: TSpinEdit
    Left = 105
    Top = 270
    Width = 57
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 21
    Value = 0
  end
end