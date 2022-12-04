program Project;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  MapF in 'Map.pas' {Form4},
  Info in 'Info.pas' {Form2},
  Quest in 'Quest.pas' {Form3},
  Gallery in 'Gallery.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
