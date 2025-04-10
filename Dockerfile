#USar la imagen oficial de Nginx como base
FROM nginx:latest

#Copisr el archivo HTML a la ubicacion donde Nginx espera encontrarlo
COPY index.html /usr/share/nginx/html/

#Exponer el puerto 80 para el servidor web
EXPOSE 80

#Nginx ya esta configurado para ejecutarse como proceso principal
