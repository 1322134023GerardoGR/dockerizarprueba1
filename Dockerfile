# Usa una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo
WORKDIR /app

# Copia el package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación
COPY src/ ./src/

# Expone el puerto en el que la aplicación va a correr
EXPOSE 443

LABEL authors="Gerar"

ENTRYPOINT ["node", "src/JS/index.js"]