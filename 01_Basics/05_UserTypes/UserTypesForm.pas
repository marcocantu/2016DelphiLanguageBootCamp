unit UserTypesForm;

interface

// running this program raises an exception by design

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Memo, FMX.Controls.Presentation, FMX.ScrollBox;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Show (const msg: string);
  end;

var
  Form1: TForm1;

type
  TTen = 1..10;
  TUpperCase = 'A'..'Z';
  TSuit = (Club, Diamond, Heart, Spade);
  TSuits = set of TSuit;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  n: TTen;
  s: TSuit;
  ss: TSuits;
begin
  n := 5;
  // n := 12;
  s := Club;
  // s := 2;
  ss := [Diamond, Spade];
  Include (ss, s);
end;

procedure TForm1.Show(const msg: string);
begin
  Memo1.Lines.Add(msg);
end;

end.
