@echo off
setlocal ENABLEDELAYEDEXPANSION
mode 168,90
if defined __ goto :mouse
set __=.
call %0 %* | PixelDrawTXT-S-V3.exe s
set __=
goto :eof



:mouse
set X=0
set Y=0
set X1=0
set Y1=0


:loop


rem echo sprite Pacman.txt 8 8 1 %X1% %Y1% 1 1


for /f "tokens=1,2,3" %%A in ('darkbox_i -m') do (
    set /A X=%%A
    set /A Y=%%B
    set /A X1=%%A*8
    set /A Y1=%%B*8
    set /A X2=X1+20
    set /A Y2=Y1+20

    set C=%%C
)
    if %C%==4 goto :salir

rem echo sprite Pacman.txt 8 8 1 %X% %Y% 1 1+lineatxt 10 6 %X% %Y% 10+pixel %X% %Y% 12
rem spritergb no funciona arreglar problema de carga de paleta.
rem echo spritergb smile.txt PaletaColor.txt 8 8 1 %X% %Y% 0 1+linea 0 0 %X% %Y% 10 10 
echo circuloftxt %X% %Y% 12 1+circulotxt %X% %Y% 12 2+lineatxt 50 35 %X% %Y% 14+pixeltxt %X% %Y% 10
rem echo pixel %X% %Y% 10
rem echo lineatxt 0 0 %X% %Y% 12
rem echo imagen %X1% %Y1% 900 900 3.bmp+lineatxt 0 0 %X% %Y% 10 10 
rem echo elipseftxt %X1% %Y1% 20 10 12
rem echo linea %X1% %Y1% 0 0 10 12
rem echo rectangulof %X1% %Y1% %X2% %Y2% 12
rem echo rectangulo %X1% %Y1% %X2% %Y2% 1 12
rem echo polyrectangulof 0 0 100 0 100 100 0 100 1 12
rem echo polyrectangulo 0 0 100 0 100 100 0 100 12
rem echo polytriangulo %X1% %Y1% 0 200 200 200 2 1
rem echo polytriangulof %X1% %Y1% 0 200 200 200 12
rem echo pixel %X1% %Y1% 12
rem echo pixeltxt %X% %Y% 12
rem echo pixelp %X1% %Y1% 8 12




goto :loop



:salir
echo quit 
goto :eof