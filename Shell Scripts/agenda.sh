#!/bin/bash
# Ejercicio de realizar una agenda telefónica
# Autor: Jose Manuel Vaillant Alias
# Fecha: 19/01/2024
clear

while true; do
	echo
	echo
	echo "a) Añadir una entrada "
	echo "b) Buscar por DNI"
	echo "c) Ver la agenda completa"
	echo "d) Eliminar todas las entradas de la agenda"
	echo "e) Finalizar"
	
	read -p "Introduce una opción " opcion
	echo
	
	case $opcion in
		a)
		read -p "Introduzca el DNI: " dni
		if grep "^$dni:" agenda.txt > /dev/null; then
			echo "Este DNI ya está registrado en la agenda"
		else
			read -p "Introduzca el nombre: " nombre
			echo
			read -p "Introduzca los apellidos: " apellidos
			echo
			read -p "Introduzca la ciudad: " ciudad
			echo "$dni:$nombre:$apellidos:$ciudad" >> agenda.txt
		fi
		;;
		b)
		read -p "Introduzca el dni " dni
		if grep "^$dni:" agenda.txt > /dev/null; then
			nombre=$(grep "^$dni:" agenda.txt | cut -d ":" -f 2)
			apellido=$(grep "^$dni:" agenda.txt | cut -d ":" -f 3)
			ciudad=$(grep "^$dni:" agenda.txt | cut -d ":" -f 4)
			echo "La persona con DNI número $dni es: $nombre $apellido, y vive en $ciudad"
		else
			echo "El DNI $dni no es correcto"
		fi
		;;
		c)
		if [ -s agenda.txt ]; then
			cat agenda.txt
		else
			echo "Agenda vacía"
		fi
		;;
		d)
		echo "" > agenda.txt
		echo "Has borrado el contenido de la agenda"
		;;
		e)
		break
		;;		
	esac 
done
