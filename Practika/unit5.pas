unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, mysql55conn, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, Menus, DBGrids, ExtCtrls, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
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
    SaveDialog1: TSaveDialog;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: char);
    procedure LabeledEdit2Change(Sender: TObject);
    procedure LabeledEdit2KeyPress(Sender: TObject; var Key: char);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
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
  Form5: TForm5;

implementation
      uses Unit2,Unit1,Unit3,Unit4,Unit7, Unit6,Unit8,Unit9;
{$R *.lfm}

{ TForm5 }

procedure TForm5.Button1Click(Sender: TObject);
begin
  if (LabeledEdit2.Text = '') then LabeledEdit2.Text:=LabeledEdit1.Text;
  if(LabeledEdit3.Text= '')then   begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from vacan where zarplata>="'+LabeledEdit1.Text+'" and zarplata<="'+LabeledEdit2.Text+'" and arxiv = "N"');
  SQLQuery1.Open;
  end;
  if not (LabeledEdit3.Text= '') then begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from vacan where zarplata>="'+LabeledEdit1.Text+'" and zarplata<="'+LabeledEdit2.Text+'" and dolgnost = "'+LabeledEdit3.Text+'" and  arxiv = "N"');
  SQLQuery1.Open;
  end;
   if((LabeledEdit1.Text= '') and (LabeledEdit2.Text= '')) then begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from vacan where dolgnost = "'+LabeledEdit3.Text+'" and arxiv = "N"');
  SQLQuery1.Open;
  end;
  end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from vacan where arxiv = "N"');
  SQLQuery1.Open;
  end;

procedure TForm5.Button3Click(Sender: TObject);
var i:String;

begin
   begin
   try
   if not (SQLQuery1.IsEmpty) then begin
   i:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('UPDATE `birga`.`vacan` SET `arxiv` = "Y" where id = "'+i+'"');
   SQLQuery1.ExecSQL;
   SQLTransaction1.Commit;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('Select * from vacan where arxiv = "N"');
   SQLQuery1.Open;
   Application.MessageBox('Вакансия выбрана','Успешно!',0);
   end;
   except
   Application.MessageBox('Не удалось выбрать вакансию.Убедитесь,что, вы, выбрали вакансию', 'Ошибка!',0);
   end;
   end;
end;

procedure TForm5.Button4Click(Sender: TObject);
  var i:String;
begin
   try
   if not (SQLQuery1.IsEmpty) then begin
   i:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('DELETE from `birga`.`vacan` where id = "'+i+'"');
   SQLQuery1.ExecSQL;
   SQLTransaction1.Commit;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('SELECT * from vacan where arxiv="N"');
   SQLQuery1.Active:=True;
   Application.MessageBox('Вакансия удалена', 'Успешно!',0);
   end;
   except
   Application.MessageBox('Не удалось удалить вакансию. Убедитесь, что, вы, выбрали вакансию','Ошибка!',0);
end;

   end;

procedure TForm5.Button5Click(Sender: TObject);
begin
  try
 SaveDialog1.Filter := 'Text file|*.txt|Word file|*.doc';
 if not (SQLQuery1.IsEmpty) then begin
 Memo1.Append('Фирма: '+DBGrid1.DataSource.DataSet.FieldByName('frima').AsString);
 Memo1.Append('Должность: '+DBGrid1.DataSource.DataSet.FieldByName('dolgnost').AsString);
 Memo1.Append('Условия труда: '+DBGrid1.DataSource.DataSet.FieldByName('yslovtryd').AsString);
 Memo1.Append('Условия оплаты: '+DBGrid1.DataSource.DataSet.FieldByName('yslovoplat').AsString);
 Memo1.Append('Жилищные условия: '+DBGrid1.DataSource.DataSet.FieldByName('gilyslov').AsString);
 Memo1.Append('Требования к специалисту: '+DBGrid1.DataSource.DataSet.FieldByName('trebovanie').AsString);
 Memo1.Append('Зарплата: '+DBGrid1.DataSource.DataSet.FieldByName('zarplata').AsString);
if (SaveDialog1.Execute) then Memo1.Lines.SaveToFile(SaveDialog1.FileName);
 Application.MessageBox('Объявление создано','Успешно!',0);
 end;
 except
 if (SQLQuery1.IsEmpty) then
      Application.MessageBox('Ошибка,выберите объявление','Внимание!',0);
  end;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin

end;

procedure TForm5.LabeledEdit1Change(Sender: TObject);
begin

end;

procedure TForm5.LabeledEdit1KeyPress(Sender: TObject; var Key: char);
begin
       if not (Key in ['0'..'9',#8] )then
       begin
       Key:=#0;
       ShowMessage('Введите корректное значение для поля зарплата');
       end;
end;

procedure TForm5.LabeledEdit2Change(Sender: TObject);
begin

end;

procedure TForm5.LabeledEdit2KeyPress(Sender: TObject; var Key: char);
begin
   if  not (Key in ['0'..'9',#8] )then
       begin
       Key:=#0;
         Application.MessageBox('Введите корректное значение для поля зарплата', 'Внимание!',0);
       end;
end;

procedure TForm5.Memo1Change(Sender: TObject);
begin

end;

procedure TForm5.MenuItem10Click(Sender: TObject);
begin
   Form8.Show;
  Form5.Close;
end;

procedure TForm5.MenuItem11Click(Sender: TObject);
begin
    Form1.Close;
end;

procedure TForm5.MenuItem13Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm5.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm5.MenuItem2Click(Sender: TObject);
begin

end;

procedure TForm5.MenuItem3Click(Sender: TObject);
begin

end;

procedure TForm5.MenuItem4Click(Sender: TObject);
begin
  Form2.Show;
  Form5.Close;
end;

procedure TForm5.MenuItem5Click(Sender: TObject);
begin
      Form3.Show;
  Form5.Close;
end;

procedure TForm5.MenuItem6Click(Sender: TObject);
begin

end;

procedure TForm5.MenuItem7Click(Sender: TObject);
begin
   Form6.Show;
  Form5.Close;
end;

procedure TForm5.MenuItem8Click(Sender: TObject);
begin

end;

procedure TForm5.MenuItem9Click(Sender: TObject);
begin
   Form7.Show;
  Form5.Close;
end;

end.

