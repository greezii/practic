unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, mysql55conn, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, Menus, DBGrids, StdCtrls;

type

  { TForm7 }

  TForm7 = class(TForm)
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
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure MenuItem10Click(Sender: TObject);
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
  Form7: TForm7;

implementation
   uses Unit2,Unit1,Unit3,Unit4,Unit5, Unit6,Unit8,Unit9;
{$R *.lfm}

{ TForm7 }

procedure TForm7.DataSource1DataChange(Sender: TObject; Field: TField);
begin

end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from vacan where arxiv = "Y"');
  SQLQuery1.Open;
  end;


procedure TForm7.MenuItem10Click(Sender: TObject);
begin
    Form8.Show;
  Form7.Close;
end;

procedure TForm7.MenuItem11Click(Sender: TObject);
begin
    Form1.Close;
end;

procedure TForm7.MenuItem13Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm7.MenuItem4Click(Sender: TObject);
begin
   Form2.Show;
  Form7.Close;
end;

procedure TForm7.MenuItem5Click(Sender: TObject);
begin
   Form3.Show;
  Form7.Close;
end;

procedure TForm7.MenuItem6Click(Sender: TObject);
begin
   Form5.Show;
  Form7.Close;
end;

procedure TForm7.MenuItem7Click(Sender: TObject);
begin
     Form6.Show;
  Form7.Close;
end;

procedure TForm7.MenuItem9Click(Sender: TObject);
begin

end;

end.

