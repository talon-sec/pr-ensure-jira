FROM docker-io.art.code.pan.run/node:lts-slim

COPY . .

RUN npm install
RUN node_modules/typescript/bin/tsc

ENTRYPOINT ["node", "/lib/main.js"]
