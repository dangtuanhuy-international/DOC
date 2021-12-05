FROM node:14.16.1-alpine3.13
WORKDIR /app
COPY . .
RUN npm install
ENV API_PATH="http://api.user.localhost"
EXPOSE 4200
RUN addgroup app  && adduser -S -G  app utakata
USER utakata
