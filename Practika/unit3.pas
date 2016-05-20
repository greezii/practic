unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql55conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls, DbCtrls, MaskEdit, Menus,Unit4;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    MainMenu1: TMainMenu;
    MaskEdit1: TMaskEdit;
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
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    SQLTransaction2: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBLookupComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit10Change(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure LabeledEdit2Change(Sender: TObject);
    procedure LabeledEdit3Change(Sender: TObject);
    procedure LabeledEdit4Change(Sender: TObject);
    procedure LabeledEdit5Change(Sender: TObject);
    procedure LabeledEdit6Change(Sender: TObject);
    procedure LabeledEdit7Change(Sender: TObject);
    procedure LabeledEdit8Change(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
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
  Form3: TForm3;

implementation
    uses Unit2,Unit1,Unit5,Unit7,Unit6,Unit8,Unit9;
{$R *.lfm}

{ TForm3 }

procedure TForm3.DBLookupComboBox1Change(Sender: TObject);
begin

end;

procedure TForm3.FormCreate(Sender: TObject);
begin

end;

procedure TForm3.LabeledEdit10Change(Sender: TObject);
begin

end;

procedure TForm3.LabeledEdit1Change(Sender: TObject);
begin

end;

procedure TForm3.LabeledEdit2Change(Sender: TObject);
begin

end;

procedure TForm3.LabeledEdit3Change(Sender: TObject);
begin

end;

procedure TForm3.LabeledEdit4Change(Sender: TObject);
begin

end;

procedure TForm3.LabeledEdit5Change(Sender: TObject);
begin

end;

procedure TForm3.LabeledEdit6Change(Sender: TObject);
begin

end;

procedure TForm3.LabeledEdit7Change(Sender: TObject);
begin

end;

procedure TForm3.LabeledEdit8Change(Sender: TObject);
begin

end;

procedure TForm3.MaskEdit1Change(Sender: TObject);
begin

end;

procedure TForm3.Memo1Change(Sender: TObject);
begin

end;

procedure TForm3.MenuItem10Click(Sender: TObject);
begin
  Form8.Show;
  Form3.Close;
end;

procedure TForm3.MenuItem11Click(Sender: TObject);
begin
    Form1.Close;
end;

procedure TForm3.MenuItem13Click(Sender: TObject);
begin
 Form9.Show
end;

procedure TForm3.MenuItem4Click(Sender: TObject);
begin
   Form3.Close;
  Form2.Show;
end;

procedure TForm3.MenuItem5Click(Sender: TObject);
begin

end;

procedure TForm3.MenuItem6Click(Sender: TObject);
begin
  Form5.Show;
  Form3.Close;
end;

procedure TForm3.MenuItem7Click(Sender: TObject);
begin
  Form6.Show;
  Form3.Close;
end;

procedure TForm3.MenuItem8Click(Sender: TObject);
begin

end;

procedure TForm3.MenuItem9Click(Sender: TObject);
begin
  Form7.Show;
  Form3.Close;
end;

procedure TForm3.DBComboBox1Change(Sender: TObject);
begin

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  if ((LabeledEdit1.Text = '')or(LabeledEdit2.Text = '')or(LabeledEdit3.Text = '')or(LabeledEdit4.Text = '')or(LabeledEdit5.Text = '')or(LabeledEdit6.Text = '')or(LabeledEdit6.Text = '')or(LabeledEdit7.Text = '')or(LabeledEdit8.Text = '')) then Application.MessageBox('Заполните все поля', 'Внимание!',0)
  else
  begin
   try
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('INSERT INTO  `birga`.`bezrab` (`professia`, `obrazovanie`, `mestoposrab`, `dolgposrab`, `prichinayvol`, `semeinoepol`, `gilyslov`, `FIO`, `phone`, `addres`, `email`, `trebovanie`, `arxiv`) VALUES ("'+ComboBox1.Text+'", "'+LabeledEdit2.Text+'", "'+LabeledEdit3.Text+'","'+LabeledEdit4.Text+'","'+LabeledEdit5.Text+'","'+LabeledEdit6.Text+'","'+LabeledEdit7.Text+'","'+LabeledEdit8.Text+'","'+MaskEdit1.Text+'","'+LabeledEdit10.Text+'","'+LabeledEdit1.Text+'","'+Memo1.Text+'","N")');
   SQLQuery1.ExecSQL;
   SQLTransaction1.Commit;
   SQLQuery1.Close;
   SQLQuery1.SQL.Clear;
   SQLQuery1.SQL.Add('Select * from bezrab');
   SQLQuery1.Open;
      Application.MessageBox('Резюме добавленно', 'Успешно!',0);
  except
    Application.MessageBox('Не удалось добавиь запись. Посмотрите корректно ли введины данные', 'Ошибка!',0);
   end;
   end;
    LabeledEdit1.Text:='';
     LabeledEdit2.Text:='';
      LabeledEdit3.Text:='';
       LabeledEdit4.Text:='';
        LabeledEdit5.Text:='';
         LabeledEdit6.Text:='';
          LabeledEdit7.Text:='';
           LabeledEdit8.Text:='';
           LabeledEdit10.Text:='';
            MaskEdit1.Text:='';
            Memo1.Text:='';
            ComboBox1.Text:='';
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form4.Show;
  Form3.Close;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm3.ComboBox1Enter(Sender: TObject);
   var
  i:integer;
begin
SQLQuery1.Active:=true;
SQLQuery1.ApplyUpdates;
SQLTransaction1.Commit;
SQLQuery1.Active:=true;
ComboBox1.Items.Clear;
SQLQuery1.Close;
SQLQuery1.SQL.Clear;
SQLQuery1.SQL.Add('select * from profa;');
SQLQuery1.Active:=true;
SQLQuery1.First;
for i := 0 to SQLQuery1.RecordCount - 1 do
begin
ComboBox1.Items.Add(SQLQuery1.FieldByName('professia').AsString);
SQLQuery1.Next;
end;

end;

end.

