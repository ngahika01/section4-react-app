FROM node:16.15.0-alpine3.15
RUN addgroup app && adduser -S -G  app app 
USER app
WORKDIR /app
COPY . .
RUN npm install

ENV API_URL = http://api.myapp.com
EXPOSE  3000
CMD npm start
