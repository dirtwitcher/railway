object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 408
  Width = 806
  object vokzalADOConnection: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=db_vokzal;DESCRIPTION=vkzl;SERVER=localhost;UID=root;DAT' +
      'ABASE=vokzal;PORT=3306"'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 64
    Top = 184
  end
  object marshrutiADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from marshruti;')
    Left = 64
    Top = 256
  end
  object marshrutiOstanovkiADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from marshrutiOstanovki;')
    Left = 208
    Top = 256
  end
  object ostanovkiADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ostanovki;')
    Left = 360
    Top = 256
  end
  object rastoyanieADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from rastoyanie;')
    Left = 488
    Top = 256
  end
  object raspisanieADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from raspisanie;')
    Left = 608
    Top = 256
  end
  object marshrutiDataSource: TDataSource
    DataSet = marshrutiADOQuery
    Left = 64
    Top = 328
  end
  object marshrutiOstanovkiDataSource: TDataSource
    DataSet = marshrutiOstanovkiADOQuery
    Left = 208
    Top = 328
  end
  object ostanovkiDataSource: TDataSource
    DataSet = ostanovkiADOQuery
    Left = 360
    Top = 328
  end
  object rastoyanieDataSource: TDataSource
    DataSet = rastoyanieADOQuery
    Left = 488
    Top = 328
  end
  object raspisanieDataSource: TDataSource
    DataSet = raspisanieADOQuery
    Left = 608
    Top = 328
  end
  object polzovatelADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    DataSource = marshrutiDataSource
    Parameters = <>
    SQL.Strings = (
      'select '
      ''
      
        'concat(T1.nazvanieOstanovki,'#39' - '#39',T2.nazvanieOstanovki) as Nazva' +
        'nieMarshruta, '
      'T1.nazvanieOstanovki as nach,'
      'raspisanie.vremya as vremyaOtb,'
      'T2.nazvanieOstanovki as kon,'
      'raspisanie.den,'
      'marshruti.typeOfTrain,'
      'marshruti.idMarshruta'
      ''
      'from'
      'ostanovki as T1 '
      'inner join '
      'ostanovki as T2 '
      'inner join '
      'marshruti '
      'inner join '
      'raspisanie  '
      ''
      ' on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and '
      #9'(T2.idOstanovki = marshruti.idOstanovkiKonec) and '
      #9'(raspisanie.idOstanovki = marshruti.idOstanovkiNachalo) '
      '      '
      'order by marshruti.idMarshruta;')
    Left = 608
    Top = 72
  end
  object polzovatelDataSource: TDataSource
    DataSet = polzovatelADOQuery
    Left = 608
    Top = 136
  end
  object rastADOQuery: TADOQuery
    Connection = vokzalADOConnection
    Parameters = <>
    Left = 736
    Top = 72
  end
  object exceptADOQuery: TADOQuery
    Connection = vokzalADOConnection
    Parameters = <>
    Left = 736
    Top = 136
  end
  object ost2ADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ostanovki;')
    Left = 360
    Top = 72
  end
  object ost2DataSource: TDataSource
    DataSet = ost2ADOQuery
    Left = 360
    Top = 144
  end
  object reportADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select concat(T1.nazvanieOstanovki," - " ,T2.nazvanieOstanovki) ' +
        'as NazvanieMarshruta, T1.nazvanieOstanovki as nach, raspisanie.v' +
        'remya as vremyaOtb, T2.nazvanieOstanovki as kon, raspisanie.den,' +
        ' marshruti.typeOfTrain from ostanovki as T1 inner join ostanovki' +
        ' as T2 inner join marshruti inner join raspisanie on (T1.idOstan' +
        'ovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marsh' +
        'ruti.idOstanovkiKonec) and (raspisanie.idOstanovki = marshruti.i' +
        'dOstanovkiNachalo) order by marshruti.idMarshruta, raspisanie.vr' +
        'emya;')
    Left = 40
    Top = 8
  end
  object reportDataSource: TDataSource
    DataSet = reportADOQuery
    Left = 144
    Top = 8
  end
  object report2ADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select T1.nazvanieOstanovki as nach, T2.nazvanieOstanovki as kon' +
        ', rastoyanie.rastoyanie from ostanovki as T1 inner join ostanovk' +
        'i as T2 inner join rastoyanie on (rastoyanie.idOstanovkiNachalo ' +
        '= T1.idOstanovki) and (rastoyanie.idOstanovkiKonec = T2.idOstano' +
        'vki) group by T1.idOstanovki;')
    Left = 40
    Top = 56
  end
  object report2DataSource: TDataSource
    DataSet = report2ADOQuery
    Left = 144
    Top = 56
  end
  object report3ADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select concat(T1.nazvanieOstanovki," - ",T2.nazvanieOstanovki) a' +
        's nazvanieMarshruta, T3.nazvanieOstanovki, raspisanie.vremya as ' +
        'vremyaOtbitiya from ostanovki as T1 inner join ostanovki as T2 i' +
        'nner join ostanovki as T3 inner join marshruti inner join raspis' +
        'anie on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.' +
        'idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOsta' +
        'novki = T3.idOstanovki) and (raspisanie.idMarshruta = marshruti.' +
        'idMarshruta) where T3.idOstanovki between T1.idOstanovki and T2.' +
        'idOstanovki UNION select concat(T1.nazvanieOstanovki," - ",T2.na' +
        'zvanieOstanovki) as nazvanieMarshruta, T3.nazvanieOstanovki, ras' +
        'pisanie.vremya as vremyaOtbitiya from ostanovki as T1 inner join' +
        ' ostanovki as T2 inner join ostanovki as T3 inner join marshruti' +
        ' inner join raspisanie on (T1.idOstanovki = marshruti.idOstanovk' +
        'iNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and ' +
        '(raspisanie.idOstanovki = T3.idOstanovki) and (raspisanie.idMars' +
        'hruta = marshruti.idMarshruta) where T3.idOstanovki <= T1.idOsta' +
        'novki and T3.idOstanovki >= T2.idOstanovki order by nazvanieOsta' +
        'novki, vremyaOtbitiya;')
    Left = 40
    Top = 104
  end
  object report3DataSource: TDataSource
    DataSet = report3ADOQuery
    Left = 144
    Top = 104
  end
  object zaprosADOQuery: TADOQuery
    Connection = vokzalADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      ''
      
        'concat(T1.nazvanieOstanovki,'#39' - '#39',T2.nazvanieOstanovki) as Nazva' +
        'nieMarshruta, '
      'T1.nazvanieOstanovki as nach,'
      'raspisanie.vremya as vremyaOtb,'
      'T2.nazvanieOstanovki as kon,'
      'raspisanie.den,'
      'marshruti.typeOfTrain,'
      'marshruti.idMarshruta'
      ''
      'from'
      'ostanovki as T1 '
      'inner join '
      'ostanovki as T2 '
      'inner join '
      'marshruti '
      'inner join '
      'raspisanie  '
      ''
      ' on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and '
      #9'(T2.idOstanovki = marshruti.idOstanovkiKonec) and '
      #9'(raspisanie.idOstanovki = marshruti.idOstanovkiNachalo) '
      '      '
      'order by marshruti.idMarshruta;')
    Left = 440
    Top = 16
  end
  object zaprosDataSource: TDataSource
    DataSet = zaprosADOQuery
    Left = 544
    Top = 16
  end
end
