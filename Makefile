CMD=docker compose 
CMD+=-f traefik.yml
CMD+=-f wireguard.yml
CMD+=-f adguard.yml

%.traefik: SERVICE=traefik
%.wireguard: SERVICE=wireguard
%.adguard: SERVICE=adguard

ps:
	${CMD} ps
ps.%:
	${CMD} ps ${SERVICE}

up:
	${CMD} up -d --force-recreate
up.%:
	${CMD} up ${SERVICE} -d --force-recreate

stop:
	${CMD} stop
stop.%:
	${CMD} stop ${SERVICE}

rm:
	${CMD} rm
rm.%:
	${CMD} rm ${SERVICE}

down:
	${CMD} down

shell.%:
	${CMD} exec ${SERVICE} sh
