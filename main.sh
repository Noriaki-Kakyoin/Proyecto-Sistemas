#!/bin/bash
. imports/colors.sh
. imports/menuPrincipal.sh

while [ ${opcion} -gt 0 ]
do
  case $opcion in
    1)
      ## AGREGAR USUARIO
      clear
      printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Crear Usuario>${BIYellow} Nombre usuario: "
      read -p '' nombreUsuario
        
      printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Crear Usuario>${BIYellow} Grupo: "
      read -p '' grupo

      printf "${BIRed}Usuario-ESI${BIBlue}@${BIGreen}Crear Usuario>${BIYellow} Contrasena (opcional): "
      read -p '' contrasena

      if [ -z "$contrasena" ]
        then
           # Si no hay contrasena
          . scripts/nuevoUsuario.sh $grupo $nombreUsuario
        else
           . scripts/nuevoUsuario.sh $grupo $nombreUsuario $contrasena
      fi

    break;;

    2)
    . scripts/modificarUsuarios.sh
    break;;
    3)
      ## ELIMINAR USUARIO
      clear
      printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Eliminar Usuario>${BIYellow} Nombre usuario: "
      read -p '' nombreUsuario

      printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Eliminar Usuario>${BIYellow} Eliminar carpeta personal (S/n): "
      read -p '' opcion

      if [ "$opcion" = "S" ] || [ "$opcion" = "s" ]
        then
          # Si se quiere eliminar la carpeta personal
          . scripts/eliminarUsuario.sh $nombreUsuario 0
        else
          . scripts/eliminarUsuario.sh $nombreUsuario
      fi
    break;;
    *)
    break;;
  esac
done
