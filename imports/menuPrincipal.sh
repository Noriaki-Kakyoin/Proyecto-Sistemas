#!/bin/bash

clear

# MENU DE INICIO

printf "\t${BIGreen}+-----------------------+          +--------------------+ ${Color_Off}\n"
printf "\t${BIGreen}| ${BIYellow}Usuarios de ESI Buceo ${BIGreen}|          |       ${BIYellow}CREDITS      ${BIGreen}|${Color_Off}\n"
printf "\t${BIGreen}+-----------------------+          +--------------------+${Color_Off}\n"
printf "\t${BIGreen}|   ${BIYellow}1- Crear usuario    ${BIGreen}|          | ${BIYellow}> Nicolas Cabrera  ${BIGreen}|${Color_Off}\n"
printf "\t${BIGreen}+-----------------------+          +--------------------+${Color_Off}\n"
printf "\t${BIGreen}| ${BIYellow}2- Modificar usuario  ${BIGreen}|          |    ${BIYellow}> Alejandro M.  ${BIGreen}|${Color_Off}\n"
printf "\t${BIGreen}+-----------------------+          +--------------------+\n"
printf "\t${BIGreen}|  ${BIYellow}3- Eliminar usuario  ${BIGreen}|          |  ${BIYellow}> Kevin Rofriguez ${BIGreen}|${Color_Off}\n"
printf "\t${BIGreen}+-----------------------+          +--------------------+\n"
printf "\t|       ${BIYellow}0- Salir        ${BIGreen}|\n"
printf "\t${BIGreen}+-----------------------+${Color_Off}\n"
printf "${ICyan}\n\n\n"


read -p $'\33[1;31mUsuarios-ESI> \33[m ' opcion

printf "${Color_Off}"
