#!/bin/bash
#build docker image
cd db_docker_image
docker build -t postgres:drv_db .

#run postgresql
docker run -d -it --rm -p 5432:5432 --name db_inst_0 -e POSTGRES_PASSWORD=qwe12311 postgres:drv_db postgres 
docker run -d -it --rm -p 5433:5432 --name db_inst_1 -e POSTGRES_PASSWORD=qwe12311 postgres:drv_db postgres 
docker run -d -it --rm -p 5434:5432 --name db_inst_2 -e POSTGRES_PASSWORD=qwe12311 postgres:drv_db postgres 
docker run -d -it --rm -p 5435:5432 --name db_inst_3 -e POSTGRES_PASSWORD=qwe12311 postgres:drv_db postgres 
