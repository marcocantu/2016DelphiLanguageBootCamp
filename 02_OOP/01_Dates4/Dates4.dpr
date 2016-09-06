program Dates4;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.MobilePreview,
  DatesForm in 'DatesForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
