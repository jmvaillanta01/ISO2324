@echo off
rem Deberás pedir al usuario el nombre de un archivo y comprobar si existe. Si existe el fichero, mostrarás un aviso de que ya existe y volverá a preguntarte por el archivo, si no existe, lo creará.
rem Autor: Jose Manuel Vaillant Alias
rem Fecha: 17/11/2023
:inicio
set /p archivo=Escribe el nombre del archivo:

if exist %archivo% (goto existe) else (type nul > %archivo%)
goto fin

:existe
echo El archivo existe
goto inicio

:fin
