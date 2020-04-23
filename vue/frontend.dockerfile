FROM node:10

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/frontend-opera
RUN rm -rf /path/.git
WORKDIR /usr/src/frontend-opera
RUN npm i -g @vue/cli @vue/cli-service-global --silent
RUN npm install

EXPOSE 5000

CMD npm run serve -- --port 5000