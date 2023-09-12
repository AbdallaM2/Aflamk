FROM python-3.10.9-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /K-bot
WORKDIR /K-bot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
