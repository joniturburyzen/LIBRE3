#!/bin/bash
# Solicitar al usuario que seleccione el archivo donde se ejecutará Claude Code o A TI
read -p "Introduce la ruta del archivo: " file_path

# Verificar si el archivo existe
if [ ! -f "$file_path" ]; then
  echo "El archivo no existe."
  exit 1
fi

# Ejecutar el archivo seleccionado
python3 "$file_path"
