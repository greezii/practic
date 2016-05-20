unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.lfm}

{ TForm9 }

procedure TForm9.Memo1Change(Sender: TObject);
begin

end;

procedure TForm9.FormCreate(Sender: TObject);
begin

end;

end.

