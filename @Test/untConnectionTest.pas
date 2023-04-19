unit untConnectionTest;

interface
  uses
    Classes,SysUtils, Windows,TestFramework , untDatabaseConnection;
  type
    TConnectionTeste = class(TTestCase)
    private
      FConnection : TConnection;
      procedure sourceDescriptionIsEmpty;
    protected
      procedure SetUp; override;
      procedure TearDown; override;
    published
      procedure connected;
      procedure notConnected;
      procedure validSourceDescriptionIsEmpty;
    end;
implementation

{ TConnectionTeste }

procedure TConnectionTeste.connected;
begin
   FConnection.SourceDescription:= 'teste';
   CheckEquals(True,FConnection.connected);
end;

procedure TConnectionTeste.notConnected;
begin
  FConnection.SourceDescription:= 'batata';
  CheckEquals(False,FConnection.connected);
end;

procedure TConnectionTeste.SetUp;
begin
  inherited;
  FConnection:= TConnection.Create;
end;

procedure TConnectionTeste.sourceDescriptionIsEmpty;
begin
  FConnection.SourceDescription:= '';
end;

procedure TConnectionTeste.TearDown;
begin
  inherited;
  FreeAndNil(FConnection);
end;

procedure TConnectionTeste.validSourceDescriptionIsEmpty;
begin
  CheckException(sourceDescriptionIsEmpty,ESourceDescriptionEmpty,'Erro não retornado com sourceDescription vazio');
end;

initialization
  TestFramework.RegisterTest('Teste conexão ao banco de dados', TConnectionTeste.Suite);
end.
