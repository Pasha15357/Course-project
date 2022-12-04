unit Gallery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    New: TImage;
    New3: TImage;
    Panel1: TPanel;
    Novogr: TImage;
    Lubch: TImage;
    ScrollBar1: TScrollBar;
    Golsh: TImage;
    Krevo: TImage;
    New1: TImage;
    New2: TImage;
    Arrow1: TImage;
    Arrow2: TImage;
    Arrow2_2: TImage;
    Arrow1_1: TImage;
    Mir: TImage;
    Old: TImage;
    Lida: TImage;
    Gallery: TImage;
    Back: TImage;
    Main: TImage;
    Details: TImage;
    Old1: TImage;
    Old2: TImage;
    Old3: TImage;
    Arrow3: TImage;
    Arrow3_1: TImage;
    Arrow4: TImage;
    Arrow4_1: TImage;
    Lida1: TImage;
    Lida2: TImage;
    Lida3: TImage;
    Arrow5: TImage;
    Arrow5_1: TImage;
    Arrow6: TImage;
    Arrow6_1: TImage;
    Mir1: TImage;
    Mir2: TImage;
    Mir3: TImage;
    Arrow7: TImage;
    Arrow7_1: TImage;
    Arrow8: TImage;
    Arrow8_1: TImage;
    Novog1: TImage;
    Novog2: TImage;
    Novog3: TImage;
    Arrow9: TImage;
    Arrow9_1: TImage;
    Arrow10: TImage;
    Arrow10_1: TImage;
    Lub1: TImage;
    Lub2: TImage;
    Lub3: TImage;
    Arrow11: TImage;
    Arrow11_1: TImage;
    Arrow12: TImage;
    Arrow12_1: TImage;
    Gol1: TImage;
    Gol2: TImage;
    Gol3: TImage;
    Krevo1: TImage;
    Krevo2: TImage;
    Krevo3: TImage;
    Arrow13: TImage;
    Arrow13_1: TImage;
    Arrow14: TImage;
    Arrow14_1: TImage;
    Arrow15: TImage;
    Arrow15_1: TImage;
    Arrow16: TImage;
    Arrow16_1: TImage;
    NewN: TImage;
    OldN: TImage;
    LidaN: TImage;
    MirN: TImage;
    NovogN: TImage;
    LubN: TImage;
    GolN: TImage;
    KrevoN: TImage;
    procedure ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure NewClick(Sender: TObject);
    procedure Arrow1Click(Sender: TObject);
    procedure Arrow2Click(Sender: TObject);
    procedure BackClick(Sender: TObject);
    procedure MainClick(Sender: TObject);
    procedure OldClick(Sender: TObject);
    procedure Arrow3Click(Sender: TObject);
    procedure Arrow4Click(Sender: TObject);
    procedure LidaClick(Sender: TObject);
    procedure Arrow5Click(Sender: TObject);
    procedure Arrow6Click(Sender: TObject);
    procedure Arrow7Click(Sender: TObject);
    procedure Arrow8Click(Sender: TObject);
    procedure MirClick(Sender: TObject);
    procedure NovogrClick(Sender: TObject);
    procedure Arrow9Click(Sender: TObject);
    procedure Arrow10Click(Sender: TObject);
    procedure LubchClick(Sender: TObject);
    procedure Arrow11Click(Sender: TObject);
    procedure Arrow12Click(Sender: TObject);
    procedure GolshClick(Sender: TObject);
    procedure KrevoClick(Sender: TObject);
    procedure Arrow13Click(Sender: TObject);
    procedure Arrow14Click(Sender: TObject);
    procedure Arrow15Click(Sender: TObject);
    procedure Arrow16Click(Sender: TObject);
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
  Form5: TForm5;
  i: integer;

implementation

{$R *.dfm}

uses Info, Quest, Map;


procedure TForm5.Arrow10Click(Sender: TObject);
var i:integer;
begin
if Novog1.Visible = True then i := 1
else if Novog2.Visible = True then i := 2
else if Novog3.Visible = True then i := 3;
i:=i-1;
case i of
2: Novog2.Visible:= True;
1: Novog1.Visible:= True;
end;
case i of
2: Novog3.Visible:= False;
1: Novog2.Visible:= False;
end;
case i of
2: Arrow9_1.Visible:= False;
1: Arrow10_1.Visible:= True;
end;
case i of
2: Arrow9.Enabled:= True;
1: Arrow10.Enabled:= False;
end;
end;

