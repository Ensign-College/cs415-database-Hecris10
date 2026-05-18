FROM ubuntu:latest

RUN apt-get update

RUN useradd -m myuser

USER myuser

WORKDIR /home/myuser

CMD ["sleep", "infinity"]