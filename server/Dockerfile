###########################################################
# Dockerfile that builds a Valheim Dedicated Server
###########################################################
FROM cm2network/steamcmd:root

COPY entry.sh ${HOMEDIR}/entry.sh


ENV STEAMAPPID 896660
ENV STEAMAPP valheim
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"

RUN set -x \
	&& mkdir -p "${STEAMAPPDIR}" \	
	&& chmod +x "${HOMEDIR}/entry.sh" \
	&& chown -R "${USER}:${USER}" "${HOMEDIR}/entry.sh" "${STEAMAPPDIR}"	
	
USER ${USER}

VOLUME ${STEAMAPPDIR}

WORKDIR ${HOMEDIR}

EXPOSE 2456-2458/udp

CMD ["bash", "entry.sh"]