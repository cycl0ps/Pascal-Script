program TesPointer;

var
	m,n,z : integer;
	p,q : ^integer;
	c : char;

begin
	m := 10;
	n := 15;
	p := @m;
	p^ := 12;
	writeln('m = ',m,' n = ',n);
	c := ^p;
	writeln(c);
end.
