unit untDatabase;

interface
  uses
    Classes, ADODB, SysUtils;
    
implementation

function ConnectionDatabasePostgres: TADOConnection;
begin
  Result := TADOConnection.Create(nil);
  Result.ConnectionString := 'Provider=MSDASQL.1;Persist Security'+
                             ' Info=False;Data Source=' + 'contasPagar';
  Result.Connected := True;
end;

end.
 