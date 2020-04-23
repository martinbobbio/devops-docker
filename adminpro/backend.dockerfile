FROM node

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/backend-adminpro
RUN rm -rf /path/.git
WORKDIR /usr/src/backend-adminpro
RUN npm install --silent

EXPOSE 8080

CMD npm start