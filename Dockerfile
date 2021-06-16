FROM debian

RUN apt update && apt install -y motion python3 python3-pip && pip3 install Mastodon.py
COPY motion.conf /etc/motion/
COPY motion /etc/default/
COPY toot.py /usr/local/bin/
COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 8081
EXPOSE 8080

ENTRYPOINT ["docker-entrypoint.sh"]

CMD motion
