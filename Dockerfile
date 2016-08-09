FROM debian:latest
MAINTAINER Chet Carello cpuskarz@cpuskarz.com
EXPOSE 80

RUN apt-get update && apt-get install -y \
    aufs-tools \
    automake \
    build-essential \
    curl \
    dpkg-sig \
    mercurial \
    && rm -rf /var/lib/apt/lists/*

COPY hello_world.sh /root/
RUN chmod +x /root/hello_world.sh

CMD ["/root/hello_world.sh"]

