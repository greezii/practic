unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls, Unit2, Unit3, Unit5, Unit6, Unit7, Unit8, Unit9;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem2Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
     Form8.Show;
     Form1.Hide;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
     Form2.Show;
     Form1.Hide;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
     Form3.Show;
     Form1.Hide;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
    Form5.Show;
     Form1.Hide;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
     Form6.Show;
     Form1.Hide;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
     Form7.Show;
     Form1.Hide;
end;

end.

