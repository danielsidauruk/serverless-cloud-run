FROM node:10

WORKDIR /app

COPY package.json package*.json ./

RUN npm install --only=production

COPY . .

CMD [ "npm", "start" ]