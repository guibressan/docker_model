#!/usr/bin/env sh

case "$1" in

  up)
    # Verifying if default container data directories is ok
    if [ -e containers/default/volume/data/verifications ]; then
      echo "Laravel data directories OK!"
    else
      mkdir -p containers/default/volume/data/
      mkdir -p containers/default/volume/data/verifications
    fi
    
    docker network create -d bridge docker_model
    docker-compose up --build &
  ;;

  down)
    docker-compose down
    docker network rm docker_model
  ;;

  clean)
    ./containers/default/volume/scripts/clean.sh
  ;;

  *) printf "Usage: [up|down|clean|help]\n"

esac