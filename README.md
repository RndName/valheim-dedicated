Dockerized Valheim Dedicated Server. Based on https://hub.docker.com/r/cm2network/steamcmd

APP ID Server: 896660
APP ID Valheim: 892970

If you have an existing world on a Windows system you can copy it from e.g.
C:\Users\[USERNAME]\AppData\LocalLow\IronGate\Valheim\worlds

Valheim-Config is stored in:
/home/steam/.config/unity3d/IronGate/Valheim

This folder is mounted to ./valheim-config

# Build and run the server:

# Adjust Server config
# Upload own world
$ docker-compose pull
$ docker-compose up -d


# Free unused space
$ docker image prune -f


Warning: SERVER_PASS must be at least 5 characters long. Otherwise valheim_server.x86_64 will refuse to start!