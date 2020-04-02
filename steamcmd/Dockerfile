FROM debian:stretch-slim

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends --no-install-suggests \
        lib32gcc1 curl ca-certificates \
    && apt-get clean autoclean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
    && update-ca-certificates

RUN useradd -m steam
WORKDIR /home/steam

COPY ./steamcmd_linux.tar.gz /home/steam/Steam/steamcmd_linux.tar.gz
RUN cd /home/steam/Steam \
    && tar -zxvf steamcmd_linux.tar.gz \
    && rm steamcmd_linux.tar.gz \
    && chown steam:steam -R .

USER steam
RUN /home/steam/Steam/steamcmd.sh +quit


# RUN cd Steam && tar -zxvf steamcmd_linux.tar.gz && rm steamcmd_linux.tar.gz
