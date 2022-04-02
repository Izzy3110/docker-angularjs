# Get docker-compose
 - ``curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose``
 - ``chmod +x /usr/local/bin/docker-compose``
# Wichtige Dateien

- Dockerfile
  - ``COPY --from=build-step /app/dist/helloworld /usr/share/nginx/html``

- docker-compose.yml
  - ``container_name: helloworld``



# Version: Node, NPM & Nginx Web-Server
- Dockerfile
  - ``FROM node:latest as build-step``
  - ``RUN npm install -g npm@8.6.0``
  - ``FROM nginx:1.21.6``

# Commands
 - clone repository
   - ``git clone https://github.com/Izzy3110/docker-angularjs``
 - change directory
   - ``cd docker-angularjs``
 - build
   - ``docker-compose build``
  
 - run
   - ``docker run -p 4200:80 helloworld_angular-service``
  
 - list available images
   - ``docker images``
 
 - list running containers
   - ``docker container ls --all``

 - netstat - show listening ports
   - ``netstat -anpt``


### Author: Sascha Frank @ TabTeam
