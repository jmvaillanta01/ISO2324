#!/bin/bash
# Ejercicio entragable 3.
# Autor: Jose Manuel Vaillant
# Fecha: 29/01/2024
clear

fich=$1
dir=$2

if [ $# -ne 2 ]; then
	echo "Hay que introducir dos parámetro: nombreArchivo directorio"
	exit
fi

if [ -f $fich ]; then
	echo "El archivo $1 existe"
	exit
fi

if [ ! -d $dir ];then
	echo "El directorio no exite"
	exit
fi

if [ -z "$(ls -A $dir)" ]; then
	echo "El directorio $dir está vacio"
	exit
fi 

echo "José Manuel Vaillant Alias"

ficheros=$(ls $2/*.txt)

for i in $ficheros; do
	if [ -f $i ];then
		lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			#Parte 3
			echo $i
			echo $i >> $1
			#Parte 4
			palabras=$(cat $i | wc -w)
			echo "El fichero tiene $palabras palabras" > $i.q
			cat $i >> $i.q
		fi
	fi
done

numero=$(cat $1 | wc -l)

echo $numero  >> $1
