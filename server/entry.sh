#!/bin/bash
mkdir -p "${STEAMAPPDIR}" || true  

${STEAMCMDDIR}/steamcmd.sh +@NoPromptForPassword 1 +@ShutdownOnFailedCommand 1 +login anonymous +force_install_dir ${STEAMAPPDIR} +app_update ${STEAMAPPID} +quit
				
cd ${STEAMAPPDIR}

### Valheim Server Run
export temp_ldpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${STEAMAPPDIR}/linux64:$LD_LIBRARY_PATH

#This APP ID is important. Otherwise the server will not launch!
export SteamAppId=892970

cp ${STEAMAPPDIR}/linux64/steamclient.so ${STEAMAPPDIR}

export LD_LIBRARY_PATH=$temp_ldpath

echo "### Starting Valheim server ###"
./valheim_server.x86_64 \
	-name "${SERVER_NAME}" \
	-port ${SERVER_PORT} \
	-world "${WORLD_NAME}" \
	-password "${SERVER_PASS}" \
	-public ${SERVER_PUBLIC}