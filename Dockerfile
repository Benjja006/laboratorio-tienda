FROM nginx:alpine

# Limpia el contenido por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copia los archivos indicando que están dentro de la carpeta frontend
COPY ./frontend/index.html ./frontend/app.js /usr/share/nginx/html/

# Copia la configuración custom indicando la ruta correcta
COPY ./frontend/default.conf /etc/nginx/conf.d/default.conf

# El puerto que pide tu laboratorio
EXPOSE 3000