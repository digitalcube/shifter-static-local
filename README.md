# SHIFTER-LOCAL

Run [Shifter](https://getshifter.io/) WordPress image localy for checking and correcting the behavior of plugins and themes. The image is released at [Dockerhub](https://hub.docker.com/r/getshifter/shifter_local/).

## Requirements

- docker
- docker-compose

## Usage


```
$ git clone https://github.com/getshifter/shifter_local.git
$ cd shifter_local
```

### for macos

```
$ docker-compose up
```

open https://127.0.0.1:8443 by browser.

### for linux

due to file permission problem, we reccomend use volumes.

```
$ docker-compose -f docker-compose.yml -f docker-compose_linux.yml up
```

open https://127.0.0.1:8443 by browser.

`Ctl + C` to stop containers.

### Updating image

```
$ docker-compose pull
```

### Storage Info

- MacOS
  - `./volume/app`: `wordpress/wp-content` files
  - `./volume/db`: `mysql` databases
- Linux (you can detect path by `docker volume inspect`)
  - `/var/lib/docker/volumes/shifterlocal_app/_data`: `wordpress/wp-content` files
  - `/var/lib/docker/volumes/shifterlocal_db/_data`: `mysql` databases

All data will be persisted in these directories, even if the Docker containers are stopped.

To start over with the installation, simply delete `./volume/` of `docker volume rm`.

## Limitations

- Depending on the environment, you can not send mail from this container. Example: Under `Outbound Port 25 Blocking`

## Disclaimer

This Docker image is similar to the one used by Shifter, but does not guarantee complete compatibility.
