unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Data.DB;

type
  TForm11 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Обновить: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Label13: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ОбновитьClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  flag:Integer;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm11.Button1Click(Sender: TObject);
begin
DataModule1.zaprosADOQuery.Active:=False;
DataModule1.zaprosADOQuery.SQL.Clear;
DataModule1.zaprosADOQuery.SQL.Add('select rastoyanie.idMarshruta, sum(rastoyanie) from rastoyanie inner join ostanovki as T1 inner join ostanovki as T2 ');
DataModule1.zaprosADOQuery.SQL.Add('on (T1.idOstanovki=rastoyanie.idOstanovkiNachalo) and (T2.idOstanovki=rastoyanie.idOstanovkiKonec) group by rastoyanie.idMarshruta;');
DataModule1.zaprosADOQuery.Active:=True;
DBGrid1.Columns[0].Title.Caption:='Номер маршрута';
DBGrid1.Columns[0].Width:=200;
DBGrid1.Columns[1].Title.Caption:='Полная протяженность';
DBGrid1.Columns[1].Width:=200;
end;

procedure TForm11.ОбновитьClick(Sender: TObject);
begin
DataModule1.zaprosADOQuery.Active:=False;
DataModule1.zaprosADOQuery.SQL.Clear;
DataModule1.zaprosADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - " ,T2.nazvanieOstanovki) as NazvanieMarshruta, T1.nazvanieOstanovki as nach, raspisanie.vremya as vremyaOtb, T2.nazvanieOstanovki as kon, raspisanie.den, marshruti.typeOfTrain');
DataModule1.zaprosADOQuery.SQL.Add(' from ostanovki as T1 inner join ostanovki as T2 inner join marshruti inner join raspisanie');
DataModule1.zaprosADOQuery.SQL.Add(' on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = marshruti.idOstanovkiNachalo) order by marshruti.idMarshruta, raspisanie.vremya;');
DataModule1.zaprosADOQuery.Active:=True;
DBGrid1.Columns[0].Title.Caption:='Название маршрута';
DBGrid1.Columns[0].Width:=200;
DBGrid1.Columns[1].Title.Caption:='Начальная станция';
DBGrid1.Columns[1].Width:=110;
DBGrid1.Columns[2].Title.Caption:='Время отбытия';
DBGrid1.Columns[2].Width:=90;
DBGrid1.Columns[3].Title.Caption:='Конечная станция';
DBGrid1.Columns[3].Width:=110;
DBGrid1.Columns[4].Title.Caption:='День';
DBGrid1.Columns[4].Width:=80;
DBGrid1.Columns[5].Title.Caption:='Тип поезда';
DBGrid1.Columns[5].Width:=100;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
DataModule1.zaprosADOQuery.Active:=False;
DataModule1.zaprosADOQuery.SQL.Clear;
DataModule1.zaprosADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - ",T2.nazvanieOstanovki) as nazvanieMarshruta, T3.nazvanieOstanovki, raspisanie.vremya as vremyaOtbitiya ');
DataModule1.zaprosADOQuery.SQL.Add('from ostanovki as T1 inner join ostanovki as T2 inner join ostanovki as T3 inner join marshruti inner join raspisanie ');
DataModule1.zaprosADOQuery.SQL.Add('on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = T3.idOstanovki) and (raspisanie.idMarshruta = marshruti.idMarshruta) ');
DataModule1.zaprosADOQuery.SQL.Add('where T3.idOstanovki between T1.idOstanovki and T2.idOstanovki ');
DataModule1.zaprosADOQuery.SQL.Add('UNION ');
DataModule1.zaprosADOQuery.SQL.Add('select concat(T1.nazvanieOstanovki," - ",T2.nazvanieOstanovki) as nazvanieMarshruta, T3.nazvanieOstanovki, raspisanie.vremya as vremyaOtbitiya ');
DataModule1.zaprosADOQuery.SQL.Add('from ostanovki as T1 inner join ostanovki as T2 inner join ostanovki as T3 inner join marshruti inner join raspisanie ');
DataModule1.zaprosADOQuery.SQL.Add('on (T1.idOstanovki = marshruti.idOstanovkiNachalo) and (T2.idOstanovki = marshruti.idOstanovkiKonec) and (raspisanie.idOstanovki = T3.idOstanovki) and (raspisanie.idMarshruta = marshruti.idMarshruta) ');
DataModule1.zaprosADOQuery.SQL.Add('where T3.idOstanovki <= T1.idOstanovki and T3.idOstanovki >= T2.idOstanovki ');
DataModule1.zaprosADOQuery.SQL.Add('order by nazvanieOstanovki, vremyaOtbitiya; ');
DataModule1.zaprosADOQuery.Active:=True;
DBGrid1.Columns[0].Title.Caption:='Название маршрута';
DBGrid1.Columns[0].Width:=200;
DBGrid1.Columns[1].Title.Caption:='Название станции';
DBGrid1.Columns[1].Width:=110;
DBGrid1.Columns[2].Title.Caption:='Время отбытия';
DBGrid1.Columns[2].Width:=90;
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
if flag=0 then
begin
 Panel1.Visible:=True;
 flag:=1;
 Exit;
end;
 if flag=1 then
 begin
 Panel1.Visible:=False;
 flag:=0;
 Exit;
 end;
end;

procedure TForm11.FormCreate(Sender: TObject);
begin
Button2.Click;
flag:=0;
end;

end.
