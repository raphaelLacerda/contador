FROM nginx:1.15.11
RUN apt-get update
RUN apt-get install vim --assume-yes
COPY index.html /usr/share/nginx/html/