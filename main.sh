#!/bin/bash
. imports/colors.sh
. imports/menuPrincipal.sh

while [ ${opcion} -gt 0 ]
do
  case $opcion in
      1)
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
        echo "2"
	break;;
      3)
        echo "3"
	break;;
      *)
	break
	;;
     esac
done
