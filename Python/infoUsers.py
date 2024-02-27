# Debéis de crear un script en Python que tenga un menú con 4 opciones. El programa
# acaba cuando se introduce la opción 4. Se debe comprobar que el usuario que ejecuta
# el script es el root.
# ▪ Opción 1: Muestra información del SSOO e información de la CPU.
# ▪ Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.
# ▪ Opción 3: Pedir al usuario un directorio. Comprobar si existe y si es un directorio, en
# caso contrario, lo crea.
# ▪ Opción 4: Salir
# Autor: José Manuel Vaillant Alias
# Fecha: 26/02/2024

import os

if os.geteuid() != 0:
    print("Debes ejecutar este script como root.")
    exit()

while True:
    print("1. Mostrar información del sistema y de la CPU")
    print("2. Mostrar/Crear información de usuario")
    print("3. Verificar/Crear directorio")
    print("4. Salir")
    opcion = int(input("Introduce una opcion: "))
    if opcion == 1:
        print("Información del sistema operativo: ")
        os.system("uname -a")
        print("Información de la CPU:")
        os.system("lscpu")
    elif opcion == 2:
        cont = 0
        usuario = input("Ingrese un usuario: ")
        r=open("/etc/passwd","r")
        lines = r.readlines()
        for i in lines:
            if usuario in i:
                cont=1
        if cont == 1:
            print("El usuario existe")
        else:
            print("El usuario no existe")
            os.system("useradd "+ usuario)
    elif opcion ==3:
        directorio = input("Ingrese un directorio: ")
        if os.path.exists(directorio) and os.path.isdir(directorio):
            print("El directorio existe")
        else:
            print("El directorio no existe")
            os.system("mkdir -p " + directorio)
    elif opcion == 4:
        print("Saliendo")
        break
    else:
        print("Opcion invalida")