@echo off
echo ===========FECHA Y HORA SEPARADA====================
echo  dia=%date:~0,2%,mes=%date:~3,-5%,year=%date:~-2%
echo.
echo  hora=%time:~0,2%,min=%time:~3,-5%,segundos=%time:~-5,2%
echo.
echo BY Alfonso Gonzalo
echo ---------------------
echo.
echo Hasta pronto!
pause>nul
exit