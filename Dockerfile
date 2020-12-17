FROM golang:1.14-buster

WORKDIR /app
COPY . /app

SHELL ["/bin/bash", "-c"]
RUN apt-get update \
    && wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy \
    && chmod +x cloud_sql_proxy \
    && mv cloud_sql_proxy /bin \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash \
    && . ~/.nvm/nvm.sh \
    && nvm install node \
    && command -v npm \
    && cd web \
    && source ~/.bashrc \
    && npm install \
    && npm run build
