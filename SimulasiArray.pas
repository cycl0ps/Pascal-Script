PROGRAM Simulasi_Array;
USES crt;

CONST MaksArray = 10;

TYPE 
	RangeIndeks = 1..MaksArray;
	TipeData = char;
	TipeArray = ARRAY[RangeIndeks] OF TipeData;

VAR Array1 : TipeArray;

FUNCTION pesan(isipesan : string) : char;
BEGIN
	gotoxy(1,24);write(isipesan);
	pesan := upcase(readkey);
	gotoxy(1,24);delline;
END;

PROCEDURE inisialisasi_array(VAR A : TipeArray);
VAR i : RangeIndeks;
BEGIN
	FOR i:=1 to MaksArray DO A[i] := '?';
END;

PROCEDURE cetak_random(A : TipeArray; i : RangeIndeks);
BEGIN
	writeln('Elemen array ke-', i, ' = ', A[i]);
END;

PROCEDURE cetak_bawah_ke_atas(A : TipeArray);
VAR i : integer;
BEGIN
	gotoxy(1,2);writeln('Indeks : ');
	gotoxy(1,3);writeln('Data : ');
	FOR i:=1 TO MaksArray DO
	BEGIN
		gotoxy(10+3*i,2);write(i);
		gotoxy(10+3*i,3);write(A[i],' ');
	END;
END;

PROCEDURE cetak_atas_ke_bawah(A : TipeArray);
VAR i : integer;
BEGIN
	FOR i:= MaksArray DOWNTO 1 DO
	write(A[i],' ');
END;

PROCEDURE mengisi_array_random(var A : TipeArray);
VAR i : integer;
BEGIN
	cetak_bawah_ke_atas(A);
	writeln;
	writeln('Mengisikan data ke Sebuah Elemen Array pada indeks sembarang');
	write('Masukkan Indeks : ');readln(i);
	write('Masukkan Data   : ');readln(A[i]);
END;

PROCEDURE mengisi_array_berurutan(var A : TipeArray);
VAR i : integer;
BEGIN
	cetak_bawah_ke_atas(A);
	writeln;
	writeln('Masukkan Seluruh Elemen Array');
	writeln('Masukkan data karakter sebanyak ', MaksArray, ' kali');
	FOR i:=1 to MaksArray DO read(A[i]);
END;

PROCEDURE cetak(var A : TipeArray; mode : integer);
VAR j : integer;
BEGIN
	write('Mencetak isi Array : ');
	CASE mode OF
	1 : BEGIN
			writeln('Dari Indeks Kecil ke Indeks Besar');
			cetak_bawah_ke_atas(A);
		END;
	2 : BEGIN
			writeln('Dari Indeks Besar ke Indeks Kecil');
			cetak_atas_ke_bawah(A);
		END;
	3 : BEGIN
			writeln('Secara Random');
			write('Masukkan indeks yang akan diakses : ');
			readln(j);
			cetak_random(A,j);
		END;
	END;
	writeln();
	repeat until keypressed;
END;

PROCEDURE layar_menu_utama;
VAR temp : char;
BEGIN
	repeat
		clrscr;
		writeln('Program Simulasi Array');
		writeln();
		writeln('Menu Utama');
		writeln('1. Inisialisasi Array');
		writeln('2. Mengisi/Mengganti Elemen Array secara Random');
		writeln('3. Mengisi Elemen Array secara Berurutan');
		writeln('4. Cetak Isi Array dari Indeks Kecil ke Besar');
		writeln('5. Cetak Isi Array dari Indeks Besar ke Kecil');
		writeln('6. Cetak Isi Array secara Random');
		writeln('7. Selesai');

		temp := pesan('Pilihlah Salah Satu dari pilihan yang tersedia');
		clrscr;
		CASE temp OF
			'1' : inisialisasi_array(Array1);
			'2' : mengisi_array_random(Array1);
			'3' : mengisi_array_berurutan(Array1);
			'4' : cetak(Array1,1);
			'5' : cetak(Array1,2);
			'6' : cetak(Array1,3);
		END;
	until temp = '7';
END;

{program utama}

BEGIN
	layar_menu_utama;
END.
