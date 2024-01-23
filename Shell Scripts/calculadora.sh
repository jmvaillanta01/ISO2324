#!/bin/bash
# Esto es una calculadora
# Autor: Jose Manuel Vaillant
# Fecha: 23/01/2024
clear

i=1

echo "Jose Manuel Vaillant Alias"

if [ $# -ne 2 ]; then
	echo "Hay que introducir dos parametros"
	exit
fi

if [ -f $1 ];then
	echo "El fichero $1 ya existe"
	exit
fi

echo "Introduzca S para sumar"
echo
echo "Introduzca R para restar"
echo
echo "Introduzca M para multiplicar"
echo
echo "Introduzca D para dividir"
echo
echo "Introduzca X para cerrar la calculadora"
echo

while [ $i -le $2 ]; do

	read -p "Introduce el tipo de operacion y los dos valores a operar: " tipo uno dos
	echo "$tipo $uno $dos" >> $1

	case $tipo in
		S)
			clear
			suma=$(($uno+$dos))
			echo "$uno + $dos = $suma"
			i=$(($i+1))
		;;
		R)
			clear
			resta=$(($uno-$dos))
			echo "$uno - $dos = $resta"
			i=$(($i+1))
		
		;;
		M)
			clear
			multiplicacion=$(($uno*$dos))
			echo "$uno x $dos = $multiplicacion"
			i=$(($i+1))
		;;
		D)
			clear
			division=$(($uno/$dos))
			echo "$uno / $dos = $division"
			i=$(($i+1))			
		;;
		X)
			clear
			echo "Saliendo de la calculadora"
			break
		;;
		*)
			clear
			echo "Error"
		;;
	esac
done

clear
echo "Se ha creado el archivo $1"
echo "Contenido del archivo: "
cat $1
