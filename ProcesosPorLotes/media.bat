@echo off
rem Realiza la media de 3 números pasados por párametro o argumentos
rem Autor: Jose Manuel Vaillant Alias
rem Fecha: 14/11/2023

set /a suma=%1 + %2 + %3
set /a media=%suma% / 3

echo La media de %1, %2 y %3 es igual a %media%