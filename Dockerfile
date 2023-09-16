FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME dbname 
ENV MONGODB_CLUSTER_ADDRESS cluster0.abcdef.mongodb.net
ENV MONGODB_USERNAME username
ENV MONGODB_PASSWORD abc123

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]