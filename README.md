# Docker Model: A infrastructure basis for your containerized project

* To run this project, you will need to have docker and docker-compose installed in your Linux based system

* Start the containers

```bash
./control.sh up
```

* Stop the containers
```bash
./control.sh down
```
* Attach to container bash
```bash
docker exec -it docker_model_default bash
```
* Clean all data (default container)
```bash
./control.sh clean
```