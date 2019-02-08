object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 408
  ClientWidth = 795
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = -6
    Top = 0
    Width = 785
    Height = 369
    ActivePage = TabSheet5
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1052#1072#1088#1096#1088#1091#1090#1099
      object Label1: TLabel
        Left = 81
        Top = 275
        Width = 68
        Height = 13
        Caption = #8470' '#1052#1072#1088#1096#1088#1091#1090#1072
      end
      object Label2: TLabel
        Left = 208
        Top = 275
        Width = 40
        Height = 13
        Caption = #1053#1072#1095#1072#1083#1086' '
      end
      object Label3: TLabel
        Left = 335
        Top = 275
        Width = 31
        Height = 13
        Caption = #1050#1086#1085#1077#1094
      end
      object Label4: TLabel
        Left = 462
        Top = 275
        Width = 31
        Height = 13
        Caption = #1055#1086#1077#1079#1076
      end
      object Label20: TLabel
        Left = 208
        Top = 323
        Width = 104
        Height = 13
        Caption = #1087#1086' '#1085#1086#1084#1077#1088#1091' '#1084#1072#1088#1096#1088#1091#1090#1072
      end
      object marshrutiDBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 781
        Height = 273
        DataSource = DataModule1.marshrutiDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 0
        Top = 287
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 0
        Top = 313
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 2
        OnClick = Button2Click
      end
      object Edit1: TEdit
        Left = 81
        Top = 289
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 3
        OnKeyPress = Edit1KeyPress
      end
      object Edit4: TEdit
        Left = 462
        Top = 289
        Width = 121
        Height = 21
        MaxLength = 20
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 81
        Top = 315
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 5
        OnKeyPress = Edit5KeyPress
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 208
        Top = 289
        Width = 121
        Height = 21
        KeyField = 'idOstanovki'
        ListField = 'idOstanovki'
        ListSource = DataModule1.ostanovkiDataSource
        TabOrder = 6
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 335
        Top = 289
        Width = 121
        Height = 21
        KeyField = 'idOstanovki'
        ListField = 'idOstanovki'
        ListSource = DataModule1.ost2DataSource
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1052#1072#1088#1096#1088#1091#1090#1099'-'#1054#1089#1090#1072#1085#1086#1074#1082#1080
      ImageIndex = 1
      object Label5: TLabel
        Left = 81
        Top = 275
        Width = 111
        Height = 13
        Caption = #1052#1072#1088#1096#1088#1091#1090#1086'-'#1054#1089#1090#1072#1085#1086#1074#1082#1072
      end
      object Label6: TLabel
        Left = 208
        Top = 275
        Width = 71
        Height = 13
        Caption = #8470' '#1054#1089#1090#1072#1085#1086#1074#1082#1080
      end
      object Label7: TLabel
        Left = 335
        Top = 275
        Width = 68
        Height = 13
        Caption = #8470' '#1052#1072#1088#1096#1088#1091#1090#1072
      end
      object Label21: TLabel
        Left = 208
        Top = 323
        Width = 126
        Height = 13
        Caption = #1087#1086' '#1052#1072#1088#1096#1088#1091#1090#1086'-'#1054#1089#1090#1072#1085#1086#1074#1082#1077
      end
      object marshrutiOstanovkiDBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 781
        Height = 273
        DataSource = DataModule1.marshrutiOstanovkiDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button3: TButton
        Left = 0
        Top = 287
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 0
        Top = 313
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 2
        OnClick = Button4Click
      end
      object Edit6: TEdit
        Left = 81
        Top = 289
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 3
        OnKeyPress = Edit6KeyPress
      end
      object Edit9: TEdit
        Left = 81
        Top = 315
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 4
        OnKeyPress = Edit9KeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 208
        Top = 289
        Width = 121
        Height = 21
        KeyField = 'idOstanovki'
        ListField = 'idOstanovki'
        ListSource = DataModule1.ostanovkiDataSource
        TabOrder = 5
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 335
        Top = 289
        Width = 121
        Height = 21
        KeyField = 'idMarshruta'
        ListField = 'idMarshruta'
        ListSource = DataModule1.marshrutiDataSource
        TabOrder = 6
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1054#1089#1090#1072#1085#1086#1074#1082#1080
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label9: TLabel
        Left = 208
        Top = 274
        Width = 104
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1089#1090#1072#1085#1086#1074#1082#1080
      end
      object Label8: TLabel
        Left = 81
        Top = 274
        Width = 71
        Height = 13
        Caption = #8470' '#1054#1089#1090#1072#1085#1086#1074#1082#1080
      end
      object Label22: TLabel
        Left = 208
        Top = 323
        Width = 107
        Height = 13
        Caption = #1087#1086' '#1085#1086#1084#1077#1088#1091' '#1086#1089#1090#1072#1085#1086#1074#1082#1080
      end
      object ostanovkiDBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 273
        DataSource = DataModule1.ostanovkiDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Edit10: TEdit
        Left = 81
        Top = 289
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 1
        OnKeyPress = Edit10KeyPress
      end
      object Edit11: TEdit
        Left = 208
        Top = 289
        Width = 121
        Height = 21
        MaxLength = 20
        TabOrder = 2
      end
      object Edit12: TEdit
        Left = 81
        Top = 315
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 3
        OnKeyPress = Edit12KeyPress
      end
      object Button5: TButton
        Left = 0
        Top = 287
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 0
        Top = 313
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 5
        OnClick = Button6Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
      ImageIndex = 3
      object Label10: TLabel
        Left = 81
        Top = 275
        Width = 74
        Height = 13
        Caption = #8470' '#1056#1072#1089#1087#1080#1089#1072#1085#1080#1103
      end
      object Label11: TLabel
        Left = 208
        Top = 275
        Width = 68
        Height = 13
        Caption = #8470' '#1052#1072#1088#1096#1088#1091#1090#1072
      end
      object Label12: TLabel
        Left = 335
        Top = 275
        Width = 71
        Height = 13
        Caption = #8470' '#1054#1089#1090#1072#1085#1086#1074#1082#1080
      end
      object Label13: TLabel
        Left = 462
        Top = 275
        Width = 30
        Height = 13
        Caption = #1042#1088#1077#1084#1103
      end
      object Label14: TLabel
        Left = 589
        Top = 275
        Width = 66
        Height = 13
        Caption = #1044#1077#1085#1100' '#1085#1077#1076#1077#1083#1080
      end
      object Label23: TLabel
        Left = 208
        Top = 323
        Width = 112
        Height = 13
        Caption = #1087#1086' '#1085#1086#1084#1077#1088#1091' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103
      end
      object raspisanieDBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 273
        DataSource = DataModule1.raspisanieDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Edit13: TEdit
        Left = 81
        Top = 289
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 1
        OnKeyPress = Edit13KeyPress
      end
      object Edit17: TEdit
        Left = 589
        Top = 289
        Width = 121
        Height = 21
        MaxLength = 15
        TabOrder = 2
      end
      object Edit18: TEdit
        Left = 81
        Top = 315
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 3
        OnKeyPress = Edit18KeyPress
      end
      object Button7: TButton
        Left = 0
        Top = 287
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 0
        Top = 313
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 5
        OnClick = Button8Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 462
        Top = 289
        Width = 121
        Height = 21
        Date = 42381.623360324080000000
        Format = 'HH:mm:ss'
        Time = 42381.623360324080000000
        DateMode = dmUpDown
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 6
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 206
        Top = 289
        Width = 121
        Height = 21
        KeyField = 'idMarshruta'
        ListField = 'idMarshruta'
        ListSource = DataModule1.marshrutiDataSource
        TabOrder = 7
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 333
        Top = 289
        Width = 121
        Height = 21
        KeyField = 'idOstanovki'
        ListField = 'idOstanovki'
        ListSource = DataModule1.ostanovkiDataSource
        TabOrder = 8
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
      ImageIndex = 4
      object Label15: TLabel
        Left = 81
        Top = 274
        Width = 74
        Height = 13
        Caption = #8470' '#1056#1072#1089#1089#1090#1086#1103#1085#1080#1103
      end
      object Label16: TLabel
        Left = 208
        Top = 274
        Width = 110
        Height = 13
        Caption = #8470' '#1054#1089#1090#1072#1085#1086#1074#1082#1080' '#1085#1072#1095#1072#1083#1072
      end
      object Label17: TLabel
        Left = 335
        Top = 274
        Width = 104
        Height = 13
        Caption = #8470' '#1054#1089#1090#1072#1085#1086#1074#1082#1080' '#1082#1086#1085#1094#1072
      end
      object Label18: TLabel
        Left = 462
        Top = 274
        Width = 58
        Height = 13
        Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
      end
      object Label19: TLabel
        Left = 589
        Top = 274
        Width = 68
        Height = 13
        Caption = #8470' '#1052#1072#1088#1096#1088#1091#1090#1072
      end
      object Label24: TLabel
        Left = 208
        Top = 323
        Width = 112
        Height = 13
        Caption = #1087#1086' '#1085#1086#1084#1077#1088#1091' '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1103
      end
      object rastoyanieDBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 777
        Height = 273
        DataSource = DataModule1.rastoyanieDataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Edit19: TEdit
        Left = 81
        Top = 289
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 1
        OnKeyPress = Edit19KeyPress
      end
      object Edit22: TEdit
        Left = 462
        Top = 289
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 2
        OnKeyPress = Edit22KeyPress
      end
      object Edit24: TEdit
        Left = 81
        Top = 315
        Width = 121
        Height = 21
        MaxLength = 6
        TabOrder = 3
        OnKeyPress = Edit24KeyPress
      end
      object Button9: TButton
        Left = 0
        Top = 287
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 0
        Top = 313
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 5
        OnClick = Button10Click
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 208
        Top = 289
        Width = 121
        Height = 21
        KeyField = 'idOstanovki'
        ListField = 'idOstanovki'
        ListSource = DataModule1.ostanovkiDataSource
        TabOrder = 6
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 335
        Top = 289
        Width = 121
        Height = 21
        KeyField = 'idOstanovki'
        ListField = 'idOstanovki'
        ListSource = DataModule1.ost2DataSource
        TabOrder = 7
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 589
        Top = 289
        Width = 124
        Height = 21
        KeyField = 'idMarshruta'
        ListField = 'idMarshruta'
        ListSource = DataModule1.marshrutiDataSource
        TabOrder = 8
      end
    end
  end
  object Button11: TButton
    Left = 4
    Top = 375
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button11Click
  end
  object MainMenu1: TMainMenu
    Left = 728
    Top = 312
    object N1: TMenuItem
      Caption = #1047#1072#1087#1088#1086#1089#1099
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object N3: TMenuItem
        Caption = #1052#1072#1088#1096#1088#1091#1090#1099' '#1087#1086' '#1090#1080#1087#1091' '#1087#1086#1077#1079#1076#1072
        OnClick = N3Click
      end
      object N21: TMenuItem
        Caption = #1056#1072#1089#1090#1086#1103#1085#1080#1077
        OnClick = N21Click
      end
      object N4: TMenuItem
        Caption = #1042#1089#1077' '#1089#1090#1072#1085#1094#1080#1080
        OnClick = N4Click
      end
    end
  end
end
