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
CMD ["npm", "run", "http-server"]