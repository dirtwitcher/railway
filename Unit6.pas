unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.MPlayer, Vcl.Imaging.pngimage, mmsystem, ShellApi;
 // System.ImageList;

type
  TForm6 = class(TForm)
    loginEdit: TButtonedEdit;
    ImageList1: TImageList;
    passwordEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Timer1: TTimer;
    Image1: TImage;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     soundVolumeFlag:integer;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit7, Unit8;

procedure TForm6.Button1Click(Sender: TObject);
begin
    if ((loginEdit.Text='admin') and (passwordEdit.Text='admin')) then
    begin
    loginEdit.Text:='';
    passwordEdit.Text:='';
    Form6.Hide;
    Form7.ShowModal;
    end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
 Button3.Visible:=False;
 Button4.Visible:=False;
 loginEdit.Visible:=True;
 passwordEdit.Visible:=True;
 Label1.Visible:=True;
 Label2.Visible:=True;
 Button5.Visible:=True;
 Button1.Visible:=True;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
    Form6.Hide;
    Form8.ShowModal;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
ShellExecute(handle,'open','help.chm',nil,nil,SW_SHOWNORMAL);
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
 loginEdit.Text:='';
 passwordEdit.Text:='';
 Button3.Visible:=True;
 Button4.Visible:=True;
 loginEdit.Visible:=False;
 passwordEdit.Visible:=False;
 Label1.Visible:=False;
 Label2.Visible:=False;
 Button5.Visible:=False;
 Button1.Visible:=False;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
soundVolumeFlag:=1;
//MediaPlayer1.Play;
PlaySound(PChar('helloSound.wav'),0,SND_ASYNC or SND_LOOP);
end;

procedure TForm6.Image1Click(Sender: TObject);
begin
 if (soundVolumeFlag = 1) then
 begin
   //MediaPlayer1.Pause;
   PlaySound(0, 0, SND_PURGE);
   soundVolumeFlag:=soundVolumeFlag-1;
   Image1.Picture.LoadFromFile('volume-.png');
   Exit;
 end;
  if (soundVolumeFlag = 0) then
 begin
   //MediaPlayer1.Play;
   PlaySound(PChar('helloSound.wav'),0,SND_ASYNC or SND_LOOP);
   soundVolumeFlag:=soundVolumeFlag+1;
   Image1.Picture.LoadFromFile('volume+.png');
   Exit;
 end;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
begin
  if (((loginEdit.Text='admin') and (passwordEdit.Text='admin'))
  or ((loginEdit.Text='vlad') and (passwordEdit.Text='vlad'))) then
  loginEdit.RightButton.ImageIndex:=1
  else
    loginEdit.RightButton.ImageIndex:=0;
end;

end.
