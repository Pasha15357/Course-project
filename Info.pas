unit Info;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.Imaging.pngimage, Vcl.Menus;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    New: TTabSheet;
    Old: TTabSheet;
    Lida: TTabSheet;
    Mir: TTabSheet;
    Novogr: TTabSheet;
    Lubch: TTabSheet;
    Golsh: TTabSheet;
    Krevo: TTabSheet;
    WebBrowser1: TWebBrowser;
    WebBrowser2: TWebBrowser;
    WebBrowser3: TWebBrowser;
    WebBrowser4: TWebBrowser;
    WebBrowser5: TWebBrowser;
    WebBrowser6: TWebBrowser;
    WebBrowser7: TWebBrowser;
    WebBrowser8: TWebBrowser;
    Main: TImage;
    Back: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    procedure FormCreate(Sender: TObject);
    procedure BackClick(Sender: TObject);
    procedure MainClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Map, Quest;




procedure TForm2.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(extractfilepath(paramstr(0))+'Word\Новый замок.htm');
WebBrowser2.Navigate(extractfilepath(paramstr(0))+'Word\Старый замок.htm');
WebBrowser3.Navigate(extractfilepath(paramstr(0))+'Word\Лидский замок.htm');
WebBrowser4.Navigate(extractfilepath(paramstr(0))+'Word\Мирский замок.htm');
WebBrowser5.Navigate(extractfilepath(paramstr(0))+'Word\Новогрудский замок.htm');
WebBrowser6.Navigate(extractfilepath(paramstr(0))+'Word\Любчанский замок.htm');
WebBrowser7.Navigate(extractfilepath(paramstr(0))+'Word\Гольшанский замок.htm');
WebBrowser8.Navigate(extractfilepath(paramstr(0))+'Word\Кревский замок.htm');
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
Form3.Show;
//Image1.Picture.LoadFromFile('F:\Учеба\4 семестр\ОАиП\!КУРСАЧ\Проект\Изображения\1.png');
end;

procedure TForm2.BackClick(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.MainClick(Sender: TObject);
begin
Form2.Close;
Form4.Close;
Form3.Close;
end;


end.
