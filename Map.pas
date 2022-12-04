unit Map;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus;

type
  TForm4 = class(TForm)
    Lubch: TImage;
    Golsh: TImage;
    Novogr: TImage;
    Lida: TImage;
    Mir: TImage;
    New: TImage;
    Old: TImage;
    Krevo1: TImage;
    Golsh1: TImage;
    Lubch1: TImage;
    Mir1: TImage;
    Novogr1: TImage;
    Lida1: TImage;
    Old1: TImage;
    New1: TImage;
    Krevo: TImage;
    Map: TImage;
    Background: TImage;
    NewDes: TImage;
    OldDes: TImage;
    GolshDes: TImage;
    LubchDes: TImage;
    LidaDes: TImage;
    MirDes: TImage;
    KrevoDes: TImage;
    NovogrDes: TImage;
    KartiZamkov: TImage;
    BackLida: TImage;
    BackNew: TImage;
    BackOld: TImage;
    BackKrevo: TImage;
    BackLubch: TImage;
    BackMir: TImage;
    BackNovogr: TImage;
    BackGolsh: TImage;
    Details: TImage;
    Main: TImage;
    procedure GolshClick(Sender: TObject);
    procedure KrevoClick(Sender: TObject);
    procedure LidaClick(Sender: TObject);
    procedure LubchClick(Sender: TObject);
    procedure MirClick(Sender: TObject);
    procedure NewClick(Sender: TObject);
    procedure NovogrClick(Sender: TObject);
    procedure OldClick(Sender: TObject);
    procedure MainClick(Sender: TObject);
    procedure DetailsClick(Sender: TObject);
    procedure OldFalse(Sender: TObject);
    procedure OldTrue(Sender: TObject);
    procedure NewTrue(Sender: TObject);
    procedure NewFalse(Sender: TObject);
    procedure LidaTrue(Sender: TObject);
    procedure LidaFalse(Sender: TObject);
    procedure MirTrue(Sender: TObject);
    procedure MirFalse(Sender: TObject);
    procedure NovogTrue(Sender: TObject);
    procedure NovogFalse(Sender: TObject);
    procedure LubTrue(Sender: TObject);
    procedure lubFalse(Sender: TObject);
    procedure GolTrue(Sender: TObject);
    procedure GolFalse(Sender: TObject);
    procedure KrevoTrue(Sender: TObject);
    procedure KrevoFalse(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Main, Info;


procedure TForm4.DetailsClick(Sender: TObject);
begin
Form2.Show;
if New1.Visible = True then
Form2.PageControl1.TabIndex:= 0
else if Old1.Visible then
Form2.PageControl1.TabIndex:= 1
else if Lida1.Visible then
Form2.PageControl1.TabIndex:= 2
else if Mir1.Visible then
Form2.PageControl1.TabIndex:= 3
else if Novogr1.Visible then
Form2.PageControl1.TabIndex:= 4
else if Lubch1.Visible then
Form2.PageControl1.TabIndex:= 5
else if Golsh1.Visible then
Form2.PageControl1.TabIndex:= 6
else if Krevo1.Visible then
Form2.PageControl1.TabIndex:= 7
end;

procedure TForm4.OldFalse(Sender: TObject);
begin
Old1.Visible:= False;
OldDes.Visible:= False;
BackOld.Visible:= False;
end;

procedure TForm4.OldTrue(Sender: TObject);
begin
Old1.Visible:= True;
OldDes.Visible:= True;
BackOld.Visible:= True;
Background.Visible:= False;
end;

procedure TForm4.NewFalse(Sender: TObject);
begin
New1.Visible:= False;
NewDes.Visible:= False;
BackNew.Visible:= False;
end;

procedure TForm4.NewTrue(Sender: TObject);
begin
New1.Visible:= True;
NewDes.Visible:= True;
BackNew.Visible:= True;
Background.Visible:= False;
end;

procedure TForm4.LidaFalse(Sender: TObject);
begin
Lida1.Visible:= False;
LidaDes.Visible:= False;
BackLida.Visible:= False;
end;

procedure TForm4.LidaTrue(Sender: TObject);
begin
Lida1.Visible:= True;
LidaDes.Visible:= True;
BackLida.Visible:= True;
Background.Visible:= False;
end;

procedure TForm4.MirFalse(Sender: TObject);
begin
Mir1.Visible:= False;
MirDes.Visible:= False;
BackMir.Visible:= False;
end;

procedure TForm4.MirTrue(Sender: TObject);
begin
Mir1.Visible:= True;
MirDes.Visible:= True;
BackMir.Visible:= True;
Background.Visible:= False;
end;

procedure TForm4.NovogFalse(Sender: TObject);
begin
Novogr1.Visible:= False;
NovogrDes.Visible:= False;
BackNovogr.Visible:= False;
end;

procedure TForm4.NovogTrue(Sender: TObject);
begin
Novogr1.Visible:= True;
NovogrDes.Visible:= True;
BackNovogr.Visible:= True;
Background.Visible:= False;
end;

procedure TForm4.LubFalse(Sender: TObject);
begin
Lubch1.Visible:= False;
LubchDes.Visible:= False;
BackLubch.Visible:= False;
end;

procedure TForm4.LubTrue(Sender: TObject);
begin
Lubch1.Visible:= True;
LubchDes.Visible:= True;
BackLubch.Visible:= True;
Background.Visible:= False;
end;

procedure TForm4.GolFalse(Sender: TObject);
begin
Golsh1.Visible:= False;
GolshDes.Visible:= False;
BackGolsh.Visible:= False;
end;

procedure TForm4.GolTrue(Sender: TObject);
begin
Golsh1.Visible:= True;
GolshDes.Visible:= True;
BackGolsh.Visible:= True;
Background.Visible:= False;
end;

procedure TForm4.KrevoFalse(Sender: TObject);
begin
Krevo1.Visible:= False;
KrevoDes.Visible:= False;
BackKrevo.Visible:= False;
end;

procedure TForm4.KrevoTrue(Sender: TObject);
begin
Krevo1.Visible:= True;
KrevoDes.Visible:= True;
BackKrevo.Visible:= True;
Background.Visible:= False;
end;


procedure TForm4.GolshClick(Sender: TObject);
begin
OldFalse(Sender);
NewFalse(Sender);
GolTrue(Sender);
LubFalse(Sender);
KrevoFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
end;


procedure TForm4.KrevoClick(Sender: TObject);
begin
OldFalse(Sender);
NewFalse(Sender);
GolFalse(Sender);
LubFalse(Sender);
KrevoTrue(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
end;

procedure TForm4.LidaClick(Sender: TObject);
begin
OldFalse(Sender);
NewFalse(Sender);
GolFalse(Sender);
LubFalse(Sender);
KrevoFalse(Sender);
LidaTrue(Sender);
MirFalse(Sender);
NovogFalse(Sender);
end;

procedure TForm4.LubchClick(Sender: TObject);
begin
OldFalse(Sender);
NewFalse(Sender);
GolFalse(Sender);
LubTrue(Sender);
KrevoFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
end;

procedure TForm4.MainClick(Sender: TObject);
begin
Form1.Show;
Form4.Close;
end;

procedure TForm4.MirClick(Sender: TObject);
begin
OldFalse(Sender);
NewFalse(Sender);
GolFalse(Sender);
LubFalse(Sender);
KrevoFalse(Sender);
LidaFalse(Sender);
MirTrue(Sender);
NovogFalse(Sender);
end;

procedure TForm4.NewClick(Sender: TObject);
begin
OldFalse(Sender);
NewTrue(Sender);
GolFalse(Sender);
LubFalse(Sender);
KrevoFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
end;

procedure TForm4.NovogrClick(Sender: TObject);
begin
OldFalse(Sender);
NewFalse(Sender);
GolFalse(Sender);
LubFalse(Sender);
KrevoFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogTrue(Sender);
end;

procedure TForm4.OldClick(Sender: TObject);
begin
OldTrue(Sender);
NewFalse(Sender);
GolFalse(Sender);
LubFalse(Sender);
KrevoFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
end;

end.
