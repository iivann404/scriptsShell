#!/bin/bash

#Este script funciona para buscar directorios
#unicamente funciona buscando en el directorio donde se ejecuta
#setiene que pasar el nombre del directorio como argumento del scritp 

dirname="$1"
if [ -d "$dirname" ]; then
  echo "$dirname existe"
else
  echo "$dirname no  existe"
fi

