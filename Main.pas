unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.MPlayer, Vcl.Menus, ShellAPI;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    MPlayer: TMediaPlayer;
    Map: TImage;
    Quest: TImage;
    Details: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Gallery: TImage;
    Escape: TImage;
    procedure FormCreate(Sender: TObject);
    procedure MapClick(Sender: TObject);
    procedure DetailsClick(Sender: TObject);
    procedure QuestClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure GalleryClick(Sender: TObject);
    procedure EscapeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Map, Info, Quest, Gallery;


procedure TForm1.FormCreate(Sender: TObject);
begin
MPlayer.FileName:= extractfilepath(paramstr(0))+'Видео\Фон видео 5.wmv';
MPlayer.Open;
MPlayer.Play;
end;


procedure TForm1.GalleryClick(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.MapClick(Sender: TObject);
begin
Form4.Show;
end;


procedure TForm1.QuestClick(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.DetailsClick(Sender: TObject);
begin
Form2.Show;
Form2.PageControl1.TabIndex:= 0;
end;

procedure TForm1.EscapeClick(Sender: TObject);
begin
close;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
ShellExecute(0,PChar('Open'),PChar(extractfilepath(paramstr(0))+'Справка\Справка проект.chm'),nil,nil,SW_SHOW);
end;

procedure TForm1.N3Click(Sender: TObject);
begin
close;
end;

end.
