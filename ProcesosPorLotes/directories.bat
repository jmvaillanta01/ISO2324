@echo off
rem Crear un menú con cinco opciones: 1- Crear fichero con nombre pedido al usuario 2- Mostrar el árbol de directorios de la carpeta de usuario 3- Mostrar archivos con extensión txt 4- Crea los directorios alfredoff, marinapg y ramonam en tu directorio actual 5- Copia el contenido de tu carpeta de usuario a la carpeta copia.
rem Autor: Jose Manuel Vaillant Alias
rem Fecha: 15/11/2023

echo Pulsa 1 para crear un fichero con el nombre que elijas.
echo Pulsa 2 para mostrar el arbol de directorios de la carpeta de usuario
echo Pulsa 3 para mostrar los archivos txt
echo Pulsa 4 para crear los directorios alfredoff, marinapg y ramonam en tu directorio actual
echo Pulsa 5 para copiar el contenido de tu carpeta de usuario a la carpeta Copia
set /p opcion=

if %opcion% == 1 goto uno
if %opcion% == 2 goto dos
if %opcion% == 3 goto tres
if %opcion% == 4 goto cuatro
if %opcion% == 5 goto cinco

:uno
set /p nombre=Elige un nombre para el archivo:
type nul > %nombre%.txt
echo Archivo %nombre%.txt creado correctamente
goto fin

:dos
tree %userprofile%
goto fin

:tres
dir *.txt
goto fin

:cuatro
mkdir alfredoff marinapg ramonam
echo Directorios creados correctamente
goto fin

:cinco
xcopy %userprofile% c:\Copia /e

:fin