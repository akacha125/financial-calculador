# imagem base do Node.js
FROM node:18

# Definir o diret[orio de trabalho no container
WORKDIR /app

# Copiar os arquivos do package.json e packege-lock.json para o container
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar o restante do projeto 
COPY . .

# Expor a porta padrao do Vite
EXPOSE 5173

# Comando para rodar o servidor de desenvolvimento
CMD ["npm", "run", "dev"]