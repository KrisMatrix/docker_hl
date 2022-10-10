FROM node:latest

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

# development
#ENV  PORT=5173
#EXPOSE 5173
#CMD ["npm", "run", "dev", "5173"]

#production
ENV PORT=8080
EXPOSE 8080
RUN npm run build

#the following section isn't necessary, but helps me when I want to poke around
RUN apt update
RUN apt upgrade
RUN apt install net-tools -y
RUN apt install vim -y

CMD ["npm", "run", "http-server"]