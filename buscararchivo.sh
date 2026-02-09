#!/bin/bash

#Este Script solo funciona para encontrar archvicos con nombre en especifico 
# en el directorio actual donde se ejecuta, se le tiene que pasar como argumento
# el nombre del archvio

funcion() {

local filename="$1"
if [ -e "$filename" ]; then
  echo "$filename existe en la carpeta"
else
  echo "$filename no existe en la carpeta"
fi

}

#Evento principal en el script
if [ $# -eq 0 ]; then
  echo "Porfavor indica el nombre del archvio como argumento."
  exit 1
fi

funcion $1