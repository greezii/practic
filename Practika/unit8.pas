unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, mysql55conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, Menus, StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    MainMenu1: TMainMenu;
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
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form8: TForm8;

implementation
       uses Unit2,Unit1,Unit3,Unit4,Unit5, Unit6,Unit7,Unit9;
{$R *.lfm}

{ TForm8 }

procedure TForm8.MenuItem4Click(Sender: TObject);
begin
  Form2.Show;
   Form8.Close;
end;

procedure TForm8.MenuItem11Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from bezrab where arxiv = "Y"');
  SQLQuery1.Open;
  end;


procedure TForm8.MenuItem13Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm8.MenuItem5Click(Sender: TObject);
begin
   Form3.Show;
   Form8.Close;
end;

procedure TForm8.MenuItem6Click(Sender: TObject);
begin
   Form5.Show;
   Form8.Close;
end;

procedure TForm8.MenuItem7Click(Sender: TObject);
begin
   Form6.Show;
   Form8.Close;
end;

procedure TForm8.MenuItem9Click(Sender: TObject);
begin
   Form7.Show;
   Form8.Close;
end;

end.

