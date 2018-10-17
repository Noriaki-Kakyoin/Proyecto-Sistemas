#!/bin/bash

clear

# COLOR -> 0- SIN COLOR | 1- ROJO | 2- VERDE | 3- AMARILLO
. colors.sh

printf "\t${BIGreen}+-----------------------+          +--------------------+ ${Color_Off}\n"
printf "\t${BIGreen}| ${BIYellow}Usuarios de ESI Buceo ${BIGreen}|          |       ${BIYellow}CREDITS      ${BIGreen}|${Color_Off}\n"
printf "\t${BIGreen}+-----------------------+          +--------------------+${Color_Off}\n"
printf "\t${BIGreen}|   ${BIYellow}1- Crear usuario    ${BIGreen}|          | ${BIYellow}> Nicolas Cabrera  ${BIGreen}|${Color_Off}\n"
printf "\t${BIGreen}+-----------------------+          .                    .${Color_Off}\n"
printf "\t${BIGreen}| ${BIYellow}2- Modificar usuario  ${BIGreen}|          .                    .\n"
printf "\t${BIGreen}+-----------------------+          .                    .\n"
printf "\t${BIGreen}|  ${BIYellow}3- Eliminar usuario  ${BIGreen}|\n"
printf "\t${BIGreen}+-----------------------+\n"
printf "\t|       ${BIYellow}0- Salir        ${BIGreen}|\n"
printf "\t${BIGreen}+-----------------------+${Color_Off}\n"
printf "${ICyan}\n\n\n"

read -p "\n\t${ICyan}Presione una tecla para continuar. Gracias.\n\n" hola

printf "${Color_Off}"

while [$hola > 0]
	printf "Hello"
do :; done