procedure TForm5.Arrow11Click(Sender: TObject);
var i:integer;
begin
if Lub1.Visible = True then i := 1
else if Lub2.Visible = True then i := 2
else if Lub3.Visible = True then i := 3;
i:=i+1;
case i of
2: Lub2.Visible:= True;
3: Lub3.Visible:= True;
end;
case i of
2: Lub1.Visible:= False;
3: Lub2.Visible:= False;
end;
case i of
2: Arrow12.Enabled:= True;
3: Arrow11.Enabled:= False;
end;
case i of
2: Arrow12_1.Visible:= False;
3: Arrow11_1.Visible:= True;
end;
end;

procedure TForm5.Arrow12Click(Sender: TObject);
var i:integer;
begin
if Lub1.Visible = True then i := 1
else if Lub2.Visible = True then i := 2
else if Lub3.Visible = True then i := 3;
i:=i-1;
case i of
2: Lub2.Visible:= True;
1: Lub1.Visible:= True;
end;
case i of
2: Lub3.Visible:= False;
1: Lub2.Visible:= False;
end;
case i of
2: Arrow11_1.Visible:= False;
1: Arrow12_1.Visible:= True;
end;
case i of
2: Arrow11.Enabled:= True;
1: Arrow12.Enabled:= False;
end;
end;

procedure TForm5.Arrow13Click(Sender: TObject);
var i:integer;
begin
if Gol1.Visible = True then i := 1
else if Gol2.Visible = True then i := 2
else if Gol3.Visible = True then i := 3;
i:=i+1;
case i of
2: Gol2.Visible:= True;
3: Gol3.Visible:= True;
end;
case i of
2: Gol1.Visible:= False;
3: Gol2.Visible:= False;
end;
case i of
2: Arrow14.Enabled:= True;
3: Arrow13.Enabled:= False;
end;
case i of
2: Arrow14_1.Visible:= False;
3: Arrow13_1.Visible:= True;
end;
end;

procedure TForm5.Arrow14Click(Sender: TObject);
var i:integer;
begin
if Gol1.Visible = True then i := 1
else if Gol2.Visible = True then i := 2
else if Gol3.Visible = True then i := 3;
i:=i-1;
case i of
2: Gol2.Visible:= True;
1: Gol1.Visible:= True;
end;
case i of
2: Gol3.Visible:= False;
1: Gol2.Visible:= False;
end;
case i of
2: Arrow13_1.Visible:= False;
1: Arrow14_1.Visible:= True;
end;
case i of
2: Arrow13.Enabled:= True;
1: Arrow14.Enabled:= False;
end;
end;

procedure TForm5.Arrow15Click(Sender: TObject);
var i:integer;
begin
if Krevo1.Visible = True then i := 1
else if Krevo2.Visible = True then i := 2
else if Krevo3.Visible = True then i := 3;
i:=i+1;
case i of
2: Krevo2.Visible:= True;
3: Krevo3.Visible:= True;
end;
case i of
2: Krevo1.Visible:= False;
3: Krevo2.Visible:= False;
end;
case i of
2: Arrow16.Enabled:= True;
3: Arrow15.Enabled:= False;
end;
case i of
2: Arrow16_1.Visible:= False;
3: Arrow15_1.Visible:= True;
end;
end;

procedure TForm5.Arrow16Click(Sender: TObject);
var i:integer;
begin
if Krevo1.Visible = True then i := 1
else if Krevo2.Visible = True then i := 2
else if Krevo3.Visible = True then i := 3;
i:=i-1;
case i of
2: Krevo2.Visible:= True;
1: Krevo1.Visible:= True;
end;
case i of
2: Krevo3.Visible:= False;
1: Krevo2.Visible:= False;
end;
case i of
2: Arrow15_1.Visible:= False;
1: Arrow16_1.Visible:= True;
end;
case i of
2: Arrow15.Enabled:= True;
1: Arrow16.Enabled:= False;
end;
end;

