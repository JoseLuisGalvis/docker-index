# Imagen base con Node.js
FROM node:18-alpine

# Crear carpeta de trabajo
WORKDIR /app

# Instalar live-server globalmente
RUN npm install -g live-server

# Copiar los archivos del sitio al contenedor
COPY . .

# Exponer el puerto por defecto de live-server
EXPOSE 8080

# Comando que ejecuta live-server con recarga automática
CMD ["live-server", "--port=8080", "--host=0.0.0.0", "--watch=."]


