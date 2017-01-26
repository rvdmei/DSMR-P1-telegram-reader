FROM hypriot/rpi-python:latest

COPY requirements.txt telegram_from_serial.py dsmr-p1-telegram-reader.sh /data/

RUN virtualenv --python=python2 venv2; \
	. ./venv2/bin/activate; \
	pip install -r requirements.txt

CMD ./dsmr-p1-telegram-reader.sh
