FROM nginx:alpine

COPY nginx.conf /etc/nginx.conf

WORKDIR /usr/shar/nginx/html

<<<<<<< HEAD
COPY dist/ .
=======
RUN npm install @angular/cli

RUN npm install

COPY e2e .
COPY src .
COPY .editorconfig .
COPY .gitignore .

COPY angular.json .
COPY package-lock.json .
COPY package.json .
COPY tsconfig.json .
COPY tslint.json .
>>>>>>> 0daeaf95bc7c676a33d516a8e3c728c8321239d5
