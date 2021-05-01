FROM node:16-alpine3.11

COPY ./app.js /opt/js/
WORKDIR /opt
RUN npm install express
RUN adduser app --disabled-password
USER app
EXPOSE 8081
ENTRYPOINT ["node", "./js/app.js"]