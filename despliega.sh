###############################################################
# Generacion de instancias de Odoo v14
#
# Usuario de LINUX: dayamin:dayamin
# 	Carpeta base de la instalacion ==> PARA MODO "SERVER"
#		MAIN_FOLDER="/home/dayamin"
#		RUTA_SERVER="${MAIN_FOLDER}/odoo/${VERSION_ODOO}"
#
# 	Afecta al comando (al final)
#		chown dayamin:dayamin $RUTA_SERVER -R
###############################################################

# ------- Variables de entorno ---------

# Version de Odoo
VERSION_ODOO="v14"

# Branch en GitHub
BRANCH_ODOO="14.0"

# Carpeta base de la instalacion ==> PARA MODO "LOCAL"
MAIN_FOLDER="/home/dayamin"

# Carpeta SERVER (Github OCA/OCB)
RUTA_SERVER="${MAIN_FOLDER}/odoo/${VERSION_ODOO}"

# Carpeta OCA (Github OCA)
RUTA_OCA="${RUTA_SERVER}/oca_repos"

# Carpeta CEBANC CURSO repos (Github)
RUTA_CEBANC="${RUTA_SERVER}/cebanc_repos"

# -------- Iniciamos proceso de instalacion --------------

# Creamos la carpeta de Odoo
mkdir -p $RUTA_SERVER

# Creamos carpeta "OCA"
mkdir $RUTA_OCA -p

# Creamos carpeta "CEBANC CURSO"
mkdir $RUTA_CEBANC -p

# Creamos carpeta "custom_addons"
mkdir $RUTA_SERVER/custom_addons -p

#--------------------------------------------------------------------

# Vamos a la carpeta del Servidor (RUTA_SERVER) de Odoo
cd $RUTA_SERVER

# Descargamos el Odoo desde el OCB GitHub a la carpeta "server"
git clone -b $BRANCH_ODOO --depth 1  https://github.com/OCA/OCB.git server

# Vamos a la carpeta OCA repos (RUTA_OCA) donde descargamos los repositorios de OCA
cd $RUTA_OCA

