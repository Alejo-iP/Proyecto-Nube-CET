#!/bin/bash
echo "INICIO DESPLIEGUE AUTOMATIZADO - PROYECTO FINAL"
# verificar instalacion de docker
if ! command -v docker &> /dev/null; then
	echo " X Error: docker no detectado. "
	exit 1
fi
# baja servicios viejos y levantar nuevos.
docker-compose down
docker-compose up -d
echo " Sevidor desplegado en http://192.168.1.9"
