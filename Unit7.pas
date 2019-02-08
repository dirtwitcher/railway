unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Menus, Vcl.DBCtrls, Vcl.StdCtrls, Data.DB;

type
  TForm7 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    marshrutiDBGrid: TDBGrid;
    TabSheet2: TTabSheet;
    marshrutiOstanovkiDBGrid: TDBGrid;
    TabSheet3: TTabSheet;
    ostanovkiDBGrid: TDBGrid;
    TabSheet4: TTabSheet;
    raspisanieDBGrid: TDBGrid;
    TabSheet5: TTabSheet;
    rastoyanieDBGrid: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button3: TButton;
    Button4: TButton;
    Edit6: TEdit;
    Edit9: TEdit;
    Label5: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit22: TEdit;
    Edit24: TEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Button11: TButton;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    N3: TMenuItem;
    N21: TMenuItem;
    N4: TMenuItem;


    procedure Normalize_Marshruti(Sender: TObject);
    procedure Normalize_MarshrutiOstanovki(Sender: TObject);
    procedure Normalize_Ostanovki(Sender: TObject);
    procedure Normalize_Raspisanie(Sender: TObject);
    procedure Normalize_Rastoyanie(Sender: TObject);

    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Edit15KeyPress(Sender: TObject; var Key: Char);
    procedure Edit19KeyPress(Sender: TObject; var Key: Char);
    procedure Edit20KeyPress(Sender: TObject; var Key: Char);
    procedure Edit21KeyPress(Sender: TObject; var Key: Char);
    procedure Edit22KeyPress(Sender: TObject; var Key: Char);
    procedure Edit23KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit18KeyPress(Sender: TObject; var Key: Char);
    procedure Edit24KeyPress(Sender: TObject; var Key: Char);
    procedure N3Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit6, Unit1, Unit5, Unit9, Unit10, Unit11;

procedure TForm7.Button10Click(Sender: TObject);
begin
if Edit24.Text='' then ShowMessage('Введите номер расстояния')
else
if MessageBox(handle,PChar('Are you shure to delete?'), PChar('Think please'), MB_YESNO+MB_ICONQUESTION) = idyes then
begin
 DataModule1.rastoyanieADOQuery.Active:= false;
 DataModule1.rastoyanieADOQuery.SQL.Clear;
 DataModule1.rastoyanieADOQuery.SQL.Add('call dropRastoyanie('+Edit24.Text+');');
 DataModule1.rastoyanieADOQuery.ExecSQL;
 Normalize_Rastoyanie(Sender);
Edit24.Clear;
end;
end;