# Descargamos repositorios OCA en la carpeta dada por $RUTA_OCA
git clone -b $BRANCH_ODOO https://github.com/OCA/account-financial-reporting.git
git clone -b $BRANCH_ODOO https://github.com/OCA/server-tools.git
git clone -b $BRANCH_ODOO https://github.com/OCA/stock-logistics-workflow.git
git clone -b $BRANCH_ODOO https://github.com/OCA/stock-logistics-barcode.git
git clone -b $BRANCH_ODOO https://github.com/OCA/web.git
git clone -b $BRANCH_ODOO https://github.com/OCA/product-attribute.git
git clone -b $BRANCH_ODOO https://github.com/OCA/project-service.git
git clone -b $BRANCH_ODOO https://github.com/OCA/crm.git
git clone -b $BRANCH_ODOO https://github.com/OCA/partner-contact.git
git clone -b $BRANCH_ODOO https://github.com/OCA/l10n-spain.git
git clone -b $BRANCH_ODOO https://github.com/OCA/stock-logistics-warehouse.git
git clone -b $BRANCH_ODOO https://github.com/OCA/website.git
git clone -b $BRANCH_ODOO https://github.com/OCA/bank-payment.git
git clone -b $BRANCH_ODOO https://github.com/OCA/bank-statement-import.git
git clone -b $BRANCH_ODOO https://github.com/OCA/account-financial-tools.git
git clone -b $BRANCH_ODOO https://github.com/OCA/stock-logistics-transport.git
git clone -b $BRANCH_ODOO https://github.com/OCA/stock-logistics-tracking.git
git clone -b $BRANCH_ODOO https://github.com/OCA/reporting-engine.git
git clone -b $BRANCH_ODOO https://github.com/OCA/report-print-send.git
git clone -b $BRANCH_ODOO https://github.com/OCA/department.git
git clone -b $BRANCH_ODOO https://github.com/OCA/carrier-delivery.git
git clone -b $BRANCH_ODOO https://github.com/OCA/manufacture.git
git clone -b $BRANCH_ODOO https://github.com/OCA/e-commerce.git
git clone -b $BRANCH_ODOO https://github.com/OCA/sale-workflow.git
git clone -b $BRANCH_ODOO https://github.com/OCA/account-analytic.git
git clone -b $BRANCH_ODOO https://github.com/OCA/pos.git
git clone -b $BRANCH_ODOO https://github.com/OCA/social.git
git clone -b $BRANCH_ODOO https://github.com/OCA/account-payment.git
git clone -b $BRANCH_ODOO https://github.com/OCA/hr-timesheet.git
git clone -b $BRANCH_ODOO https://github.com/OCA/hr.git
git clone -b $BRANCH_ODOO https://github.com/OCA/account-fiscal-rule.git
git clone -b $BRANCH_ODOO https://github.com/OCA/account-invoicing.git
git clone -b $BRANCH_ODOO https://github.com/OCA/rma.git
git clone -b $BRANCH_ODOO https://github.com/OCA/product-variant.git
git clone -b $BRANCH_ODOO https://github.com/OCA/bank-payment.git
git clone -b $BRANCH_ODOO https://github.com/OCA/delivery-carrier.git
git clone -b $BRANCH_ODOO https://github.com/OCA/survey.git
git clone -b $BRANCH_ODOO https://github.com/OCA/vertical-association.git
git clone -b $BRANCH_ODOO https://github.com/OCA/purchase-workflow.git
git clone -b $BRANCH_ODOO https://github.com/OCA/multi-company.git
git clone -b $BRANCH_ODOO https://github.com/OCA/project.git
git clone -b $BRANCH_ODOO https://github.com/OCA/management-system.git
git clone -b $BRANCH_ODOO https://github.com/OCA/knowledge.git
git clone -b $BRANCH_ODOO https://github.com/OCA/geospatial.git
git clone -b $BRANCH_ODOO https://github.com/OCA/crm.git
git clone -b $BRANCH_ODOO https://github.com/OCA/contract.git
git clone -b $BRANCH_ODOO https://github.com/OCA/connector-telephony.git
git clone -b $BRANCH_ODOO https://github.com/OCA/commission.git
git clone -b $BRANCH_ODOO https://github.com/OCA/bank-statement-reconcile.git
git clone -b $BRANCH_ODOO https://github.com/OCA/account-invoice-reporting.git
git clone -b $BRANCH_ODOO https://github.com/OCA/account-closing.git
git clone -b $BRANCH_ODOO https://github.com/OCA/account-budgeting.git
git clone -b $BRANCH_ODOO https://github.com/OCA/account-financial-reporting.git
git clone -b $BRANCH_ODOO https://github.com/OCA/donation.git
git clone -b $BRANCH_ODOO https://github.com/OCA/event.git
git clone -b $BRANCH_ODOO https://github.com/OCA/report-print-send.git
git clone -b $BRANCH_ODOO https://github.com/OCA/operating-unit.git
git clone -b $BRANCH_ODOO https://github.com/OCA/stock-logistics-reporting.git
git clone -b $BRANCH_ODOO https://github.com/OCA/sale-financial.git
git clone -b $BRANCH_ODOO https://github.com/OCA/margin-analysis.git
git clone -b $BRANCH_ODOO https://github.com/OCA/webkit-tools.git
git clone -b $BRANCH_ODOO https://github.com/OCA/sale-reporting.git
git clone -b $BRANCH_ODOO https://github.com/OCA/purchase-reporting.git
git clone -b $BRANCH_ODOO https://github.com/OCA/project-reporting.git
git clone -b $BRANCH_ODOO https://github.com/OCA/manufacture-reporting.git
git clone -b $BRANCH_ODOO https://github.com/OCA/server-auth.git
git clone -b $BRANCH_ODOO https://github.com/OCA/data-protection.git
git clone -b $BRANCH_ODOO https://github.com/OCA/mis-builder.git
git clone -b $BRANCH_ODOO https://github.com/OCA/apps-store.git
git clone -b $BRANCH_ODOO https://github.com/OCA/geospatial.git
git clone -b $BRANCH_ODOO https://github.com/OCA/server-backend.git
git clone -b $BRANCH_ODOO https://github.com/OCA/server-ux.git
git clone -b $BRANCH_ODOO https://github.com/OCA/management-system.git
git clone -b $BRANCH_ODOO https://github.com/OCA/credit-control.git
git clone -b $BRANCH_ODOO https://github.com/OCA/rest-framework.git
git clone -b $BRANCH_ODOO https://github.com/OCA/community-data-files.git
git clone -b $BRANCH_ODOO https://github.com/OCA/server-brand.git

# Cambiamos el usuario: a usuario "dayamin" en grupo "dayamin" (en modo LOCAL)
chown dayamin:dayamin $RUTA_SERVER -R

cd $RUTA_SERVER
