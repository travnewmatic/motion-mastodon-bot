FROM debian

RUN apt update && apt install -y motion python3 python3-pip && pip3 install Mastodon.py
COPY motion.conf /etc/motion/motion.conf
COPY motion /etc/default/motion

EXPOSE 8081
EXPOSE 8080

CMD motion
