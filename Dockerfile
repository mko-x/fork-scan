FROM tiangolo/uwsgi-nginx-flask:python3.7-alpine3.7
LABEL maintainer="dev@m-ko.de"

COPY ./app /app
COPY ./setup.sh /

RUN apk add --update --no-cache bash libxml2 libxslt-dev py3-lxml g++ gcc
RUN pip install --upgrade pip && \
    chmod +x /setup.sh && \
    /setup.sh
