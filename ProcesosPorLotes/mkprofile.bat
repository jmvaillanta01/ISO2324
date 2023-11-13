@echo off
rem Crear dentro del perfil del usuario actual los siguientes directorios: asir dam smr daw ceti Además, dentro de cada directorio creará los directorios: docs, pract y exam 
rem Autor: Jose Manuel Vaillant Alias
rem Fecha: 13/11/2023

mkdir %userprofile%\asir\docs
mkdir %userprofile%\asir\pract
mkdir %userprofile%\asir\exam

mkdir %userprofile%\dam\docs
mkdir %userprofile%\dam\pract
mkdir %userprofile%\dam\exam

mkdir %userprofile%\smr\docs
mkdir %userprofile%\smr\pract
mkdir %userprofile%\smr\exam

mkdir %userprofile%\daw\docs
mkdir %userprofile%\daw\pract
mkdir %userprofile%\daw\exam

mkdir %userprofile%\ceti\docs
mkdir %userprofile%\ceti\pract
mkdir %userprofile%\ceti\exam

echo Directorios creados exitosamente.
