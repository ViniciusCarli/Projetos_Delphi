object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro De Produtos'
  ClientHeight = 281
  ClientWidth = 468
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
    Left = 8
    Top = 24
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 52
    Top = 24
    Width = 38
    Height = 13
    Caption = 'Produto'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 402
    Top = 21
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 264
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 192
    Top = 24
    Width = 23
    Height = 13
    Caption = 'Peso'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 40
    Width = 38
    Height = 21
    DataField = 'ID'
    DataSource = dtsProdutos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 52
    Top = 40
    Width = 134
    Height = 21
    DataField = 'Produto'
    DataSource = dtsProdutos
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 402
    Top = 40
    Width = 56
    Height = 21
    DataField = 'Quantidade'
    DataSource = dtsProdutos
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 264
    Top = 40
    Width = 132
    Height = 21
    DataField = 'Preco'
    DataSource = dtsProdutos
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 192
    Top = 40
    Width = 66
    Height = 21
    DataField = 'Peso'
    DataSource = dtsProdutos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 67
    Width = 450
    Height = 158
    DataSource = dtsProdutos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 231
    Width = 450
    Height = 25
    DataSource = dtsProdutos
    TabOrder = 6
  end
  object cdsProdutos: TClientDataSet
    PersistDataPacket.Data = {
      830000009619E0BD010000001800000005000000000003000000830002494404
      000100000000000750726F6475746F0100490000000100055749445448020002
      000A000A5175616E746964616465040001000000000005507265636F08000400
      0000010007535542545950450200490006004D6F6E657900045065736F080004
      00000000000000}
    Active = True
    Aggregates = <>
    FileName = 
      'C:\Users\Vinicius Bustamanti\Documents\Embarcadero\Studio\Projec' +
      'ts\Introdu'#231#227'o a banco de dados\Mercado\Produtos.cds'
    Params = <>
    Left = 584
    Top = 48
    object cdsProdutosID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object cdsProdutosProduto: TStringField
      DisplayWidth = 18
      FieldName = 'Produto'
      Size = 10
    end
    object cdsProdutosQuantidade: TIntegerField
      DisplayWidth = 13
      FieldName = 'Quantidade'
    end
    object cdsProdutosPreco: TCurrencyField
      DisplayWidth = 16
      FieldName = 'Preco'
    end
    object cdsProdutosPeso: TFloatField
      DisplayWidth = 10
      FieldName = 'Peso'
    end
  end
  object dtsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 584
    Top = 96
  end
end
