unit StringRoutines;

interface

function GetByteLength(const aString: String): Integer; inline;

implementation

function GetByteLength(const aString: String): Integer;
var
	p: PChar;
begin
	p := PChar(aString);
	while
		p^ <> Chr(0)
	do
		Inc(p);
	result := p - PChar(aString) + 1;
end;

end.
