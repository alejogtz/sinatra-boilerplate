#!/bin/bash

# Extrae el comando y los argumentos
COMMAND="$1"
ARG="$2"

# Función para descargar e instalar Nginx
download_nginx() {
    echo "Descargando e instalando Nginx..."
    curl -fsSL 'https://nginx.org/download/nginx-1.25.3.tar.gz' -o nginx.tar.gz
    tar xvf nginx.tar.gz && rm nginx.tar.gz
}

# Función para iniciar Nginx
start_nginx() {
    echo "Iniciando Nginx..."
    nginx -c config/nginx.conf -p pid/ -g "daemon off;"

}

# Función para detener Nginx
stop_nginx() {
    echo "Deteniendo Nginx..."
    kill -QUIT $(cat pid/nginx.pid)
}

# Función para reiniciar Nginx
restart_nginx() {
    echo "Reiniciando Nginx..."
    stop_nginx
    sleep 3 # por si las flies no se detiene rapido
    start_nginx
}

# Lógica para ejecutar el comando correspondiente
case "$COMMAND $ARG" in
    "download nginx")
        download_nginx
        ;;
    "start nginx")
        start_nginx
        ;;
    "stop nginx")
        stop_nginx
        ;;
    "restart nginx")
        restart_nginx
        ;;
    *)
        echo "Comando no válido. Uso: $0 {download nginx|start nginx|stop nginx|restart nginx}"
        exit 1
        ;;
esac

exit 0