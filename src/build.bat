@echo off

set CommonCompilerFlags=-nologo -WX -wd4505 -wd4201 -wd4100  -wd4189 -wd4456 -wd4459 -wd4101 -wd4805 -EHa -GR -Oi -Z7 -FC -W4 -MTd -I..\vendor\includes -I..\src\box2d 
set CommonLinkerFlags= -incremental:no -opt:ref user32.lib Gdi32.lib winmm.lib -LIBPATH:..\vendor\libs  /DEBUG /MACHINE:X64
set SharedLibs= Opengl32.lib Kernel32.lib
set ExternLibs= glfw3dll.lib

IF NOT EXIST ..\build mkdir ..\build

REM 64 bit build
pushd ..\build
del *.pdb  > NUL 2 > NUL
REM Optimization switches /O2 /Oi /fp:fast
echo WAITING FOR PBD > lock.tmp

@REM cl %CommonCompilerFlags% ..\src\engine.cpp /LD /link %CommonLinkerFlags% %ExternLibs% Opengl32.lib /PDB:Bastille_%random%.pdb /EXPORT:UpdateAndRender  /EXPORT:GameQuit
del lock.tmp
cl %CommonCompilerFlags% ..\src\platform.cpp /link %CommonLinkerFlags% %ExternLibs% %SharedLibs%
popd