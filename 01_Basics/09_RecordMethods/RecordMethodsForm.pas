unit RecordMethodsForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Memo, FMX.Controls.Presentation, FMX.ScrollBox;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Show (const msg: string);
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

type
  TMyRecord = record
  private
    Name: string;
    Value: Integer;
    SomeChar: Char;
  public
    function ToString: string;
    procedure SetValue (NewString: string);
    procedure Init (NewValue: Integer);
  end;

procedure TForm1.Button1Click(Sender: TObject);
var
  MyRec: TMyRecord;
begin
  MyRec.Init(10);
  MyRec.SetValue ('hello');
  Show (MyRec.ToString);
  MyRec.Value := 20; // actually works!
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  MyRec: TMyRecord;
begin
  Show (MyRec.ToString);
end;

function DoubleTheRecord (ARec: TMyRecord): TMyRecord;
begin
  Result.Name := ARec.Name + ' ' + ARec.Name;
  Result.Value := ARec.Value * 2;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  MyRec: TMyRecord;
begin
  MyRec.Name := 'Joe';
  MyRec.Value := 21;

  MyRec := DoubleTheRecord (MyRec);

  Show (MyRec.Name + ': ' + MyRec.Value.ToString);
end;

procedure TForm1.Show(const msg: string);
begin
  Memo1.Lines.Add(msg);
end;

{ TMyRecord }

procedure TMyRecord.Init(NewValue: Integer);
begin
  Value := NewValue;
  SomeChar := 'A';
end;

function TMyRecord.ToString: string;
begin
  Result := Name + ' [' + SomeChar + ']: ' + Value.ToString;
end;

procedure TMyRecord.SetValue(NewString: string);
begin
  Name := NewString;
end;

end.
