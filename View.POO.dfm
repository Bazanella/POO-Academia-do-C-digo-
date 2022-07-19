object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 82
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Marcelo'
  end
  object Edit2: TEdit
    Left = 135
    Top = 82
    Width = 130
    Height = 21
    TabOrder = 1
    Text = 'Bazanella'
  end
  object Button1: TButton
    Left = 8
    Top = 112
    Width = 121
    Height = 25
    Caption = 'Nome Completo'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 336
    Top = 24
    Width = 247
    Height = 169
    TabOrder = 3
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 24
    Width = 185
    Height = 41
    Caption = 'Tipo de Pessoa'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
    TabOrder = 4
  end
end
