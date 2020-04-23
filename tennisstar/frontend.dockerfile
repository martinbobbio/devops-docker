FROM node

WORKDIR /usr/src
RUN git clone https://github.com/martinbobbio/frontend-tennisstar
RUN rm -rf /path/.git
WORKDIR /usr/src/frontend-tennisstar
RUN npm install -g @angular/cli --silent
RUN npm install --silent

EXPOSE 4202

CMD ng serve --host 0.0.0.0 -e docker -p 4202