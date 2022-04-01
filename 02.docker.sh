#!/bin/bash

sudo mkdir /var/docker/axum-rs-pg && \
sudo docker run --name axum-rs-pg \ 
    -e POSTGRES_PASSWORD=axum.rs \
    -e POSTGRES_USER=axum_rs \
    -e POSTGRES_DB=axum_rs \
    -e TZ=PRC \
    --restart=always \
    -p 127.0.0.1:5432:5432 \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v /var/docker/axum-rs-pg:/var/lib/postgresql/data \
    -d postgres:alpine && \
sudo docker run --name axum-rs-redis \
    -p 127.0.0.1:6379:6379 \
    --restart=always \
    -d redis:alpine

