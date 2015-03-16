program LR2_NEW_Heap;
{$APPTYPE CONSOLE}
uses
  SysUtils;

type mas=array of integer;
procedure HeapSort(var a:mas);

procedure sift(L,R: integer);
var
i,j: integer;
x,n: integer;
begin
n:=length(a)-1;
i:=L;
j:=2*i;
x:=a[i];
if (j<R) and (a[j]<a[j+1]) then
j:=j+1;
while (j<=R) and (x<a[j]) do
begin
a[i]:=a[j];
i:=j;
j:=2*j;
if (j<R) and (a[j]<a[j+1]) then
j:=j+1;
end;
a[i]:=x;
end;
var
L,R: integer;
x,n: integer;
begin
n:=length(a)-1;
L:=(N div 2)+1; // Подготовка к реализации
R:=N;
while L>1 do
begin
L:=L-1; // Создание пирамиды
sift(L,R);
end;
while R>1 do
begin
x:=a[1];
a[1]:=a[R];
a[R]:=x; //
R:=R-1;
sift(L,R);
end;
end;
var
TP: TdateTime;
myHour, myMin, mySec, mymilli:word ;
nazv:string;
a,b,c:mas;
i,n:integer;
vhod,vyhod:string;
input,output:text;
t:char;
begin
vhod:=paramstr(1);
vyhod:=paramstr(2);
assignfile(input,vhod);
reset(input);
assignfile
(output,vyhod);
rewrite(output);
readln(input,n);
setlength (a,n);
setlength (b,n+1);
setlength (c,n);
for I := 0 to n-1 do begin
read (input,a[i]);
b[i+1]:=a[i];
c[i]:=a[i];
end;
setlength(a,n+1);
for I := 0 to n - 1 do
a[i+1]:=b[i];
Tp:=Now;
HeapSort(a);
Tp:=Now-Tp;
DecodeTime(Tp, myHour, myMin, mySec, myMilli);
writeln(output,n);
for I := 1 to n do
write (output,a[i],' ');
writeln(output);
writeln(output,'Piramida');
writeln(output,myHour*3600+myMin*60+mySec+myMilli/1000:0:3,' sec');
readln;
closefile (input);
closefile (output);
end.
