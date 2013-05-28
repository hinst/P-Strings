function GetByteLength(const aString: String): Integer; inline;
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

