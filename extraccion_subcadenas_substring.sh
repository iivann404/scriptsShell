#!/bin/bash

echo -e "\nStep 4: Substring Extraction"

STRING="The quick brown fox jumps over the lazy dog"
START=10
LENGTH=5

SUBSTRING=${STRING:$START:$LENGTH}
#La sintaxis es ${variable:posición_inicial:longitud}

echo "The original string is: $STRING"
echo "Extracting 5 characters starting from position 10:"
echo "The substring is: $SUBSTRING"
