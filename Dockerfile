FROM python:3.7-alpine
MAINTAINER Riszky Maulana "riszky@biznetgio.com"
RUN apk add --no-cache bash
WORKDIR /code
RUN mkdir /code/log
COPY . /code
RUN apk add --no-cache tzdata
ENV TZ Asia/Jakarta
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "bash", "/entrypoint.sh" ]