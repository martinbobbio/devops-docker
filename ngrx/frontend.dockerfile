FROM node:10

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/frontend-ngrx
RUN rm -rf /path/.git
WORKDIR /usr/src/frontend-ngrx
RUN npm install -g @angular/cli --silent
RUN npm install

EXPOSE 4204

CMD ng serve --host 0.0.0.0 --port 4204