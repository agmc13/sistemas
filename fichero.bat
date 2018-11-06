@echo off
:inicio
cls
set option=
echo ==== GESTION DE FICHEROS =====
echo 1. Copiar fichero
echo 2. Mostar el contenido de un fichero
echo 3. Borrar fichero
echo 4. Salir del programa
echo.
echo =============================
set /p option=elije una opcion:
echo =============================
if not defined option goto error

if %option%==1 goto 1
if %option%==2 goto 2
if %option%==3 goto 3
if %option%==4 goto 4
echo debes introducir un numero del 1 al 4
pause>nul
goto inicio

:mensaje
echo.
echo volvamos al principio!
pause>nul
goto inicio

:error
echo no has introducido ningun valor, prueba de nuevo!
pause>nul
goto inicio

:error2
echo el fichero introducido no existe, prueba de nuevo!
pause>nul
goto inicio

:1
set /p  fichero1= introduce la ruta y nombre del fichero:
if not defined fichero1 goto error
if not exist %fichero1% goto error2
set /p fichero2= introduce el nombre que deseas ponerle:
if not defined fichero2 goto error
copy %fichero1% %fichero2%
echo fichero copiado correctamente.
goto mensaje

:2
set /p  mostrar= introduce la ruta y nombre del fichero que quieres mostrar:
if not defined mostrar goto error
if not exist %mostrar% goto error2
type %mostrar%
echo.
goto mensaje

:3
set /p  borrar= introduce la ruta y nombre del fichero que quieres borrar:
if not defined borrar goto error
if not exist %borrar% goto error2
del %borrar%
echo fichero borrado correctamente.
goto mensaje

:4
echo Hasta la proxima!
pause>nul
exit