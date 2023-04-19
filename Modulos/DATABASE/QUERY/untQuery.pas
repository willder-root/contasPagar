unit untQuery;

interface
  uses
    classes,DB, ADODB, Windows, SysUtils, untDatabaseConnection, untQueryInterface;

  type
{ TQuery }

  TQuery = class(TInterfacedObject, IQuery)
  private
    FConnection: TADOConnection;
    FQuery: TADOQuery;
  public
    constructor Create(connection: TADOConnection);
    destructor Destroy; override;
    procedure Add(const Sql: string);
    procedure AddParam(const Key: string; const Value: variant);
    procedure Open(const Sql: string); overload;
    procedure Open; overload;
    procedure ExecuteQuery;
    function Dataset: TDataset;
    class function newQuery(connection:TADOConnection):IQuery;
  end;

implementation

{ TQuery }

procedure TQuery.Add(const Sql: string);
begin
  FQuery.SQL.Add(Sql);
end;

procedure TQuery.AddParam(const Key: string; const Value: variant);
begin
  FQuery.FieldByName(Key).AsVariant := Value;
end;

constructor TQuery.Create(connection: TADOConnection);
begin
  FConnection := connection;
  FQuery := TADOQuery.Create(nil);
  FQuery.Connection := FConnection;
end;

function TQuery.Dataset: TDataset;
begin
  Result := FQuery;
end;

destructor TQuery.Destroy;
begin
  FreeAndNil(FConnection);
  FreeAndNil(FQuery);
  inherited;
end;

procedure TQuery.ExecuteQuery;
begin
  FQuery.ExecSQL;
end;

class function TQuery.newQuery(connection: TADOConnection): IQuery;
begin
  Result := self.create(connection);
end;

procedure TQuery.Open(const Sql: string);
begin
  FQuery.SQL.Add(Sql);
  FQuery.Open;
end;

procedure TQuery.Open;
begin
  FQuery.Open;
end;

end.
 