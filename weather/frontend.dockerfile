FROM node

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/frontend-weather
RUN rm -rf /path/.git
WORKDIR /usr/src/frontend-weather

RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

EXPOSE 3001

CMD npm run start:docker
