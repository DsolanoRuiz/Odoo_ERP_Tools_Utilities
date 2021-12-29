# ------- Variables de entorno ---------

# Version de Odoo
VERSION_ODOO="v14"

# Carpeta base de la instalacion ==> PARA MODO "LOCAL"
MAIN_FOLDER="/home/dayamin"

# Carpeta SERVER (Github OCA/OCB)
RUTA_SERVER="${MAIN_FOLDER}/odoo/${VERSION_ODOO}"

# Carpeta OCA (Github OCA)
RUTA_OCA="${RUTA_SERVER}/oca_repos"

# Carpeta CUSTOM_ADDONS
RUTA_CUSTOM_ADDONS="${RUTA_SERVER}/custom_addons"

# Vamos a la ruta OCA
cd $RUTA_OCA

#------- Creamos enlaces soft de todos los ficheros de todos los directorios de las carpetas en la carpeta OCA ------
for dir in *
  do
  if [ $dir = "server" ]
    then
    continue
  else
    ln -s ${RUTA_OCA}/$dir/* ${RUTA_CUSTOM_ADDONS}
    rm ${RUTA_CUSTOM_ADDONS}/README.md
    rm ${RUTA_CUSTOM_ADDONS}/LICENSE
    rm ${RUTA_CUSTOM_ADDONS}/requirements.txt
  fi
done
