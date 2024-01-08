FROM node:21.5.0-alpine3.19

WORKDIR /app
COPY package*.json ./
COPY index.js ./

EXPOSE 3000

CMD node index.js
