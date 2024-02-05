#!/bin/bash
# Recopila la información correspondiente al nombre de usuario y UID de éste
# para todos los usuarios del sistema con UID mayor que uno tomado como
# referencia. El usuario podrá definir este valor pasándolo como parámetro
# al script. En el caso de que no lo haga, el script se ejecutará 
# tomando como valor base 1000.
# Autor: Jose Manuel Vaillant
# Fecha: 02/02/2024
clear

hora=$(date +%H:%M)
dia=$(date +%d-%m-%Y)

users=$(cut -d ":" -f 1 /etc/passwd)
uids=$(cut -d ":" -f 3 /etc/passwd)

IFS=":"

if [ $# -gt 1 ]; then
	echo "Has introducido más de dos parámetros"
	exit
fi

if [ $# -eq 0 ]; then
	u=1000
else
	u=$1
fi

echo "Informe de usuarios el día $dia a las $hora "

while read user x uid gid g home shell
do
	if [ $uid -ge $u ]; then
		echo $user - $uid
	fi
	
done </etc/passwd
cat /etc/passwd | wc -l

echo "$dia - $hora - El usuario $USER ha solicitado un informe de usaurios." >> /tmp/logeventos
