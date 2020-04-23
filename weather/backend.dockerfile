FROM node

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/backend-weather
RUN rm -rf /path/.git
WORKDIR /usr/src/backend-weather
RUN npm install --silent

EXPOSE 8084

CMD npm start