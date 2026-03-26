#!/bin/bash

# Verificar si se proporcionó un argumento
if [ $# -eq 0 ]; then
    echo "Uso: $0 <ruta_del_archivo>"
    exit 1
fi

file_path="$1"

# Verificar si el archivo existe
if [ ! -f "$file_path" ]; then
  echo "El archivo no existe."
  exit 1
fi

# Directorio de destino
destination_dir="/add/C:/Users/jonit/Desktop/canciones"

# Crear el directorio de destino si no existe
mkdir -p "$destination_dir"

# Mover el archivo al directorio de destino
mv "$file_path" "$destination_dir"

echo "Archivo movido a $destination_dir"
