FROM node

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/backend-cms
RUN rm -rf /path/.git
WORKDIR /usr/src/backend-cms
RUN npm install --silent

EXPOSE 8083

CMD npm start