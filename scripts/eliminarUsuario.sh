#!/bin/bash

# Si selecciona borrar la carpeta personal
# Sino, borra el usuario y conserva la carpeta.
if [ $2 -eq 0 ]
  then
    userdel $1
    printf "\n${BIGreen}El usuario ${BIYellow}$1 ${BIGreen}ha sido borrado.\n"
    printf "\n${BICyan}Se ha conservado la carpeta personal en /home/$1.\n"
    
  else
    userdel -r $1
    printf "\n${BIGreen}El usuario ${BIYellow}$1 ${BIGreen}ha sido aniquilado.\n"
    printf "\n${BICyan}La carpeta personal en /home/$1 ha sido erradicada.\n"
fi
