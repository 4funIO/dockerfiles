# Current change-number 8102582
FROM 4fun/steamcmd

RUN /home/steam/Steam/steamcmd.sh \
        +login anonymous \
        +force_install_dir /home/steam/rust-dedicated \
        +app_update 258550 \
        +quit

USER root
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends --no-install-suggests \
        libsqlite3-0 \
    && apt-get clean autoclean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*
USER steam

WORKDIR /home/steam/rust-dedicated


# ./RustDedicated -batchmode -nographics +server.ip 0.0.0.0 +server.port 28015 +rcon.ip 0.0.0.0 +rcon.port 28016 +rcon.password "pwd" +server.maxplayers 5 +server.hostname "Test Server" +server.identity "test_server" +server.level "Procedural Map" +server.seed 12345 +server.worldsize 1000 +server.saveinterval 300 +server.globalchat true +server.description "Test Server" +server.headerimage "512x256px JPG/PNG headerimage link here" +server.url "Website here"