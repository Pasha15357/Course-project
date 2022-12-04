unit Quest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Menus;

type
  TForm3 = class(TForm)
    Background: TImage;
    Quest1: TImage;
    Quest2: TImage;
    Quest3: TImage;
    Quest4: TImage;
    Quest5: TImage;
    Variants: TRadioGroup;
    Check: TImage;
    Continue: TImage;
    Quest: TImage;
    Result: TLabel;
    Question: TLabel;
    ContinueGray: TImage;
    RadioBack: TImage;
    Main: TImage;
    Details: TImage;
    Quest1N: TImage;
    Quest2N: TImage;
    Quest3N: TImage;
    Quest4N: TImage;
    Quest5N: TImage;
    Label1: TLabel;
    procedure Quest1Click(Sender: TObject);
    procedure CheckClick(Sender: TObject);
    procedure Quest2Click(Sender: TObject);
    procedure Quest3Click(Sender: TObject);
    procedure Quest4Click(Sender: TObject);
    procedure Quest5Click(Sender: TObject);
    procedure ContinueClick(Sender: TObject);
    procedure MainClick(Sender: TObject);
    procedure DetailsClick(Sender: TObject);
    procedure QuestOnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  f: text;
  s: string;
  Nvern, ball: integer;

implementation

{$R *.dfm}

uses Info, Map;


procedure TForm3.MainClick(Sender: TObject);
begin
Form2.Close;
Form4.Close;
Form3.Close;
end;

procedure TForm3.QuestOnClick(Sender: TObject);
begin
Variants.Items.Clear;
Result.Caption:= '';
reset(f); //��������� ���� ��� ������
readln(f,s); //��������� ������ ������ �� �����
ball:=0; //���������� ���������� ������ 0
repeat
if (s[1]='-') then begin //���� ������ ������ ������ �-� ������ ��� ������
delete(s,1,1);
Question.Caption:=s;
end
else if s[1]='*' then begin //���� ���� ������ �*� ������ ��� ����� ������� ������
delete(s,1,1);
Nvern:=StrToInt(s);
end
else Variants.Items.Add(s); //����� ��� ������� ������
readln(f,s); //��������� ��������� ������ �� �����
until (s[1]='-') or (Eof(f));
end;

procedure TForm3.DetailsClick(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm3.Quest1Click(Sender: TObject);
begin
AssignFile( f ,extractfilepath(paramstr(0))+'�������\1.txt', CP_UTF8);
QuestOnClick(Sender);
Label1.Visible := False;
end;

procedure TForm3.Quest2Click(Sender: TObject);
begin
AssignFile( f , extractfilepath(paramstr(0))+'�������\2.txt', CP_UTF8);
QuestOnClick(Sender);
end;

procedure TForm3.Quest3Click(Sender: TObject);
begin
AssignFile( f , extractfilepath(paramstr(0))+'�������\3.txt', CP_UTF8);
QuestOnClick(Sender);
end;

procedure TForm3.Quest4Click(Sender: TObject);
begin
AssignFile( f , extractfilepath(paramstr(0))+'�������\4.txt', CP_UTF8);
QuestOnClick(Sender);
end;

procedure TForm3.Quest5Click(Sender: TObject);
begin
AssignFile( f , extractfilepath(paramstr(0))+'�������\5.txt', CP_UTF8);
QuestOnClick(Sender);
end;

procedure TForm3.CheckClick(Sender: TObject);
begin
if (Variants.ItemIndex>-1) then begin
if Variants.ItemIndex = Nvern-1 then begin
ball:=ball+1;
ContinueGray.Visible:= False;
ContinueGray.Enabled:= True;
Continue.Enabled:= True;
Result.Caption:= '�����, ���� ������!';
end
else Result.Caption:= '����� ��������, ��������� ���!';
end;
end;


procedure TForm3.ContinueClick(Sender: TObject);
begin
ContinueGray.Visible:= True;
ContinueGray.Enabled:= False;
Continue.Enabled:= False;
Result.Caption:= '';
if (Variants.ItemIndex>-1) and (not Eof(f)) then begin
Variants.Items.Clear;
Repeat //� ��������� ���� ��� ���������� �������
if (s[1]='-') then begin
delete(s,1,1);
Question.Caption:=s;
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);
end
else Variants.Items.Add(s);
readln(f,s);
until (s[1]='-') or (Eof(f));
end
//���� ����� ����� ���������, ������ ������� �����������
Else if Eof(f) then begin
if (Quest1N.Visible = False) and (Quest2N.Visible = False) and (Quest3N.Visible = False) and (Quest4N.Visible = False) and (Quest5N.Visible = False) then
begin
Result.Caption:='�� ������ ��� ������, �����������! ������ �� ������ ������ � ������ ������������ �������!';
end
else if (Quest1N.Visible = False) and (Quest2N.Visible = False) and (Quest3N.Visible = False) and (Quest4N.Visible = False) then
begin
Quest5N.Visible := False;
Quest5.Enabled := True;
Result.Caption:='�� ��������� 4-� �����, ������ ���������� � 5-��� ������!';
end
else if (Quest1N.Visible = False) and (Quest2N.Visible = False) and (Quest3N.Visible = False) then
begin
Quest4N.Visible := False;
Quest4.Enabled := True;
Result.Caption:='�� ��������� 3-� �����, ������ ���������� � 4-��� ������!';
end
else if (Quest1N.Visible = False) and (Quest2N.Visible = False) then
begin
Quest3N.Visible := False;
Quest3.Enabled := True;
Result.Caption:='�� ��������� 2-� �����, ������ ���������� � 3-��� ������!';
end
else if Quest1N.Visible = False then
begin
Quest2N.Visible := False;
Quest2.Enabled := True;
Result.Caption:='�� ��������� 1-� �����, ������ ���������� �� 2-��� ������!';
end;
delete(s,1,1);
Nvern:=StrToInt(s);
if Variants.ItemIndex = Nvern-1 then ball:=ball+1;
CloseFile(f);
end;
end;


end.
