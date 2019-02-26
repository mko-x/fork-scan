FROM tiangolo/uwsgi-nginx-flask:python3.7
LABEL maintainer="Markus Kosmal <dev@m-ko.de>"
LABEL homepage="https://fs.m-ko.de"
# OPT: FROM tiangolo/meinheld-gunicorn-flask:python3.7

COPY ./app /app

