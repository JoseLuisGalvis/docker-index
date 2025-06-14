🐳 Proyecto HTML + CSS con Live Reload usando Docker
Este proyecto es una página web simple que se ejecuta con Live Server dentro de un contenedor Docker, lo que permite recarga automática de los cambios.

🚀 Requisitos
Tener Docker instalado y funcionando en tu máquina.

(Opcional) Tener git instalado para clonar este repositorio.

📦 Clonar el proyecto
git clone https://github.com/JoseLuisGalvis/docker-index
cd docker-index

🛠️ Construir la imagen Docker
docker build -t docker-index .

▶️ Ejecutar el contenedor
docker run -d -p 8080:8080 --name live-server-container docker-index

📎 Acceder a la web desde el navegador
👉 http://localhost:8080

♻️ Recarga automática (Live Reload)
Cada vez que edites un archivo .html o .css en el proyecto, la página se actualizará automáticamente gracias a live-server.

🧹 Detener y eliminar el contenedor
docker stop live-server-container
docker rm live-server-container

🐳 Alternativa: docker-compose (opcional)
Si preferís usar docker-compose, agregá este archivo docker-compose.yml:

version: "3.9"
services:
web:
build: .
ports: - "8080:8080"
volumes: - .:/app

Y ejecutá:

docker-compose up --build -d

📌 Comandos útiles de Docker
docker # Ver ayuda general
docker ps # Ver contenedores en ejecución
docker images # Ver imágenes locales
docker build -t docker-index . # Construir la imagen
docker run -d -p 8080:8080 --name live-server-container docker-index # Ejecutar el contenedor
docker stop live-server-container # Detener el contenedor
docker rm live-server-container # Eliminar el contenedor
docker rmi docker-index # Eliminar la imagen

🧠 Autor
José Galvis — Proyecto con fines pedagógicos para enseñar contenedorización básica de una página web estática.
