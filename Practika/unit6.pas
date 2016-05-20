unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, mysql55conn, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, Menus, DBGrids, ExtCtrls, StdCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
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
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MySQL55Connection1AfterConnect(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form6: TForm6;

implementation
     uses Unit2,Unit1,Unit3,Unit4,Unit7, Unit5,Unit8,Unit9;
{$R *.lfm}

{ TForm6 }

procedure TForm6.Button1Click(Sender: TObject);
  begin

  if (LabeledEdit1.Text = '') then begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from bezrab where obrazovanie="'+LabeledEdit2.Text+'" and arxiv = "N"');
  SQLQuery1.Open;
  end;

   if (LabeledEdit2.Text = '') then begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from bezrab where professia="'+LabeledEdit1.Text+'" and arxiv = "N"');
  SQLQuery1.Open;
  end;

    if not ((LabeledEdit1.Text = '') or (LabeledEdit2.Text = '')) then begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from bezrab where professia="'+LabeledEdit1.Text+'" and obrazovanie="'+LabeledEdit2.Text+'" and  arxiv = "N"');
  SQLQuery1.Open;
  end;
   end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from bezrab where arxiv = "N"');
  SQLQuery1.Open;
  end;

procedure TForm6.Button3Click(Sender: TObject);
  var i:String;
begin

   try
   if not (SQLQuery1.IsEmpty) then begin
   i:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('UPDATE `birga`.`bezrab` SET `arxiv` = "Y" where id = "'+i+'"');
   SQLQuery1.ExecSQL;
   SQLTransaction1.Commit;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('Select * from bezrab where arxiv = "N"');
   SQLQuery1.Open;
   Application.MessageBox('Резюме выбрано', 'Успешно!',0);
   end;
   except
   Application.MessageBox('Не удалось взять резюме.Убедитесь,что, вы, выбрали резюме', 'Ошибка!',0);
   end;
end;

procedure TForm6.Button4Click(Sender: TObject);
  var i:String;
begin
   try
   if not (SQLQuery1.IsEmpty) then begin
   i:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('DELETE from `birga`.`bezrab` where id = "'+i+'"');
   SQLQuery1.ExecSQL;
   SQLTransaction1.Commit;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('SELECT * from bezrab where arxiv="N"');
   SQLQuery1.Active:=True;
   Application.MessageBox('Резюме удалено', 'Успешно!',16);
   end;
   except
   Application.MessageBox('Не удалось удалить резюме.Убедитесь, что, вы, выбрали резюме','Ошибка!',16);
end;

end;

procedure TForm6.FormCreate(Sender: TObject);
begin

end;

procedure TForm6.MenuItem10Click(Sender: TObject);
begin
   Form8.Show;
  Form6.Close;
end;

procedure TForm6.MenuItem11Click(Sender: TObject);
begin
    Form1.Close;
end;

procedure TForm6.MenuItem13Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm6.MenuItem4Click(Sender: TObject);
begin
   Form2.Show;
  Form6.Close;
end;

procedure TForm6.MenuItem5Click(Sender: TObject);
begin
   Form3.Show;
  Form6.Close;
end;

procedure TForm6.MenuItem6Click(Sender: TObject);
begin
   Form5.Show;
  Form6.Close;
end;

procedure TForm6.MenuItem7Click(Sender: TObject);
begin

end;

procedure TForm6.MenuItem9Click(Sender: TObject);
begin
   Form7.Show;
  Form6.Close;
end;

procedure TForm6.MySQL55Connection1AfterConnect(Sender: TObject);
begin

end;


end.

