program bola_pantul;
uses crt;
var
	x, y, dx, dy : integer;

begin
	x:= 40;
	y:= 12;
	dx:= 1;
	dy:= 1;

	repeat
		x:= x + dx;
		y:= y + dy;
		if(x<2) or (x>68) then dx:= -dx;
		if(y<2) or (y>23) then dy:= -dy;

		gotoxy(x,y);
		write('o');
		delay(100);
		gotoxy(x,y);
		write(' ');
	until keypressed;
	readkey;
end.

