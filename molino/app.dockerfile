FROM node:8

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/app-molino-tenis
RUN rm -rf /path/.git
WORKDIR /usr/src/app-molino-tenis

RUN npm install -g ionic@4.10.3 cordova@8.1.2
RUN npm i -D -E @ionic/app-scripts

EXPOSE 8100

CMD ionic serve --adress 0.0.0.0