#!/bin/bash

#Este Script solo funciona para encontrar archvicos con nombre en especifico 
# en el directorio actual donde se ejecuta, se le tiene que pasar como argumento
# el nombre del archvio

 

filename="$1"
if [ -e "$filename" ]; then
  echo "$filename existe en la carpeta"
else
  echo "$filename no existe en la carpeta"
fi
