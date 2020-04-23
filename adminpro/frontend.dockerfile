FROM node

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/frontend-adminpro
RUN rm -rf /path/.git
WORKDIR /usr/src/frontend-adminpro
RUN npm install -g @angular/cli --silent
RUN npm install --silent

EXPOSE 4200

CMD ng serve --host 0.0.0.0 --environment=docker