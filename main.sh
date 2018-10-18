#!/bin/bash
. imports/colors.sh
. imports/menuPrincipal.sh

while [$opcion -gt 0]
do
  case $opcion in
      1)
	echo "1"
	break;;
      2)
        echo "2"
	break;;
      3)
        echo "3"
	break;;
      *)
	echo "Nani"
	break
	;;
     esac
done
