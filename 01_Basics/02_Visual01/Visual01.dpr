program Visual01;

uses
  System.StartUpCopy,
  FMX.Forms,
  Visual01Form in 'Visual01Form.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
