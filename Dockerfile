FROM nginx:1.15.11
RUN apt-get update
RUN apt-get install vim --assume-yes

EXPOSE 8080

COPY default.conf /etc/nginx/conf.d/default.conf

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'

COPY . /usr/share/nginx/html/