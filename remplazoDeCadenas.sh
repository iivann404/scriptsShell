#!/bin/bash

echo -e "\nStep 5: String Replacement"

STRING="The quick brown fox jumps over the lazy dog"
echo "Original string: $STRING"

# Replace the first occurrence of 'o' with 'O'
NEW_STRING=${STRING/o/O}
# La sintaxis es ${variable/patrón/reemplazo}
echo "Replacing first 'o' with 'O': $NEW_STRING"

# Replace all occurrences of 'o' with 'O'
NEW_STRING=${STRING//o/O}
# La sintaxis es ${variable//patrón/reemplazo} (observe la doble barra diagonal)
echo "Replacing all 'o' with 'O': $NEW_STRING"

# Replace 'The quick' with 'The slow' if it's at the beginning of the string
NEW_STRING=${STRING/#The quick/The slow}
#La sintaxis es ${variable/#patrón/reemplazo} El símbolo # especifica que el patrón debe estar al principio de la cadena
echo "Replacing 'The quick' with 'The slow' at the beginning: $NEW_STRING"

# Replace 'dog' with 'cat' if it's at the end of the string
NEW_STRING=${STRING/%dog/cat}
#La sintaxis es ${variable/%patrón/reemplazo} El símbolo % especifica que el patrón debe estar al final de la cadena
echo "Replacing 'dog' with 'cat' at the end: $NEW_STRING"




