FROM node:10-alpine

RUN mkdir -p /home/node/app_palomino/node_modules && chown -R node:node /home/node/app_palomino


WORKDIR /home/node/app_palomino

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]
