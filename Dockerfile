FROM golang:1.14-buster

WORKDIR /app
COPY . /app

RUN apt-get update \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash \
    && exec bash \
    && nvm install node