procedure TForm5.Arrow1Click(Sender: TObject);
var i:integer;
begin
if New1.Visible = True then i := 1
else if New2.Visible = True then i := 2
else if New3.Visible = True then i := 3;
i:=i+1;
case i of
2: New2.Visible:= True;
3: New3.Visible:= True;
end;
case i of
2: New1.Visible:= False;
3: New2.Visible:= False;
end;
case i of
2: Arrow2.Enabled:= True;
3: Arrow1.Enabled:= False;
end;
case i of
2: Arrow2_2.Visible:= False;
3: Arrow1_1.Visible:= True;
end;
end;

procedure TForm5.Arrow2Click(Sender: TObject);
var i:integer;
begin
if New1.Visible = True then i := 1
else if New2.Visible = True then i := 2
else if New3.Visible = True then i := 3;
i:=i-1;
case i of
2: New2.Visible:= True;
1: New1.Visible:= True;
end;
case i of
2: New3.Visible:= False;
1: New2.Visible:= False;
end;
case i of
2: Arrow1_1.Visible:= False;
1: Arrow2_2.Visible:= True;
end;
case i of
2: Arrow1.Enabled:= True;
1: Arrow2.Enabled:= False;
end;
end;

procedure TForm5.Arrow3Click(Sender: TObject);
var i:integer;
begin
if Old1.Visible = True then i := 1
else if Old2.Visible = True then i := 2
else if Old3.Visible = True then i := 3;
i:=i+1;
case i of
2: Old2.Visible:= True;
3: Old3.Visible:= True;
end;
case i of
2: Old1.Visible:= False;
3: Old2.Visible:= False;
end;
case i of
2: Arrow4.Enabled:= True;
3: Arrow3.Enabled:= False;
end;
case i of
2: Arrow4_1.Visible:= False;
3: Arrow3_1.Visible:= True;
end;
end;

procedure TForm5.Arrow4Click(Sender: TObject);
var i:integer;
begin
if Old1.Visible = True then i := 1
else if Old2.Visible = True then i := 2
else if Old3.Visible = True then i := 3;
i:=i-1;
case i of
2: Old2.Visible:= True;
1: Old1.Visible:= True;
end;
case i of
2: Old3.Visible:= False;
1: Old2.Visible:= False;
end;
case i of
2: Arrow3_1.Visible:= False;
1: Arrow4_1.Visible:= True;
end;
case i of
2: Arrow3.Enabled:= True;
1: Arrow4.Enabled:= False;
end;
end;

procedure TForm5.Arrow5Click(Sender: TObject);
var i:integer;
begin
if Lida1.Visible = True then i := 1
else if Lida2.Visible = True then i := 2
else if Lida3.Visible = True then i := 3;
i:=i+1;
case i of
2: Lida2.Visible:= True;
3: Lida3.Visible:= True;
end;
case i of
2: Lida1.Visible:= False;
3: Lida2.Visible:= False;
end;
case i of
2: Arrow6.Enabled:= True;
3: Arrow5.Enabled:= False;
end;
case i of
2: Arrow6_1.Visible:= False;
3: Arrow5_1.Visible:= True;
end;
end;

procedure TForm5.Arrow6Click(Sender: TObject);
var i:integer;
begin
if Lida1.Visible = True then i := 1
else if Lida2.Visible = True then i := 2
else if Lida3.Visible = True then i := 3;
i:=i-1;
case i of
2: Lida2.Visible:= True;
1: Lida1.Visible:= True;
end;
case i of
2: Lida3.Visible:= False;
1: Lida2.Visible:= False;
end;
case i of
2: Arrow5_1.Visible:= False;
1: Arrow6_1.Visible:= True;
end;
case i of
2: Arrow5.Enabled:= True;
1: Arrow6.Enabled:= False;
end;
end;

procedure TForm5.Arrow7Click(Sender: TObject);
var i:integer;
begin
if Mir1.Visible = True then i := 1
else if Mir2.Visible = True then i := 2
else if Mir3.Visible = True then i := 3;
i:=i+1;
case i of
2: Mir2.Visible:= True;
3: Mir3.Visible:= True;
end;
case i of
2: Mir1.Visible:= False;
3: Mir2.Visible:= False;
end;
case i of
2: Arrow8.Enabled:= True;
3: Arrow7.Enabled:= False;
end;
case i of
2: Arrow8_1.Visible:= False;
3: Arrow7_1.Visible:= True;
end;
end;

