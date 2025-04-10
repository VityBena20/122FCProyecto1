# Fundamentos de contenerización

## Actividad 1. Servidor Web Simple con Nginx
La actividad ha sido realizada en ubuntu, es por ello que los comandos que hay son de Ubuntu

- **Paso 1.** Construir la imagen con el mismo nombre que el repositorio con la versión 1.0
    ```
    sudo docker image build --tag 122fcproyecto1:1.0 .
    ```

- **Paso 2.** Ejecutar el contenedor en el puerto 80, 116fcproyecto1
    ```
    sudo docker container run -d -p 80:80 --name 122fcproyecto1 122fcproyecto1:1.0
    ```

- **Paso 3.** Comprobación: http://localhost
    ```
    http://localhost
    ```
    * Comprobación opcional desde consola
    ```
    sudo docker container ls
    ```

- **Paso 4.** Se pide modificar el fichero `index.html` desde el contenedor
    * Entramos al contenedor con el siguiente comando (a partir de aquí se usarán comandos bash)
        ```
        sudo docker exec -it 122fcproyecto1 bash
        ```
    * Actualizamos la terminal 
        ```
        apt update
        ```
    * Instalamos un editor de texto, en este caso nano
        ```
        apt install nano
        ```
    * Abrimos el editor que acabamos de instalar
        ```
        nano /usr/share/nginx/html/index.html 
        ```
    * Una vez hayamos finalizado, salimos del contenedor
        ```
        exit
        ```
