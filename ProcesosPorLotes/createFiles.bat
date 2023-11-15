@echo off
rem Crear un menú con dos opciones: Si el usuario pulsa 1, se creará un archivo .txt y si pulsa 2 que se cree un archivo .bat. con el nombre y la ruta elegidas por el usuario
rem Autor: Jose Manuel Vaillant Alias
rem Fecha: 15/11/2023

set /p tipo=Pulsa 1 para crear un archico .txt o pulsa 2 para crear un fichero .bat:

if %tipo% == 1 goto txt
if %tipo% == 2 goto bat

:txt
set /p nombre=Introduzca el nombre del archivo:
set /p ruta=Elige la ruta en la que se va a guardar el archivo:
type nul > %ruta%\%nombre%.txt
echo Se ha creado el archivo %nombre%.txt correctamente.
goto fin

:bat
set /p nombre=Introduzca el nombre del archivo:
set /p ruta=Elige la ruta en la que se va a guardar el archivo:
type nul > %ruta%\%nombre%.bat
echo Se ha creado el archivo %nombre%.bat correctamente.

:fin