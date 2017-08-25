FROM node:argon

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Fetch the project
# RUN git pull 

EXPOSE 80

CMD ['node', './bin/www']