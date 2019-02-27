FROM tiangolo/uwsgi-nginx-flask:python3.7-alpine3.7
LABEL maintainer="Markus Kosmal <dev@m-ko.de>"
LABEL homepage="https://fs.m-ko.de"
# OPT: FROM tiangolo/meinheld-gunicorn-flask:python3.7

COPY ./app /app
COPY ./setup.sh /

#RUN apk --no-cache add bash libxml2-dev libxslt1-dev python-dev
RUN apk add --update --no-cache bash libxml2 libxslt-dev py3-lxml g++ gcc
RUN pip install --upgrade pip && \
    chmod +x /setup.sh && \
    /setup.sh
