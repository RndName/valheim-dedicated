# Dockerized Valheim Dedicated Server
Custom Dockerfile and Docker-Compose for a dedicated valheim server based on the dockerized steamcmd: https://hub.docker.com/r/cm2network/steamcmd

APP ID Server: 896660

APP ID Valheim: 892970

If you have an existing world on a Windows system you can copy it from e.g.
C:\Users\[USERNAME]\AppData\LocalLow\IronGate\Valheim\worlds

Valheim-Config is stored in:
/home/steam/.config/unity3d/IronGate/Valheim

This folder is mounted to ./valheim-config

Warning: SERVER_PASS must be at least 5 characters long. Otherwise valheim_server.x86_64 will refuse to start!

## Build and run the server:

```
Adjust Server config
Upload own world
$ docker-compose pull
$ docker-compose up -d
```

# Update Server
```
$ docker-compose pull
$ docker-compose up -d
$ docker image prune -f
```

