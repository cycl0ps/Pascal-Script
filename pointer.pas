PROGRAM TesPointer;

VAR
	pv,pw,px,py,pz : ^integer;
	v,w,x,y,z : integer;

BEGIN
	v := 100;	
	w := 200;
	x := 10;
	y := 12;
	z := 500;

	pv := @v;
	pw := @w;
	px := @x;
	py := NIL;

	writeln('alamat pointer pv = ', SEG(pv^),':',OFS(pv^));
	writeln('alamat pointer pw = ', SEG(pw^),':',OFS(pw^));	
	writeln('alamat pointer px = ', SEG(px^),':',OFS(px^));
	writeln('alamat pointer py = ', SEG(py^),':',OFS(py^));
	writeln('alamat pointer pz = ', SEG(pz^),':',OFS(pz^));	

END.
