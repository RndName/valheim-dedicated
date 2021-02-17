# Dockerized Valheim Dedicated Server
Custom Dockerfile and Docker-Compose for a dedicated valheim server based on the dockerized steamcmd: https://hub.docker.com/r/cm2network/steamcmd

APP ID Server: 896660\
APP ID Valheim: 892970

## Server Config

If you have an existing world on a Windows system you can copy it from e.g.\
`C:\Users\[USERNAME]\AppData\LocalLow\IronGate\Valheim\worlds`

Valheim-Config is stored in:\
`/home/steam/.config/unity3d/IronGate/Valheim`

This folder is mounted to `./valheim-config`

### Server Settings

ENV Var | Description
------------ | -------------
SERVER_NAME | Server name visible in the server browser
WORLD_NAME | Your World name which will be saved in ./valheim-config/worlds/
SERVER_PASS | Server Password. This must be at least 5 characters!
SERVER_PUBLIC | Private or community server. Public=1 will make the server visible to the whole community. Public=0 will make it private
SERVER_PORT | The Server Port. Possible values 2456-2458

**Warning:** SERVER_PASS must be at least 5 characters long. Otherwise valheim_server.x86_64 will refuse to start!

You can find the current documentation provided by IronGate in the folder `doc`
## Build and run the server:

```
Adjust Server config in docker-compose.yml
Upload own world to ./valheim-config/
$ docker-compose pull
$ docker-compose up -d
```

## Update Server
```
$ docker-compose pull
$ docker-compose up -d
$ docker image prune -f
```

