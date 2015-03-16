program LR2_NEW_Shell1;
{$APPTYPE CONSOLE}
uses
  SysUtils;

type mas=array of integer;
procedure ShellSort(var a:mas;var TD:TdateTime);
procedure shag(x:longint);
var j,i,n:longint;
k,per:longint;
begin
for k := 0 to x do begin
n:=length(a);
i:=k;
while (i<n) do
begin
j:=i;
while (j>=x) and (a[j]<a[j-x]) do begin
begin
per:=a[j-x];
a[j-x]:=a[j];
a[j]:=per;
end;
j:=j-x;
end;
i:=i+x;
end;
end;
end;
var
j: integer;
T: word;
h: array of Longint;
N: Longint;
begin
N := Length(a) - 1;
T := 1;
SetLength(h, T);
h[0] := 1;
while h[T-1] < N div 2 do
begin
T := T + 1;
SetLength(h, T + 1);
h[T-1]:=h[T-2]*3+1;
end;
td:=now;
for j:=t-1 downto 0 do
shag(h[j]);
td:=now-td;
end;

var
TP: TdateTime;
myHour, myMin, mySec, mymilli:word ;
nazv:string;
a,b,c:mas;
i,n:integer;
vdoh,vydoh:string;
input,output:text;
t:char;
begin
vdoh:=paramstr(1);
vydoh:=paramstr(2);
assignfile(input,vdoh);
reset(input);
assignfile
(output,vydoh);

rewrite(output);
readln(input,n);
setlength (a,n);

for I := 0 to n-1 do begin
read (input,a[i]);
end;


ShellSort (a,TP);
DecodeTime(Tp, myHour, myMin, mySec, myMilli);
writeln(output,n);
for I := 0 to n-1 do
write (output,a[i],' ');
writeln(output);
writeln(output,'Shella');
writeln(output,myHour*3600+myMin*60+mySec+myMilli/1000:0:3,' sec');
readln;
closefile (input);
closefile (output);
end.
