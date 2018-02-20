FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
RUN npm install
# Bundle app source
COPY . .

EXPOSE 8080
EXPOSE 5858
EXPOSE 3000
EXPOSE 9200
EXPOSE 5601

CMD [ "npm", "run", "debug" ]
