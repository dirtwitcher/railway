unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls, Unit3, frxClass,
  frxPreview, frxDBSet, Data.DB;

type
  TForm8 = class(TForm)
    polzDBGrid: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Image4: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Image5: TImage;
    PricePanel: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Button3: TButton;
    Label19: TLabel;
    Label20: TLabel;

     procedure Shag1(Sender: TObject);
     procedure Shag2(Sender: TObject);
     procedure AllOst(Sender: TObject);
     procedure AllOst2(Sender: TObject);
     procedure podschetRast(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    flag:integer;
    a:integer;
    a1:integer;
    b:integer;
    c:integer;
    sumC:integer;
    itog:integer;
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit6, Unit1, Unit4;

procedure TForm8.Button1Click(Sender: TObject);
var m1: TfrxMemoView;
    m2: TfrxMemoView;
    m3: TfrxMemoView;
    m4: TfrxMemoView;
    m5: TfrxMemoView;
    m6: TfrxMemoView;
    m7: TfrxMemoView;
    m8: TfrxMemoView;
    m9: TfrxMemoView;
    m10: TfrxMemoView;
    m11: TfrxMemoView;
    m12: TfrxMemoView;
    m14: TfrxMemoView;
    m15: TfrxMemoView;
    m16: TfrxMemoView;
    m17: TfrxMemoView;
    m18: TfrxMemoView;
begin

case flag of
  1:
  begin
      label7.Caption:=polzDBGrid.SelectedField.Text;

      DataModule1.exceptADOQuery.Active:=False;
      DataModule1.exceptADOQuery.SQL.Clear;
      DataModule1.exceptADOQuery.SQL.Add('select nazvanieOstanovki from ostanovki where nazvanieOstanovki = '''+Label7.Caption+''' ');
      DataModule1.exceptADOQuery.Active:=True;

      if (DataModule1.exceptADOQuery.FieldValues['nazvanieOstanovki'] = null) then
      begin
      ShowMessage('Пожалуйста, выберете в таблице маршрутов остановку.');
      Label7.Caption:='';
      end
      else

        begin
      label7.Visible:=True;
      Image1.Visible:=True;
      Image6.Visible:=False;
      Image7.Visible:=True;
      Edit1.Text:=label7.Caption;
      Edit1.ReadOnly:=True;
      Button2.Visible:=True;
      flag:=flag+1;
      label18.Caption:=DataModule1.exceptADOQuery.FieldValues['nazvanieOstanovki'];
        end;

  end;

  2:
  begin
      label8.Caption:=polzDBGrid.SelectedField.Text;
                  try
      DataModule1.exceptADOQuery.Active:=False;
      DataModule1.exceptADOQuery.SQL.Clear;
      DataModule1.exceptADOQuery.SQL.Add('select vremya from raspisanie where vremya = '''+Label8.Caption+''' ');
      DataModule1.exceptADOQuery.Active:=True;
                  except
                    ShowMessage('Выберете в таблице удобное для Вас время отправления.');
                    Exit;
                    end;

      label8.Visible:=True;
      Image2.Visible:=True;
      Image7.Visible:=False;
      Image8.Visible:=True;
      flag:=flag+1;
      AllOst2(Sender);
      label18.Caption:=IntToStr(flag);

  end;

  3:
  begin
      label9.Caption:=polzDBGrid.SelectedField.Text;

      DataModule1.exceptADOQuery.Active:=False;
      DataModule1.exceptADOQuery.SQL.Clear;
      DataModule1.exceptADOQuery.SQL.Add('select nazvanieOstanovki from ostanovki where nazvanieOstanovki = '''+Label9.Caption+''' ');
      DataModule1.exceptADOQuery.Active:=True;

      if (DataModule1.exceptADOQuery.FieldValues['nazvanieOstanovki'] = null) then
      begin
      ShowMessage('Пожалуйста, выберете в таблице маршрутов остановку.');
      label9.Caption:='';
      end
      else

      begin
      Label15.Caption:='Тип поезда';
      Label15.Visible:=True;
      Label16.Visible:=True;
      Label16.Caption:=DataModule1.polzovatelADOQuery.FieldByName('typeOfTrain').Value;

      Label19.Caption:='Маршрут';
      Label19.Visible:=True;
      Label20.Visible:=True;
      Label20.Caption:=DataModule1.polzovatelADOQuery.FieldByName('nazvanieMarshruta').Value;

      label9.Visible:=True;
      Image3.Visible:=True;
      Image8.Visible:=False;
      Image9.Visible:=True;
      Button1.Caption:='Рассчитать';
      flag:=flag+1;
      label18.Caption:=IntToStr(flag);
      end;
  end;

  4:
  begin
      PricePanel.Visible:=True;
      podschetRast(Sender);
      if (Label16.Caption='Городской') then itog:=sumC*650;
      if (Label16.Caption='Экспресс') then itog:=sumC*1200;
      if (Label16.Caption='Междугородний') then itog:=sumC*1700;
      Label10.Caption:=IntToStr(sumC)+' км';
      Label17.Visible:=True;
      Label17.Caption:='Итог: '+IntToStr(itog)+' руб.';
      Label10.Visible:=True;
      Image4.Visible:=True;
      Image9.Visible:=False;
      Image10.Visible:=True;
      Button1.Caption:='Печать';
      flag:=flag+1;
      label18.Caption:=IntToStr(flag);
  end;

  5:
  begin

  m1 := TfrxMemoView(Form4.frxReport1.FindObject('Memo1'));
  if m1 <> nil then
  m1.Memo.Text := Label20.Caption;

  m2 := TfrxMemoView(Form4.frxReport1.FindObject('Memo2'));
  if m2 <> nil then
  m2.Memo.Text := Label7.Caption;

  m3 := TfrxMemoView(Form4.frxReport1.FindObject('Memo3'));
  if m3 <> nil then
  m3.Memo.Text := Label9.Caption;

  m4 := TfrxMemoView(Form4.frxReport1.FindObject('Memo4'));
  if m4 <> nil then
  m4.Memo.Text := Label8.Caption;

  m5 := TfrxMemoView(Form4.frxReport1.FindObject('Memo5'));
  if m5 <> nil then
  m5.Memo.Text := IntToStr(sumC)+' км';

  m6 := TfrxMemoView(Form4.frxReport1.FindObject('Memo6'));
  if m6 <> nil then
  m6.Memo.Text := Label16.Caption;

  m7 := TfrxMemoView(Form4.frxReport1.FindObject('Memo7'));
  if m7 <> nil then
  begin
      if (Label16.Caption='Городской') then m7.Memo.Text:='650 руб.';
      if (Label16.Caption='Экспресс') then m7.Memo.Text:='1200 руб.';
      if (Label16.Caption='Междугородний') then m7.Memo.Text:='1700 руб.';
  end;

  m8 := TfrxMemoView(Form4.frxReport1.FindObject('Memo8'));
  if m8 <> nil then
  m8.Memo.Text := IntToStr(itog)+' руб.';

  m9 := TfrxMemoView(Form4.frxReport1.FindObject('Memo9'));
  if m9 <> nil then
  m9.Memo.Text := IntToStr(Random(100));

  m10 := TfrxMemoView(Form4.frxReport1.FindObject('Memo10'));
  if m10 <> nil then
  m10.Memo.Text := Label8.Caption;

  m11 := TfrxMemoView(Form4.frxReport1.FindObject('Memo11'));
  if m11 <> nil then
  m11.Memo.Text := IntToStr(Random(15));

  m12 := TfrxMemoView(Form4.frxReport1.FindObject('Memo12'));
  if m12 <> nil then
  m12.Memo.Text := IntToStr(itog)+' руб.';

  m14 := TfrxMemoView(Form4.frxReport1.FindObject('Memo14'));
  if m14 <> nil then
  m14.Memo.Text := Label20.Caption;

  m15 := TfrxMemoView(Form4.frxReport1.FindObject('Memo15'));
  if m15 <> nil then
  m15.Memo.Text := Label7.Caption;

  m16 := TfrxMemoView(Form4.frxReport1.FindObject('Memo16'));
  if m16 <> nil then
  m16.Memo.Text := Label9.Caption;

  m17 := TfrxMemoView(Form4.frxReport1.FindObject('Memo17'));
  if m17 <> nil then
  m17.Memo.Text := Label8.Caption;

  m18 := TfrxMemoView(Form4.frxReport1.FindObject('Memo18'));
  if m18 <> nil then
  m18.Memo.Text := 'Цена '+IntToStr(itog)+' руб.';

      Form4.frxReport1.ShowReport();

   //   Form4.frxReport1.Print;

      Image10.Visible:=False;
      Image5.Visible:=True;
      label18.Caption:=IntToStr(flag);
  end

  else ShowMessage('что-то пошло не так');
end;


end;

procedure TForm8.Button2Click(Sender: TObject);
begin

case flag of
 2:
  begin
      label7.Caption:='';
      label7.Visible:=False;
      Image1.Visible:=False;
      Image6.Visible:=true;
      Image7.Visible:=False;
      Edit1.Text:='';
      Edit1.ReadOnly:=False;
      Button2.Visible:=False;
      Shag1(Sender);
      flag:=flag-1;
      label18.Caption:=IntToStr(flag);
  end;

  3:
  begin
      label8.Caption:='';
      label8.Visible:=False;

      Image2.Visible:=False;
      Image7.Visible:=True;
      Image8.Visible:=False;
      Shag2(Sender);
      flag:=flag-1;
      label18.Caption:=IntToStr(flag);
  end;

  4:
  begin
      label9.Caption:='';
      Label9.Visible:=False;
      Label15.Caption:='';
      Label15.Visible:=False;
      Label16.Caption:='';
      Label16.Visible:=False;
      Label19.Caption:='';
      Label19.Visible:=False;
      Label20.Caption:='';
      Label20.Visible:=False;

      Image3.Visible:=False;
      Image8.Visible:=True;
      Image9.Visible:=False;

      Button1.Caption:='Далее';
      AllOst2(Sender);
      flag:=flag-1;
      label18.Caption:=IntToStr(flag);
  end;

  5:
  begin
      PricePanel.Visible:=False;

      Label10.Caption:='';
      Label10.Visible:=False;
      Label17.Visible:=False;
      Label17.Caption:='';

      Image4.Visible:=False;
      Image5.Visible:=False;
      Image9.Visible:=True;
      Image10.Visible:=False;

      Button1.Caption:='Рассчитать';
      flag:=flag-1;
      label18.Caption:=IntToStr(flag);
  end;

  else ShowMessage('что-то пошло не так');
end;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm8.Edit1Change(Sender: TObject);
begin
 // Like
if Edit1.Text='' then
  Shag1(Sender);

if Edit1.Text<>'' then
  Shag2(Sender);

if Edit1.Text='*' then
  AllOst(Sender);
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form6.Close;
Form8.Close;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
Shag1(Sender);
flag:=1;
Form8.Caption:='Пользователь';
label18.Caption:=IntToStr(flag);
end;





procedure TForm8.Shag1;
begin
DataModule1.polzovatelADOQuery.Active:=False;
DataModule1.polzovatelADOQuery.SQL.Clear;
DataModule1.polzovatelADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - " ,T2.nazvanieOstanovki) as NazvanieMarshruta, T1.nazvanieOstanovki as nach, raspisanie.vremya as vremyaOtb, T2.nazvanieOstanovki as kon, raspisanie.den, marshruti.typeOfTrain');
DataModule1.polzovatelADOQuery.SQL.Add(' from ostanovki as T1 inner join ostanovki as T2 inner join marshruti inner join raspisanie');
DataModule1.polzovatelADOQuery.SQL.Add(' on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = marshruti.idOstanovkiNachalo) order by marshruti.idMarshruta, raspisanie.vremya;');
DataModule1.polzovatelADOQuery.Active:=True;
polzDBGrid.Columns[0].Title.Caption:='Название маршрута';
polzDBGrid.Columns[0].Width:=200;
polzDBGrid.Columns[1].Title.Caption:='Начальная станция';
polzDBGrid.Columns[1].Width:=110;
polzDBGrid.Columns[2].Title.Caption:='Время отбытия';
polzDBGrid.Columns[2].Width:=90;
polzDBGrid.Columns[3].Title.Caption:='Конечная станция';
polzDBGrid.Columns[3].Width:=110;
polzDBGrid.Columns[4].Title.Caption:='День';
polzDBGrid.Columns[4].Width:=80;
polzDBGrid.Columns[5].Title.Caption:='Тип поезда';
polzDBGrid.Columns[5].Width:=100;

end;


procedure TForm8.Shag2;
begin
DataModule1.polzovatelADOQuery.Active:=False;
DataModule1.polzovatelADOQuery.SQL.Clear;
DataModule1.polzovatelADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - ",T2.nazvanieOstanovki) as nazvanieMarshruta, T3.nazvanieOstanovki, raspisanie.vremya as vremyaOtbitiya ');
DataModule1.polzovatelADOQuery.SQL.Add('from ostanovki as T1 inner join ostanovki as T2 inner join ostanovki as T3 inner join marshruti inner join raspisanie ');
DataModule1.polzovatelADOQuery.SQL.Add('on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = T3.idOstanovki) and (raspisanie.idMarshruta = marshruti.idMarshruta) ');
DataModule1.polzovatelADOQuery.SQL.Add('where T3.idOstanovki between T1.idOstanovki and T2.idOstanovki and T3.nazvanieOstanovki Like '''+Edit1.Text+'%'' ');
DataModule1.polzovatelADOQuery.SQL.Add('UNION ');
DataModule1.polzovatelADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - ",T2.nazvanieOstanovki) as nazvanieMarshruta, T3.nazvanieOstanovki, raspisanie.vremya as vremyaOtbitiya ');
DataModule1.polzovatelADOQuery.SQL.Add('from ostanovki as T1 inner join ostanovki as T2 inner join ostanovki as T3 inner join marshruti inner join raspisanie ');
DataModule1.polzovatelADOQuery.SQL.Add('on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = T3.idOstanovki) and (raspisanie.idMarshruta = marshruti.idMarshruta) ');
DataModule1.polzovatelADOQuery.SQL.Add('where T3.idOstanovki <= T1.idOstanovki and T3.idOstanovki >= T2.idOstanovki and T3.nazvanieOstanovki Like '''+Edit1.Text+'%'' ');
DataModule1.polzovatelADOQuery.SQL.Add('order by nazvanieOstanovki, vremyaOtbitiya; ');
DataModule1.polzovatelADOQuery.Active:=True;
polzDBGrid.Columns[0].Title.Caption:='Название маршрута';
polzDBGrid.Columns[0].Width:=200;
polzDBGrid.Columns[1].Title.Caption:='Название станции';
polzDBGrid.Columns[1].Width:=110;
polzDBGrid.Columns[2].Title.Caption:='Время отбытия';
polzDBGrid.Columns[2].Width:=90;

end;


procedure TForm8.AllOst;
begin
DataModule1.polzovatelADOQuery.Active:=False;
DataModule1.polzovatelADOQuery.SQL.Clear;
DataModule1.polzovatelADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - ",T2.nazvanieOstanovki) as nazvanieMarshruta, T3.nazvanieOstanovki, raspisanie.vremya as vremyaOtbitiya ');
DataModule1.polzovatelADOQuery.SQL.Add('from ostanovki as T1 inner join ostanovki as T2 inner join ostanovki as T3 inner join marshruti inner join raspisanie ');
DataModule1.polzovatelADOQuery.SQL.Add('on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = T3.idOstanovki) and (raspisanie.idMarshruta = marshruti.idMarshruta) ');
DataModule1.polzovatelADOQuery.SQL.Add('where T3.idOstanovki between T1.idOstanovki and T2.idOstanovki ');
DataModule1.polzovatelADOQuery.SQL.Add('UNION ');
DataModule1.polzovatelADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - ",T2.nazvanieOstanovki) as nazvanieMarshruta, T3.nazvanieOstanovki, raspisanie.vremya as vremyaOtbitiya ');
DataModule1.polzovatelADOQuery.SQL.Add('from ostanovki as T1 inner join ostanovki as T2 inner join ostanovki as T3 inner join marshruti inner join raspisanie ');
DataModule1.polzovatelADOQuery.SQL.Add('on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = T3.idOstanovki) and (raspisanie.idMarshruta = marshruti.idMarshruta) ');
DataModule1.polzovatelADOQuery.SQL.Add('where T3.idOstanovki <= T1.idOstanovki and T3.idOstanovki >= T2.idOstanovki ');
DataModule1.polzovatelADOQuery.SQL.Add('order by nazvanieOstanovki, vremyaOtbitiya; ');
DataModule1.polzovatelADOQuery.Active:=True;
polzDBGrid.Columns[0].Title.Caption:='Название маршрута';
polzDBGrid.Columns[0].Width:=200;
polzDBGrid.Columns[1].Title.Caption:='Название станции';
polzDBGrid.Columns[1].Width:=110;
polzDBGrid.Columns[2].Title.Caption:='Время отбытия';
polzDBGrid.Columns[2].Width:=90;

end;


procedure TForm8.AllOst2;
begin
DataModule1.polzovatelADOQuery.Active:=False;
DataModule1.polzovatelADOQuery.SQL.Clear;
DataModule1.polzovatelADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - ",T2.nazvanieOstanovki) as nazvanieMarshruta, T4.nazvanieOstanovki, typeOfTrain ');
DataModule1.polzovatelADOQuery.SQL.Add('from ostanovki as T1 inner join ostanovki as T2 inner join ostanovki as T3 inner join ostanovki as T4 inner join marshruti inner join raspisanie ');
DataModule1.polzovatelADOQuery.SQL.Add('on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = T3.idOstanovki) and (raspisanie.idMarshruta = marshruti.idMarshruta) and (T3.nazvanieOstanovki = '''+Label7.Caption+''') ');
DataModule1.polzovatelADOQuery.SQL.Add('where T3.idOstanovki between T1.idOstanovki and T2.idOstanovki and T4.idOstanovki between T1.idOstanovki and T2.idOstanovki ');
DataModule1.polzovatelADOQuery.SQL.Add('group by nazvanieMarshruta, T4.nazvanieOstanovki ');
DataModule1.polzovatelADOQuery.SQL.Add('UNION ');
DataModule1.polzovatelADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - ",T2.nazvanieOstanovki) as nazvanieMarshruta, T4.nazvanieOstanovki, typeOfTrain ');
DataModule1.polzovatelADOQuery.SQL.Add('from ostanovki as T1 inner join ostanovki as T2 inner join ostanovki as T3 inner join ostanovki as T4 inner join marshruti inner join raspisanie ');
DataModule1.polzovatelADOQuery.SQL.Add('on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = T3.idOstanovki) and (raspisanie.idMarshruta = marshruti.idMarshruta) and (T3.nazvanieOstanovki = '''+Label7.Caption+''') ');
DataModule1.polzovatelADOQuery.SQL.Add('where T3.idOstanovki <= T1.idOstanovki and T3.idOstanovki >= T2.idOstanovki and T4.idOstanovki <= T1.idOstanovki and T4.idOstanovki >= T2.idOstanovki ');
DataModule1.polzovatelADOQuery.SQL.Add('group by nazvanieMarshruta, T4.nazvanieOstanovki;');

DataModule1.polzovatelADOQuery.Active:=True;
polzDBGrid.Columns[0].Title.Caption:='Название маршрута';
polzDBGrid.Columns[0].Width:=200;
polzDBGrid.Columns[1].Title.Caption:='Название станции';
polzDBGrid.Columns[1].Width:=110;
polzDBGrid.Columns[2].Title.Caption:='Тип поезда';
polzDBGrid.Columns[2].Width:=110;

end;






procedure TForm8.podschetRast;
begin
DataModule1.rastADOQuery.Active:=False;
DataModule1.rastADOQuery.SQL.Clear;
DataModule1.rastADOQuery.SQL.Add('select idOstanovki from ostanovki where nazvanieOstanovki = '''+Label7.Caption+''' ');
DataModule1.rastADOQuery.Active:=True;
a:= DataModule1.rastADOQuery.FieldByName('idOstanovki').AsInteger;

DataModule1.rastADOQuery.Active:=False;
DataModule1.rastADOQuery.SQL.Clear;
DataModule1.rastADOQuery.SQL.Add('select idOstanovki from ostanovki where nazvanieOstanovki = '''+Label9.Caption+''' ');
DataModule1.rastADOQuery.Active:=True;
b:= DataModule1.rastADOQuery.FieldByName('idOstanovki').AsInteger;

sumC:=0;

if a<b then
begin
a1:=a+1;
DataModule1.rastADOQuery.Active:=False;
DataModule1.rastADOQuery.SQL.Clear;
DataModule1.rastADOQuery.SQL.Add('select rastoyanie from rastoyanie where idOstanovkiNachalo = '+IntToStr(a)+' and idOstanovkiKonec = '+IntToStr(a1)+' ');
DataModule1.rastADOQuery.Active:=True;
c:= DataModule1.rastADOQuery.FieldByName('rastoyanie').AsInteger;

while a1<=b do
    begin
sumC := sumC + c;
a:=a+1;
a1:=a1+1;
DataModule1.rastADOQuery.Active:=False;
DataModule1.rastADOQuery.SQL.Clear;
DataModule1.rastADOQuery.SQL.Add('select rastoyanie from rastoyanie where idOstanovkiNachalo = '+IntToStr(a)+' and idOstanovkiKonec = '+IntToStr(a1)+' ');
DataModule1.rastADOQuery.Active:=True;
c:= DataModule1.rastADOQuery.FieldByName('rastoyanie').AsInteger;
    end;
end;

if a>b then
begin
a1:=a-1;
DataModule1.rastADOQuery.Active:=False;
DataModule1.rastADOQuery.SQL.Clear;
DataModule1.rastADOQuery.SQL.Add('select rastoyanie from rastoyanie where idOstanovkiNachalo = '+IntToStr(a1)+' and idOstanovkiKonec = '+IntToStr(a)+' ');
DataModule1.rastADOQuery.Active:=True;
c:= DataModule1.rastADOQuery.FieldByName('rastoyanie').AsInteger;

while a1>=b do
    begin
sumC := sumC + c;
a:=a-1;
a1:=a1-1;
DataModule1.rastADOQuery.Active:=False;
DataModule1.rastADOQuery.SQL.Clear;
DataModule1.rastADOQuery.SQL.Add('select rastoyanie from rastoyanie where idOstanovkiNachalo = '+IntToStr(a1)+' and idOstanovkiKonec = '+IntToStr(a)+' ');
DataModule1.rastADOQuery.Active:=True;
c:= DataModule1.rastADOQuery.FieldByName('rastoyanie').AsInteger;
    end;
end;
end;


end.
