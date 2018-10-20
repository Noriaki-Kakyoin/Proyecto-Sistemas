#!/bin/bash

# Agrega el grupo ingresado, si no esta creado
groupadd $1

# Agrega el nuevo usuario
# Crea el directorio home/USUARIO con: -m
# Le asigna al grupo anteriormente creado cn: -G GRUPO
useradd -m -G $1 -p "usu2018" $2

# Asignar el entorno bash con: -s BASH
usermod -s /bin/bash $2

# Setea una nueva contrasena UNIX:
# Si no se ha asignado en el parametro 3,
# Se le asigna la contrasena por defecto
if [ -z "$3" ]
  then
      printf "\n${BIRed}No se ha asignado una contrasena.\n"
      printf "\n${BIGreen}La contrasena por defecto es: ${BIYellow}usu2018${Color_Off}\n\n"
      
      # Asigna la contrasena por defecto
      echo "$2:usu2018" | chpasswd
      
      # Obliga al usuario a cambiar la contrasena
      # en el primer logeo
      chage -d0 $2
  else
    echo "$2:$3" | chpasswd
fi
