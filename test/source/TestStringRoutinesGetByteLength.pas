program TestStringRoutinesGetByteLength;

uses
  StringRoutines;

procedure Test(const aString: String); overload;
begin
  WriteLn('"', aString, '" ', GetByteLength(aString));
end;

procedure Test; overload;
begin
  Test('FFFUUU');
  Test('Колбасятина');
end;

begin
  Test;
end.

