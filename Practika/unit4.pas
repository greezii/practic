unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, mysql55conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ExtCtrls, Menus;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    LabeledEdit1: TLabeledEdit;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}
  uses Unit3,Unit2,Unit1;
{ TForm4 }

procedure TForm4.Button1Click(Sender: TObject);
begin
  if (LabeledEdit1.Text='') then Application.MessageBox('Заполните все поля', 'Внимание!',0)
  else
  begin
  try
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('INSERT INTO  `birga`.`profa` (`professia`) VALUES ("'+LabeledEdit1.Text+'")');
   SQLQuery1.ExecSQL;
   SQLTransaction1.Commit;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('Select * from profa');
   SQLQuery1.Open;
   Application.MessageBox('Профессия добавленна', 'Успешно!',0);
   except
    Application.MessageBox('В базе есть такая профессия', 'Внимание!',0);
   end;
  end;
   end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form3.Show;
  Form4.Close;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin

end;

procedure TForm4.LabeledEdit1Change(Sender: TObject);
begin

end;

procedure TForm4.MenuItem4Click(Sender: TObject);
begin
  Form4.Close;
  Form2.Show;
end;

procedure TForm4.MenuItem5Click(Sender: TObject);
begin
   Form4.Close;
  Form3.Show;
end;

procedure TForm4.MenuItem8Click(Sender: TObject);
begin
    Form4.Close;
  Form1.Show;
end;

end.

