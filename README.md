# PHP-Dev-Env

Local PHP dev environment with NGINX, PHP & MYSQL inside of Docker.

## Installation

1. Rename `.env.example` to `.env` and give the variables a value

2. (Optional) Generate tls certificates by running `sudo ./gencerts.sh`

3. Run `docker-compose up --build` to run the containers and build the custom PHP image.

4. Once containers are up, visit http://127.0.0.1 in your browser. If everything went okay, you should connect to the MySQL database automatically and view PHP info!

## Changelog

### v 1.1

#### Features

- Added SSL/TLS support

### v 1.0

#### Features

- Env variables passed to PHP container so it can connect to MYSQL without hardcoding credentials

## Credit

- Thanks to https://techsparx.com/software-development/docker/damp/mysql-ssl-connection.html for the generate certs scripts.
