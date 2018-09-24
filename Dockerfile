FROM node

RUN mkdir -p /application 

WORKDIR /application

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
