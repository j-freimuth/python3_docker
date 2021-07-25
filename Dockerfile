FROM ubuntu:20.10

ENV TZ=Europe/Berlikn
RUN apt-get update 
RUN apt-get install -y python3.9 python3-venv python3-pip
RUN ln -s /usr/bin/python3.9 /usr/bin/python3
RUN ln -s /usr/bin/python3.9 /usr/bin/python
RUN useradd -m -s/bin/bash python 
RUN mkdir /srv/python 
RUN chown python.python /srv/python

WORKDIR /srv/python
USER python
