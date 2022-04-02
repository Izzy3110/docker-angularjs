FROM node:latest as build-step
RUN npm install -g npm@8.6.0
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod
FROM nginx:1.21.6
COPY --from=build-step /app/dist/helloworld /usr/share/nginx/html
EXPOSE 4200:80