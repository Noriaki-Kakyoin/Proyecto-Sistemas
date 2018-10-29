## MODIFICAR USUARIO
## PUEDE CAMBIAR NOMBRE DE USUARIO, CONTRASENA Y DIRECTORIO HOME

clear

printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Modificar Usuario>${BIYellow} Nombre usuario: "
read -p '' nombreUsuario

# ! Cierra cualquier sesion del usuario para evitar errores
# A la hora de editarlo
skill -KILL -u $nombreUsuario

printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Modificar Usuario>${BIYellow} Modificar nombre (S/n): "
read -p '' modificarUsuario
        
if [ "$modificarUsuario" = "S" ] || [ "$modificarUsuario" = "s" ]
  then
    # Si se quiere eliminar la carpeta personal
    printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Modificar Usuario>${BIYellow} Ingrese un nuevo nombre: "
    read -p '' nuevoNombre
    
    # Cambia el nombre de usuario
    usermod -l $nuevoNombre $nombreUsuario
    # Cambia el directorio personal
    sudo usermod -d /home/$nuevoNombre -m $nuevoNombre

    printf "\n${BIGreen}Nombre de usuario cambiado a: ${UYellow}$nuevoNombre\n"
    printf "\n${BIGreen}Directorio personal cambiado a: ${On_IPurple}/home/$nuevoNombre\n${Color_Off}"
fi

printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Modificar Usuario>${BIYellow} Modificar contrasena (S/n): "
read -p '' modificarContrasena

if [ "$modificarContrasena" = "S" ] || [ "$modificarContrasena" = "s" ]
  then
    # Si se quiere eliminar la carpeta personal
    
    # Si se ha modificado el usuario, se utilizara el nuevo usuario.
    if [ "$modificarUsuario" = "S" ] || [ "$modificarUsuario" = "s" ]
    	then
	    passwd $nuevonombre
	else
    	    passwd $nombreUsuario
    fi
fi

printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Modificar Usuario>${BIYellow} Modificar directorio personal (S/n): "
read -p '' modificarHome

if [ "$modificarHome" = "S" ] || [ "$modificarHome" = "s" ]
  then
    # Si se quiere eliminar la carpeta personal
    printf "${BIRed}Usuarios-ESI${BIBlue}@${BIGreen}Modificar Usuario>${BIYellow} Ingrese la ruta del direcotrio: "
    read -p '' nuevoDirectorio
    
    # Si se ha modificardo el usuario, se utilizara el nuevo usuario.    
    if [ "$modificarUsuario" = "S" ] || [ "$modificarUsuario" = "s" ]
    	then
   	    usermod -d $nuevoDirectorio $nuevoUsuario
	else
	    usermod -d $nuevoDirectorio $nombreUsuario
    fi
fi

printf "\n${UICyan} Terminado.\n\n"