procedure TForm5.Arrow8Click(Sender: TObject);
var i:integer;
begin
if Mir1.Visible = True then i := 1
else if Mir2.Visible = True then i := 2
else if Mir3.Visible = True then i := 3;
i:=i-1;
case i of
2: Mir2.Visible:= True;
1: Mir1.Visible:= True;
end;
case i of
2: Mir3.Visible:= False;
1: Mir2.Visible:= False;
end;
case i of
2: Arrow7_1.Visible:= False;
1: Arrow8_1.Visible:= True;
end;
case i of
2: Arrow7.Enabled:= True;
1: Arrow8.Enabled:= False;
end;
end;

procedure TForm5.Arrow9Click(Sender: TObject);
var i:integer;
begin
if Novog1.Visible = True then i := 1
else if Novog2.Visible = True then i := 2
else if Novog3.Visible = True then i := 3;
i:=i+1;
case i of
2: Novog2.Visible:= True;
3: Novog3.Visible:= True;
end;
case i of
2: Novog1.Visible:= False;
3: Novog2.Visible:= False;
end;
case i of
2: Arrow10.Enabled:= True;
3: Arrow9.Enabled:= False;
end;
case i of
2: Arrow10_1.Visible:= False;
3: Arrow9_1.Visible:= True;
end;
end;

procedure TForm5.BackClick(Sender: TObject);
begin
Form5.Close;
end;

procedure TForm5.DetailsClick(Sender: TObject);
begin
Form2.Show;
if NewN.Visible = True then
Form2.PageControl1.TabIndex:= 0
else if OldN.Visible then
Form2.PageControl1.TabIndex:= 1
else if LidaN.Visible then
Form2.PageControl1.TabIndex:= 2
else if MirN.Visible then
Form2.PageControl1.TabIndex:= 3
else if NovogN.Visible then
Form2.PageControl1.TabIndex:= 4
else if LubN.Visible then
Form2.PageControl1.TabIndex:= 5
else if GolN.Visible then
Form2.PageControl1.TabIndex:= 6
else if KrevoN.Visible then
Form2.PageControl1.TabIndex:= 7
end;

procedure TForm5.OldFalse(Sender: TObject);
begin
Old1.Visible:= False;
Old2.Visible:= False;
Old3.Visible:= False;
Arrow3.Visible:= False;
Arrow4.Visible:= False;
Arrow3_1.Visible:= False;
Arrow4_1.Visible:= False;
OldN.Visible:=False;
end;

procedure TForm5.OldTrue(Sender: TObject);
begin
Old1.Visible:= True;
Arrow3.Visible:= True;
Arrow4.Visible:= True;
OldN.Visible:=True;
end;

procedure TForm5.NewFalse(Sender: TObject);
begin
New1.Visible:= False;
New2.Visible:= False;
New3.Visible:= False;
Arrow1.Visible:= False;
Arrow2.Visible:= False;
Arrow1_1.Visible:= False;
Arrow2_2.Visible:= False;
NewN.Visible:=False;
end;

procedure TForm5.NewTrue(Sender: TObject);
begin
New1.Visible:= True;
Arrow1.Visible:= True;
Arrow2.Visible:= True;
NewN.Visible:=True;
end;

procedure TForm5.LidaFalse(Sender: TObject);
begin
Lida1.Visible:= False;
Lida2.Visible:= False;
Lida3.Visible:= False;
Arrow5.Visible:= False;
Arrow6.Visible:= False;
Arrow5_1.Visible:= False;
Arrow6_1.Visible:= False;
LidaN.Visible:=False;
end;

procedure TForm5.LidaTrue(Sender: TObject);
begin
Lida1.Visible:= True;
Arrow5.Visible:= True;
Arrow6.Visible:= True;
LidaN.Visible:=True;
end;

procedure TForm5.MirFalse(Sender: TObject);
begin
Mir1.Visible:= False;
Mir2.Visible:= False;
Mir3.Visible:= False;
Arrow7.Visible:= False;
Arrow8.Visible:= False;
Arrow7_1.Visible:= False;
Arrow8_1.Visible:= False;
MirN.Visible:=False;
end;

procedure TForm5.MirTrue(Sender: TObject);
begin
Mir1.Visible:= True;
Arrow7.Visible:= True;
Arrow8.Visible:= True;
MirN.Visible:=True;
end;

