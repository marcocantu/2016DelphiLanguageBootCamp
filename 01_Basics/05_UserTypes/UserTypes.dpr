program UserTypes;

uses
  System.StartUpCopy,
  FMX.Forms,
  UserTypesForm in 'UserTypesForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
