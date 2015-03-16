program LR2_NEW_Fast;
{$APPTYPE CONSOLE}
uses
  SysUtils;

type mas=array of integer;
procedure QuickSort(var a: mas);
procedure sort(L, R: integer);
var
i, j: integer;
w, x: integer;
begin
i := L;
j := R;
x := a[(L + R) div 2];
repeat
while a[i] < x do
i := i + 1;
while x < a[j] do
j := j - 1;
if i <= j then
begin
w := a[i];
a[i] := a[j];
a[j] := w;
i := i + 1;
j := j - 1;
end;
until i > j;
if L < j then
sort(L, j);
if i < R then
sort(i, R);
end ;
var n:integer;
begin
n:=length(a)-1;
sort(0,n);
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
Tp:=Now;
QuickSort (b);
Tp:=Now-Tp;

DecodeTime(Tp, myHour, myMin, mySec, myMilli);
writeln(output,n);
for I := 0 to n-1 do
write (output,b[i],' ');
writeln(output);
writeln(output,'Fast');
writeln(output,myHour*3600+myMin*60+mySec+myMilli/1000:0:3,' sec');

readln;
closefile (input);
closefile (output);
end.
