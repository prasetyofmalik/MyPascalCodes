program testsubs;
uses dynlibs;

type
  tsubstrfunc =
    function(const cstring:pchar;frompos,topos: longint): pchar; cdecl;

const
  baselibname = 'libsubs.';

{$ifdef windows}
  libext = 'dll';
{$else}
{$ifdef macos}
  libext = 'dylib';
{$else}
  libext = 'so';
{$endif}
{$endif}

var
 s : pchar;
 frompos, topos: integer;
 lib : tlibhandle;
 substr : tsubstrfunc;

begin
  s := 'test';
  frompos := 2;
  topos := 3;
  lib := loadlibrary('libsubs.so');
  pointer(substr):= getprocaddress(lib,'substr');
  writeln(substr(s, frompos, topos));
  unloadlibrary(lib);
end.



