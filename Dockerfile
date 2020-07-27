FROM node:latest

WORKDIR /home/app

EXPOSE 8080

COPY . .

RUN npm install && npm run build

USER node

ENTRYPOINT npm run start