# 1. Imagen base (ejemplo para Node.js, cambia según tu lenguaje)
FROM node:18-alpine

# 2. Crear directorio de trabajo en el contenedor
WORKDIR /app

# 3. Copiar archivos de dependencias
COPY package*.json ./

# 4. Instalar dependencias
RUN npm install

# 5. Copiar el resto del código
COPY . .

# 6. Exponer el puerto que usa tu app
EXPOSE 3000

# 7. Comando para iniciar la app
CMD ["npm", "start"]
