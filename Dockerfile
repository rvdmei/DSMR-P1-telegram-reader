FROM hypriot/rpi-python:latest

MAINTAINER Remko van der Mei <rvdmei@gmail.com>

COPY requirements.txt /data/
COPY telegram_from_serial.py /data/

RUN virtualenv --python=python2 venv2; \
	. ./venv2/bin/activate; \
	pip install -r requirements.txt

COPY dsmr-p1-telegram-reader.sh /data/
CMD ./dsmr-p1-telegram-reader.sh
