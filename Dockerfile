FROM node:14-alpine

WORKDIR /app

COPY package*.json ./
COPY index.js ./

RUN npm install
RUN npm ci --only=production

EXPOSE 3000

CMD ["node", "index.js"]
