FROM node:10-alpine

WORKDIR /usr/src/app
ENV NODE_ENV production
CMD ["npm", "start"]
EXPOSE 8081

COPY package*.json ./
RUN npm install --production

COPY . .
