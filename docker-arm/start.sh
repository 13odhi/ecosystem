docker network create ecosystem

export SERVER_IP=http://`hostname -I | awk '{print $1}'`

docker compose --env-file .env -f docker-compose_arm.yaml down
docker compose --env-file .env -f docker-compose_arm.yaml pull
docker compose --env-file .env -f docker-compose_arm.yaml up -d 
