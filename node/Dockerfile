#Use the official image of nodejs
FROM node:14

#Set the working directory
WORKDIR /usr/src/app

#Copy package.json and packga-lock.json
COPY package*.json ./

#Install depemdencies
RUN npm install

#Copy the code
COPY . .

#EXPOSE the application container port

EXPOSE 8080

#Define env variable
ENV NODE_ENV=production

#Run the application
CMD ["node", "server.js]"
