program TestProject;

{$APPTYPE CONSOLE}

uses
  ExceptionLog,
  Forms,
  TestFrameWork,
  GuiTestRunner,
  //TextTestRunner,
  untConnectionTest in 'untConnectionTest.pas';

{$R *.res}

begin
  Application.Initialize;
  GUITestRunner.RunRegisteredTests;
 // TextTestRunner.RunRegisteredTests;
end.
