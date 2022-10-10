FROM node:latest

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

ENV  PORT=3000

EXPOSE 3000

RUN apt update
RUN apt upgrade
RUN apt install net-tools -y
RUN apt install vim -y

CMD ["npm", "run", "serve"]