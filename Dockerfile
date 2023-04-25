FROM node:10-alpine

RUN mkdir -p /home/node_app/node_modules && chown -R node:node /home/node_app

WORKDIR /home/node_app

COPY package*.json ./

USER node
RUN npm install 
COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "index.js"]
