object Form11: TForm11
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1047#1072#1087#1088#1086#1089#1099
  ClientHeight = 332
  ClientWidth = 726
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 729
    Height = 289
    DataSource = DataModule1.zaprosDataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 295
    Width = 169
    Height = 25
    Caption = #1044#1083#1080#1085#1072' '#1084#1072#1088#1096#1088#1091#1090#1086#1074
    TabOrder = 1
    OnClick = Button1Click
  end
  object Обновить: TButton
    Left = 629
    Top = 295
    Width = 89
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 2
    OnClick = ОбновитьClick
  end
  object Button2: TButton
    Left = 231
    Top = 295
    Width = 169
    Height = 25
    Caption = #1042#1089#1077' '#1089#1090#1072#1085#1094#1080#1080
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 431
    Top = 295
    Width = 169
    Height = 25
    Caption = #1056#1072#1089#1094#1077#1085#1082#1080
    TabOrder = 4
    OnClick = Button3Click
  end
  object Panel1: TPanel
    Left = 431
    Top = 208
    Width = 169
    Height = 81
    TabOrder = 5
    Visible = False
    object Label13: TLabel
      Left = 18
      Top = 42
      Width = 105
      Height = 13
      Caption = #1069#1082#1089#1087#1088#1077#1089#1089' - 1200 '#1088#1091#1073'.'
    end
    object Label12: TLabel
      Left = 18
      Top = 23
      Width = 107
      Height = 13
      Caption = #1043#1086#1088#1086#1076#1089#1082#1086#1081' - 650 '#1088#1091#1073'.'
    end
    object Label14: TLabel
      Left = 18
      Top = 61
      Width = 139
      Height = 13
      Caption = #1052#1077#1078#1076#1091#1075#1086#1088#1086#1076#1085#1080#1081' -1700 '#1088#1091#1073'.'
    end
    object Label11: TLabel
      Left = 45
      Top = 4
      Width = 86
      Height = 13
      Caption = #1056#1072#1089#1094#1077#1085#1082#1080' '#1085#1072' 1 '#1082#1084
    end
  end
end
