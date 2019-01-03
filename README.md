# Docker Compose LAMP Stack

This repository contains a little `docker-compose` configuration to start a `LAMP (Linux, Apache, Mysql, PHP)` stack.

## Details

The following versions are used.

* PHP 7.3 (Apache)
* MySQL 5.7

## Configuration

The Apache vhost configuration can be found in `config/vhosts/`.

You can also set the following environment variables, for example in the included `.env` file:

| Key | Description |
|-----|-------------|
|APP_NAME|The name used when creating a container.|
|MYSQL_ROOT_PASSWORD|The MySQL root password used when creating the container.|
|MYSQL_USER|A MySQL user to create when creating the container.|
|MYSQL_PASSWORD|A password for the above mentioned user.|
|MYSQL_DATABASE|A database to create when creating the container.|

## Usage

To use it, simply follow the following steps:

##### Clone this repository.

Clone this repository with the following command: `git clone https://github.com/stevenliebregt/docker-compose-lamp-stack.git`.

##### Update the environment variables.

Update the variables in `.env`.

##### Start the server.

Start the server using the following command inside the directory you just cloned: `docker-compose up`.

## Entering the containers

You can use the following command to enter a container:

Where `{CONTAINER_NAME}` is one of:

`docker exec -ti {CONTAINER_NAME} bash`

OR on Windows

`winpty docker exec -ti {CONTAINER_NAME} bash`

* `{APP_NAME}-web`
* `{APP_NAME}-db`
