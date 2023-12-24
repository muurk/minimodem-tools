FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y install minimodem

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN chmod a+rx /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
