FROM node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN chmod 777 tasks/tasks.txt

EXPOSE 8000

CMD [ "node", "tasks-app.js" ]