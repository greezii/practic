unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql55conn,sqldb, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Menus;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    Label1: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
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
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure LabeledEdit2Change(Sender: TObject);
    procedure LabeledEdit3Change(Sender: TObject);
    procedure LabeledEdit5Change(Sender: TObject);
    procedure LabeledEdit6Change(Sender: TObject);
    procedure LabeledEdit6KeyPress(Sender: TObject; var Key: char);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MySQL55Connection1AfterConnect(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
     uses Unit5,Unit1,Unit3,Unit4,Unit7, Unit6,Unit8,Unit9;
{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  if((LabeledEdit1.Text = '')or(LabeledEdit2.Text = '')or(LabeledEdit3.Text = '')or(LabeledEdit4.Text = '')or(LabeledEdit5.Text = '')or(Memo1.Text = '') or (LabeledEdit6.Text = ''))then Application.MessageBox('Заполните все поля', 'Внимание!',0)
  else
   begin
   try
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('INSERT INTO `birga`.`vacan`(`frima`, `dolgnost`, `yslovtryd`, `yslovoplat`, `gilyslov`,`trebovanie`,`zarplata`,`arxiv`) VALUES ("'+LabeledEdit1.Text+'", "'+LabeledEdit2.Text+'", "'+LabeledEdit3.Text+'","'+LabeledEdit4.Text+'","'+LabeledEdit5.Text+'","'+Memo1.Text+'","'+LabeledEdit6.Text+'","N")');
   SQLQuery1.ExecSQL;
   SQLTransaction1.Commit;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('Select * from vacan');
   SQLQuery1.Open;
   Application.MessageBox('Вакансия добавлена', 'Успешно!',0);
   except
   Application.MessageBox('Не удалось добавить запись. Посмотрите корректно ли введены данные', 'Ошибка!',0);
   end;
   end;
  LabeledEdit1.Text:='';
  LabeledEdit2.Text:='';
  LabeledEdit3.Text:='';
  LabeledEdit4.Text:='';
  LabeledEdit5.Text:='';
  LabeledEdit6.Text:='';
  Memo1.Text:='';
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

procedure TForm2.LabeledEdit1Change(Sender: TObject);
begin

end;

procedure TForm2.LabeledEdit2Change(Sender: TObject);
begin

end;

procedure TForm2.LabeledEdit3Change(Sender: TObject);
begin

end;

procedure TForm2.LabeledEdit5Change(Sender: TObject);
begin

end;

procedure TForm2.LabeledEdit6Change(Sender: TObject);
begin

end;

procedure TForm2.LabeledEdit6KeyPress(Sender: TObject; var Key: char);
begin
  if  not (Key in ['0'..'9',#8] )then
       begin
       Key:=#0;
       Application.MessageBox('Введите корректное значение для поля зарплата','Внимание!',0);
       end;
end;

procedure TForm2.Memo1Change(Sender: TObject);
begin

end;

procedure TForm2.MenuItem10Click(Sender: TObject);
begin
   Form8.Show;
   Form2.Close;
end;

procedure TForm2.MenuItem11Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm2.MenuItem12Click(Sender: TObject);
begin

end;

procedure TForm2.MenuItem13Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm2.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm2.MenuItem4Click(Sender: TObject);
begin

end;

procedure TForm2.MenuItem5Click(Sender: TObject);
begin
  Form3.Show;
  Form2.Close;

end;

procedure TForm2.MenuItem6Click(Sender: TObject);
begin
   Form5.Show;
   Form2.Close;
end;

procedure TForm2.MenuItem7Click(Sender: TObject);
begin
   Form6.Show;
   Form2.Close;
end;

procedure TForm2.MenuItem8Click(Sender: TObject);
begin

end;

procedure TForm2.MenuItem9Click(Sender: TObject);
begin
   Form7.Show;
   Form2.Close;
end;

procedure TForm2.MySQL55Connection1AfterConnect(Sender: TObject);
begin

end;

end.

