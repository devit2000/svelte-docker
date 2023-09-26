FROM node:18.18.0-alpine3.18 AS builder
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build

# FROM node:18.18.0-alpine3.18
# USER node:node
# WORKDIR /app
# COPY --from=builder --chown=node:node /app/build ./build
# COPY --from=builder --chown=node:node /app/node_modules ./node_modules
# COPY package.json .
ENV PORT 1000
EXPOSE 1000
CMD [ "node", "build" ]