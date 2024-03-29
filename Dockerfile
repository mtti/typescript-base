FROM node:17.0.1-stretch

ENV RUN_DIR /app
WORKDIR $RUN_DIR

COPY package.json .
RUN npm install
COPY . .

CMD ["npm", "start"]
