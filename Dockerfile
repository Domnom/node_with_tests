FROM node:argon

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Fetch the project
RUN git clone https://github.com/Domnom/node_with_tests my_app
WORKDIR /usr/src/app/my_app/client

RUN npm install

EXPOSE 80

CMD ["node", "./bin/www"]