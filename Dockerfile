FROM node:18 AS base 

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_CLUSTER_ADDRESS cluster0.awflcyp.mongodb.net
ENV MONGODB_USERNAME hemiadm
ENV MONGODB_PASSWORD Gunashree_02
ENV MONGODB_DB_NAME hemidemo

WORKDIR /app

COPY package*.json .
RUN npm install
COPY . .
CMD [ "npm", "start" ]