procedure TForm5.NovogFalse(Sender: TObject);
begin
Novog1.Visible:= False;
Novog2.Visible:= False;
Novog3.Visible:= False;
Arrow9.Visible:= False;
Arrow10.Visible:= False;
Arrow9_1.Visible:= False;
Arrow10_1.Visible:= False;
NovogN.Visible:=False;
end;

procedure TForm5.NovogTrue(Sender: TObject);
begin
Novog1.Visible:= True;
Arrow9.Visible:= True;
Arrow10.Visible:= True;
NovogN.Visible:=True;
end;

procedure TForm5.LubFalse(Sender: TObject);
begin
Lub1.Visible:= False;
Lub2.Visible:= False;
Lub3.Visible:= False;
Arrow11.Visible:= False;
Arrow12.Visible:= False;
Arrow11_1.Visible:= False;
Arrow12_1.Visible:= False;
LubN.Visible:=False;
end;

procedure TForm5.LubTrue(Sender: TObject);
begin
Lub1.Visible:= True;
Arrow11.Visible:= True;
Arrow12.Visible:= True;
LubN.Visible:=True;
end;

procedure TForm5.GolFalse(Sender: TObject);
begin
Gol1.Visible:= False;
Gol2.Visible:= False;
Gol3.Visible:= False;
Arrow13.Visible:= False;
Arrow14.Visible:= False;
Arrow13_1.Visible:= False;
Arrow14_1.Visible:= False;
GolN.Visible:= False;
end;

procedure TForm5.GolTrue(Sender: TObject);
begin
Gol1.Visible:= True;
Arrow13.Visible:= True;
Arrow14.Visible:= True;
GolN.Visible:= True;
end;

procedure TForm5.KrevoFalse(Sender: TObject);
begin
Krevo1.Visible:= False;
Krevo2.Visible:= False;
Krevo3.Visible:= False;
Arrow15.Visible:= False;
Arrow16.Visible:= False;
Arrow15_1.Visible:= False;
Arrow16_1.Visible:= False;
KrevoN.Visible:=False;
end;

procedure TForm5.KrevoTrue(Sender: TObject);
begin
Krevo1.Visible:= True;
Arrow15.Visible:= True;
Arrow16.Visible:= True;
KrevoN.Visible:= True;
end;

procedure TForm5.GolshClick(Sender: TObject);
begin
NewFalse(Sender);
OldFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
LubFalse(Sender);
GolTrue(Sender);
KrevoFalse(Sender);
end;

procedure TForm5.KrevoClick(Sender: TObject);
begin
NewFalse(Sender);
OldFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
LubFalse(Sender);
GolFalse(Sender);
KrevoTrue(Sender);
end;

procedure TForm5.LidaClick(Sender: TObject);
begin
NewFalse(Sender);
OldFalse(Sender);
LidaTrue(Sender);
MirFalse(Sender);
NovogFalse(Sender);
LubFalse(Sender);
GolFalse(Sender);
KrevoFalse(Sender);
end;

procedure TForm5.LubchClick(Sender: TObject);
begin
NewFalse(Sender);
OldFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
LubTrue(Sender);
GolFalse(Sender);
KrevoFalse(Sender);
end;

procedure TForm5.MainClick(Sender: TObject);
begin
Form2.Close;
Form3.Close;
Form4.Close;
Form5.Close;
end;


procedure TForm5.MirClick(Sender: TObject);
begin
NewFalse(Sender);
OldFalse(Sender);
LidaFalse(Sender);
MirTrue(Sender);
NovogFalse(Sender);
LubFalse(Sender);
GolFalse(Sender);
KrevoFalse(Sender);
end;

procedure TForm5.NewClick(Sender: TObject);
begin
NewTrue(Sender);
OldFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
LubFalse(Sender);
GolFalse(Sender);
KrevoFalse(Sender);
end;

procedure TForm5.NovogrClick(Sender: TObject);
begin
NewFalse(Sender);
OldFalse(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogTrue(Sender);
LubFalse(Sender);
GolFalse(Sender);
KrevoFalse(Sender);
end;

procedure TForm5.OldClick(Sender: TObject);
begin
NewFalse(Sender);
OldTrue(Sender);
LidaFalse(Sender);
MirFalse(Sender);
NovogFalse(Sender);
LubFalse(Sender);
GolFalse(Sender);
KrevoFalse(Sender);
end;

procedure TForm5.ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
panel1.Top:=-ScrollPos;
end;

end.
