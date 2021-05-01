FROM node:16-alpine3.11

COPY ./app.js /opt/js/
WORKDIR /opt
RUN npm install express
#ENTRYPOINT [ "sleep", "100000" ]
EXPOSE 8081
ENTRYPOINT ["node", "./js/app.js"]