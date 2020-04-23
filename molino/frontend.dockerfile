FROM node

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/frontend-molino-tenis
RUN rm -rf /path/.git
WORKDIR /usr/src/frontend-molino-tenis
RUN npm install -g @angular/cli --silent
RUN npm install --silent

EXPOSE 4201

CMD ng serve --host 0.0.0.0 --configuration=docker --port 4201