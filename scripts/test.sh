#!/bin/bash

echo "Mostrando GET /"
curl http://0.0.0.0:3000/

printf "\n\n"
echo "Mostrando GET /saludo/<nombre>"
curl http://0.0.0.0:3000/saludo/Roger

printf "\n\n"
echo "Fin de las pruebas... :)"