procedure TForm7.Button11Click(Sender: TObject);
begin
    Normalize_Marshruti(Sender);
    Normalize_MarshrutiOstanovki(Sender);
    Normalize_Ostanovki(Sender);
    Normalize_Raspisanie(Sender);
    Normalize_Rastoyanie(Sender);
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
if (Edit1.Text='') or (DBLookupComboBox3.Text='') or (DBLookupComboBox4.Text='') or (Edit4.Text='') then
 ShowMessage('Не все поля заполнены!')
 else
 begin
 DataModule1.marshrutiADOQuery.Active:=False;
 DataModule1.marshrutiADOQuery.SQL.Clear;
 DataModule1.marshrutiADOQuery.SQL.Add('select idMarshruta from marshruti');
 DataModule1.marshrutiADOQuery.Active:=True;
 if  DataModule1.marshrutiADOQuery.Locate('idMarshruta', Edit1.Text , []) then
 begin
 marshrutiDBGrid.Columns[0].Title.Caption:='№ маршрута';
 marshrutiDBGrid.Columns[0].Width:=160;
 ShowMessage('Такой № маршрута уже существует!');
 Normalize_Marshruti(Sender);
 Exit;
 end;
 DataModule1.marshrutiADOQuery.SQL.Clear;
 DataModule1.marshrutiADOQuery.SQL.Add('call insMarshruti('+Edit1.Text+','+DBLookupComboBox3.Text+','+DBLookupComboBox4.Text+','''+Edit4.Text+''')');
 DataModule1.marshrutiADOQuery.ExecSQL;
 Normalize_Marshruti(Sender);
Edit1.Clear;
Edit4.Clear;
end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
if Edit5.Text='' then ShowMessage('Введите номер маршрута')
else
if MessageBox(handle,PChar('Are you shure to delete?'), PChar('Think please'), MB_YESNO+MB_ICONQUESTION) = idyes then
begin
 DataModule1.marshrutiADOQuery.Active:= false;
 DataModule1.marshrutiADOQuery.SQL.Clear;
 DataModule1.marshrutiADOQuery.SQL.Add('call dropMarshruti('+Edit5.Text+');');
 DataModule1.marshrutiADOQuery.ExecSQL;
 Normalize_Marshruti(Sender);
Edit5.Clear;
end;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
   if (Edit6.Text='') or (DBLookupComboBox1.Text='') or (DBLookupComboBox2.Text='') then
 ShowMessage('Не все поля заполнены!')
 else
 begin
 DataModule1.marshrutiOstanovkiADOQuery.Active:=False;
 DataModule1.marshrutiOstanovkiADOQuery.SQL.Clear;
 DataModule1.marshrutiOstanovkiADOQuery.SQL.Add('select idMarshrutiOstanovki from marshrutiOstanovki');
 DataModule1.marshrutiOstanovkiADOQuery.Active:=True;
 if  DataModule1.marshrutiOstanovkiADOQuery.Locate('idMarshrutiOstanovki', Edit6.Text , []) then
 begin
 marshrutiOstanovkiDBGrid.Columns[0].Title.Caption:='№ Маршрута-Остановки';
 marshrutiOstanovkiDBGrid.Columns[0].Width:=160;
 ShowMessage('Такой № Маршрута-Остановки уже существует!');
 Normalize_MarshrutiOstanovki(Sender);
 Exit;
 end;
 DataModule1.marshrutiOstanovkiADOQuery.SQL.Clear;
 DataModule1.marshrutiOstanovkiADOQuery.SQL.Add('call insMarshrutiOstanovki('+Edit6.Text+','+DBLookupComboBox1.Text+','+DBLookupComboBox2.Text+')');
 DataModule1.marshrutiOstanovkiADOQuery.ExecSQL;
 Normalize_MarshrutiOstanovki(Sender);
Edit6.Clear;
end;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
if Edit9.Text='' then ShowMessage('Введите номер Маршрута-Остановки')
else
if MessageBox(handle,PChar('Are you shure to delete?'), PChar('Think please'), MB_YESNO+MB_ICONQUESTION) = idyes then
begin
 DataModule1.marshrutiOstanovkiADOQuery.Active:= false;
 DataModule1.marshrutiOstanovkiADOQuery.SQL.Clear;
 DataModule1.marshrutiOstanovkiADOQuery.SQL.Add('call dropMarshrutiOstanovki('+Edit9.Text+');');
 DataModule1.marshrutiOstanovkiADOQuery.ExecSQL;
 Normalize_MarshrutiOstanovki(Sender);
Edit9.Clear;
end;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
if (Edit10.Text='') or (Edit11.Text='') then
 ShowMessage('Не все поля заполнены!')
 else
 begin
 DataModule1.ostanovkiADOQuery.Active:=False;
 DataModule1.ostanovkiADOQuery.SQL.Clear;
 DataModule1.ostanovkiADOQuery.SQL.Add('select idOstanovki from ostanovki');
 DataModule1.ostanovkiADOQuery.Active:=True;
 if  DataModule1.ostanovkiADOQuery.Locate('idOstanovki', Edit10.Text , []) then
 begin
 ostanovkiDBGrid.Columns[0].Title.Caption:='№ остановки';
 ostanovkiDBGrid.Columns[0].Width:=160;
 ShowMessage('Такой № остановки уже существует!');
 Normalize_Ostanovki(Sender);
 Exit;
 end;
 DataModule1.ostanovkiADOQuery.SQL.Clear;
 DataModule1.ostanovkiADOQuery.SQL.Add('call insOstanovki('+Edit10.Text+','''+Edit11.Text+''')');
 DataModule1.ostanovkiADOQuery.ExecSQL;
 Normalize_Ostanovki(Sender);
Edit10.Clear;
Edit11.Clear;
end;
end;

procedure TForm7.Button6Click(Sender: TObject);
begin
if Edit12.Text='' then ShowMessage('Введите номер остановки')
else
if MessageBox(handle,PChar('Are you shure to delete?'), PChar('Think please'), MB_YESNO+MB_ICONQUESTION) = idyes then
begin
 DataModule1.ostanovkiADOQuery.Active:= false;
 DataModule1.ostanovkiADOQuery.SQL.Clear;
 DataModule1.ostanovkiADOQuery.SQL.Add('call dropOstanovki('+Edit12.Text+');');
 DataModule1.ostanovkiADOQuery.ExecSQL;
 Normalize_Ostanovki(Sender);
Edit12.Clear;
end;
end;

procedure TForm7.Button7Click(Sender: TObject);
 var
str: string;
begin
if (Edit13.Text='') or (DBLookupComboBox5.Text='') or (DBLookupComboBox6.Text='') or (Edit17.Text='') then
 ShowMessage('Не все поля заполнены!')
 else
 begin
 DataModule1.raspisanieADOQuery.Active:=False;
 DataModule1.raspisanieADOQuery.SQL.Clear;
 DataModule1.raspisanieADOQuery.SQL.Add('select idRaspisaniya from raspisanie');
 DataModule1.raspisanieADOQuery.Active:=True;
 if  DataModule1.raspisanieADOQuery.Locate('idRaspisaniya', Edit13.Text , []) then
 begin
 raspisanieDBGrid.Columns[0].Title.Caption:='№ расписания';
 raspisanieDBGrid.Columns[0].Width:=160;
 ShowMessage('Такой № расписания уже существует!');
 Normalize_Raspisanie(Sender);
 Exit;
 end;
 str:= FormatDateTime('HH:mm:ss',DateTimePicker1.Time);
 DataModule1.raspisanieADOQuery.SQL.Clear;
 DataModule1.raspisanieADOQuery.SQL.Add('call insRaspisanie('+Edit13.Text+','+DBLookupComboBox5.Text+','+DBLookupComboBox6.Text+','''+str+''','''+Edit17.Text+''')');
 DataModule1.raspisanieADOQuery.ExecSQL;
 Normalize_Raspisanie(Sender);
Edit13.Clear;
Edit17.Clear;
end;
end;

procedure TForm7.Button8Click(Sender: TObject);
begin
if Edit18.Text='' then ShowMessage('Введите номер расписания')
else
if MessageBox(handle,PChar('Are you shure to delete?'), PChar('Think please'), MB_YESNO+MB_ICONQUESTION) = idyes then
begin
 DataModule1.raspisanieADOQuery.Active:= false;
 DataModule1.raspisanieADOQuery.SQL.Clear;
 DataModule1.raspisanieADOQuery.SQL.Add('call dropRaspisanie('+Edit18.Text+');');
 DataModule1.raspisanieADOQuery.ExecSQL;
 Normalize_Raspisanie(Sender);
Edit18.Clear;
end;
end;

procedure TForm7.Button9Click(Sender: TObject);
begin
if (Edit19.Text='') or (DBLookupComboBox7.Text='') or (DBLookupComboBox8.Text='') or (Edit22.Text='') or (DBLookupComboBox9.Text='') then
 ShowMessage('Не все поля заполнены!')
 else
 begin
 DataModule1.rastoyanieADOQuery.Active:=False;
 DataModule1.rastoyanieADOQuery.SQL.Clear;
 DataModule1.rastoyanieADOQuery.SQL.Add('select idRastoyaniya from rastoyanie');
 DataModule1.rastoyanieADOQuery.Active:=True;
 if  DataModule1.rastoyanieADOQuery.Locate('idRastoyaniya', Edit19.Text , []) then
 begin
 rastoyanieDBGrid.Columns[0].Title.Caption:='№ расстояния';
 rastoyanieDBGrid.Columns[0].Width:=160;
 ShowMessage('Такой № расстояния уже существует!');
 Normalize_Rastoyanie(Sender);
 Exit;
 end;
 DataModule1.rastoyanieADOQuery.SQL.Clear;
 DataModule1.rastoyanieADOQuery.SQL.Add('call insRastoyanie('+Edit19.Text+','+DBLookupComboBox7.Text+','+DBLookupComboBox8.Text+','+Edit22.Text+','+DBLookupComboBox9.Text+')');
 DataModule1.rastoyanieADOQuery.ExecSQL;
 Normalize_Rastoyanie(Sender);
Edit19.Clear;
Edit22.Clear;
end;
end;

procedure TForm7.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit15KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit18KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit19KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit20KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit21KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit22KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit23KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit24KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
if Not (Key in ['0'..'9', #8]) then Key:=#0;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form6.Close;
Form7.Close;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
    Normalize_Marshruti(Sender);
    Normalize_MarshrutiOstanovki(Sender);
    Normalize_Ostanovki(Sender);
    Normalize_Raspisanie(Sender);
    Normalize_Rastoyanie(Sender);
end;

procedure TForm7.N1Click(Sender: TObject);
begin
 Form11.Show;
end;

procedure TForm7.N21Click(Sender: TObject);
begin
Form9.frxReport1.ShowReport();
end;

procedure TForm7.N3Click(Sender: TObject);
begin
Form5.frxReport1.ShowReport();
end;

procedure TForm7.N4Click(Sender: TObject);
begin
Form10.frxReport1.ShowReport();
end;

procedure TForm7.Normalize_Marshruti;
begin
DataModule1.marshrutiADOQuery.Active:= false;
DataModule1.marshrutiADOQuery.SQL.Clear;
DataModule1.marshrutiADOQuery.SQL.Add('Select * from marshruti');
DataModule1.marshrutiADOQuery.Active:=true;
    marshrutiDBGrid.Columns[0].Title.Caption:='№ Маршрута';
    marshrutiDBGrid.Columns[0].Width:=100;
    marshrutiDBGrid.Columns[1].Title.Caption:='№ Остановки начала';
    marshrutiDBGrid.Columns[1].Width:=120;
    marshrutiDBGrid.Columns[2].Title.Caption:='№ Остановки конца';
    marshrutiDBGrid.Columns[2].Width:=120;
    marshrutiDBGrid.Columns[3].Title.Caption:='Тип поезда';
    marshrutiDBGrid.Columns[3].Width:=100;
end;

procedure TForm7.Normalize_MarshrutiOstanovki;
begin
DataModule1.marshrutiOstanovkiADOQuery.Active:= false;
DataModule1.marshrutiOstanovkiADOQuery.SQL.Clear;
DataModule1.marshrutiOstanovkiADOQuery.SQL.Add('Select * from marshrutiOstanovki');
DataModule1.marshrutiOstanovkiADOQuery.Active:=true;
    marshrutiOstanovkiDBGrid.Columns[0].Title.Caption:='№ Маршрута-Остановки';
    marshrutiOstanovkiDBGrid.Columns[0].Width:=135;
    marshrutiOstanovkiDBGrid.Columns[1].Title.Caption:='№ Остановки';
    marshrutiOstanovkiDBGrid.Columns[1].Width:=100;
    marshrutiOstanovkiDBGrid.Columns[2].Title.Caption:='№ Маршрута';
    marshrutiOstanovkiDBGrid.Columns[2].Width:=100;
end;

procedure TForm7.Normalize_Ostanovki;
begin
DataModule1.ostanovkiADOQuery.Active:= false;
DataModule1.ostanovkiADOQuery.SQL.Clear;
DataModule1.ostanovkiADOQuery.SQL.Add('Select * from ostanovki');
DataModule1.ostanovkiADOQuery.Active:=true;
    ostanovkiDBGrid.Columns[0].Title.Caption:='№ Остановки';
    ostanovkiDBGrid.Columns[0].Width:=100;
    ostanovkiDBGrid.Columns[1].Title.Caption:='Название остановки';
    ostanovkiDBGrid.Columns[1].Width:=120;
DataModule1.ost2ADOQuery.Active:= false;
DataModule1.ost2ADOQuery.SQL.Clear;
DataModule1.ost2ADOQuery.SQL.Add('Select * from ostanovki');
DataModule1.ost2ADOQuery.Active:=true;
end;

procedure TForm7.Normalize_Raspisanie;
begin
DataModule1.raspisanieADOQuery.Active:= false;
DataModule1.raspisanieADOQuery.SQL.Clear;
DataModule1.raspisanieADOQuery.SQL.Add('Select * from raspisanie');
DataModule1.raspisanieADOQuery.Active:=true;
    raspisanieDBGrid.Columns[0].Title.Caption:='№ Расписания';
    raspisanieDBGrid.Columns[0].Width:=100;
    raspisanieDBGrid.Columns[1].Title.Caption:='№ Маршрута';
    raspisanieDBGrid.Columns[1].Width:=100;
    raspisanieDBGrid.Columns[2].Title.Caption:='№ Остановки';
    raspisanieDBGrid.Columns[2].Width:=100;
    raspisanieDBGrid.Columns[3].Title.Caption:='Дата/Время';
    raspisanieDBGrid.Columns[3].Width:=135;
    raspisanieDBGrid.Columns[4].Title.Caption:='День недели';
    raspisanieDBGrid.Columns[4].Width:=100;
end;

procedure TForm7.Normalize_Rastoyanie;
begin
DataModule1.rastoyanieADOQuery.Active:= false;
DataModule1.rastoyanieADOQuery.SQL.Clear;
DataModule1.rastoyanieADOQuery.SQL.Add('Select * from rastoyanie');
DataModule1.rastoyanieADOQuery.Active:=true;
    rastoyanieDBGrid.Columns[0].Title.Caption:='№ Расстояния';
    rastoyanieDBGrid.Columns[0].Width:=100;
    rastoyanieDBGrid.Columns[1].Title.Caption:='№ Остановки начала';
    rastoyanieDBGrid.Columns[1].Width:=120;
    rastoyanieDBGrid.Columns[2].Title.Caption:='№ Остановки конца';
    rastoyanieDBGrid.Columns[2].Width:=120;
    rastoyanieDBGrid.Columns[3].Title.Caption:='Расстояние';
    rastoyanieDBGrid.Columns[3].Width:=100;
    rastoyanieDBGrid.Columns[4].Title.Caption:='№ Маршрута';
    rastoyanieDBGrid.Columns[4].Width:=100;
end;

end.
