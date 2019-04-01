FROM alpine:3.9

LABEL maintainer="Koomely"

RUN apk add --no-cache --update python3
RUN pip3 install Click==7.0 Flask==1.0.2 itsdangerous==1.1.0 Jinja2==2.10 MarkupSafe==1.1.1 Werkzeug==0.14.1

COPY . /tmp
WORKDIR /tmp

EXPOSE 5000

ENTRYPOINT ["python3", "./app.py"]