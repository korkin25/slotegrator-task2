FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install
RUN npm ci --only=production

COPY index.js ./

EXPOSE 3000

CMD ["node", "index.js"]
