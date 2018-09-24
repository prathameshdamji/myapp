FROM nginx:alpine

COPY nginx.conf /etc/nginx.conf

WORKDIR /usr/shar/nginx/html

COPY dist/ .
