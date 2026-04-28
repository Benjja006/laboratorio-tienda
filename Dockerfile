FROM nginx:alpine

# 1. Limpiamos la carpeta donde Nginx busca archivos
RUN rm -rf /usr/share/nginx/html/*

# 2. Copiamos los archivos desde tu carpeta local 'frontend' a la carpeta del servidor
COPY ./frontend/ /usr/share/nginx/html/

# 3. Nginx usa el puerto 80 por defecto internamente
EXPOSE 80