FROM node:18.18.0-alpine3.18
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build
ENV PORT 1000
EXPOSE 1000
CMD [ "node", "build" ]