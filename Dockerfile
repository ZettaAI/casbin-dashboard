FROM golang:1.14-buster

WORKDIR /app
COPY . /app

SHELL ["/bin/bash", "-c"]
RUN apt-get update \
    && apt install -y python3 python3-pip \
    && pip3 install supervisor \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash \
    && . ~/.nvm/nvm.sh \
    && nvm install node \
    && command -v npm \
    && cd web \
    && source ~/.bashrc \
    && npm install \
    && npm install -g serve \
    && npm run build \
    && rm -rf node_modules/
