FROM node:alpine

WORKDIR /alumni-database-backend

COPY package*.json ./
RUN npm ci --silent
COPY . .

EXPOSE 5000
CMD ["npm", "start"]