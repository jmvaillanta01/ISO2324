# Dado un fichero denominado rutas.txt, que contiene el nombre de ficheros y
# directorios que ya deben existir, introducir en 2 listas diferentes cada uno de
# ellos, es decir, en una lista los ficheros y en otra los directorios (habrá que
# comprobar línea a línea si lo leído es un fichero o un directorio).
# ▪ Posteriormente, se le pedirá al usuario qué elija una opción:
# ▪ A- Pedir nombre de fichero y eliminarlo.
# ▪ B- Pedir nombre de directorio y mostrar su información.
# ▪ C- Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.
# ▪ D- Mostrar lista elegida por el usuario
# ▪ E- Salir
# Autor: José Manuel Vaillant Alias
# Fecha 01/03/2024

import os
import shutil

ficheros = []
rutas = []

fichero = open("rutas.txt", "r")
lineas = fichero.readlines()
for i in lineas:
    ruta = i.strip()
    if os.path.isfile(ruta):
        ficheros.append(ruta)
    elif os.path.isdir(ruta):
        rutas.append(ruta)

while True:
    print("A. Pedir nombre de fichero y eliminarlo.")
    print("B. Pedir nombre de directorio y mostrar su información.")
    print("C. Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.")
    print("D. Mostrar lista elegida por el usuario")
    print("E. Salir")

    opcion = input("Introduzca una opción: ")
    if opcion == "A":
        fichero = input("Introduzca el nombre de un fichero: ")
        os.system(f"rm -f {fichero}")
        ficheros.remove(fichero)
    elif opcion == "B":
        directorio = input("Introduzca el nombre de un directorio: ")
        informacion = os.system(f"ls -laR {directorio}")
        print(informacion)
    elif opcion == "C":
        nombre = input("Introduzca un nombre para el fichero: ")
        destino = input("Introduzca el nombre para el destino: ")
        shutil.move(nombre, destino)
    elif opcion == "D":
        print("1 para mostar la lista de ficheros")
        print("2 para mostar la lista de directorios")
        opcion = input("Introduzca una opción: ")
        if opcion == "1":
            print(ficheros)
        if opcion == "2":
            print(rutas)
    elif opcion == "E":
        print("Saliendo del fichero")
        break
    else:
        print("Introduzca una opción válida")

fichero.close()
