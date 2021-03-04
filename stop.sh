#!/bin/bash
docker container stop $(docker container ls -q --filter name=db_inst_*)
