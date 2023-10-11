PROGRAM latihan

VAR

FUNCTION f(x:real) : real
	BEGIN
		RETURN x*x + 2;
	END;

BEGIN
	writeln(f(0));
	writeln(f(1));
	writeln(f(2));
	writeln(f(3));

END.
