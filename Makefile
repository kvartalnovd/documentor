PROJECT_NAME=$(shell basename "$(PWD)")


CONTAINER_RUNNER=docker
DOCKER_COMPOSE_DIRECTORY=./docker-compose.d
DOCKER_COMPOSE_FILE=${DOCKER_COMPOSE_DIRECTORY}/docker-compose.yml


run-client:
	cd client && npm start

run-server:
	cd server && npm run devStart

compose-build:
	${CONTAINER_RUNNER}-compose --project-name ${PROJECT_NAME} -f ${DOCKER_COMPOSE_FILE} build

compose-up:
	${CONTAINER_RUNNER}-compose --project-name ${PROJECT_NAME} -f ${DOCKER_COMPOSE_FILE} up

compose-down:
	${CONTAINER_RUNNER}-compose --project-name ${PROJECT_NAME} -f ${DOCKER_COMPOSE_FILE} down
