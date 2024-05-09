#!/bin/bash

# Directorio donde se encuentran los archivos .zip
directorio="sys_info/"

# Solicitar la contraseña al usuario
echo "Ingrese la contraseña para desencriptar los archivos .zip:"
read -s contrasena

# Extraer todos los archivos .zip en el directorio
for archivo in "$directorio"/*.zip; do
    if [ -f "$archivo" ]; then
        echo "Procesando archivo: $archivo"
        # Utilizar unzip con la opción -P para proporcionar la contraseña
        unzip -o -P "$contrasena" "$archivo" -d "$directorio"
        # Eliminar el archivo .zip después de la extracción
        rm "$archivo"
    fi
done


#Ejecutar el archivod de python

python desencrypt.py