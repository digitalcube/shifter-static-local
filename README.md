# SHIFTER-LOCAL

Run [Shifter](https://getshifter.io/) WordPress Image Localy. It is used for checking and correcting the behavior of plugins and themes.

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
  - `./volume/db`: `mysql databases
- Linux (you can detect path by `docker volume inspect`)
  - `/var/lib/docker/volumes/shifterlocal_app/_data`: `wordpress/wp-content` files
  - `/var/lib/docker/volumes/shifterlocal_db/_data`: `mysql databases

Even once you stopped containers which running under docker-compose, your installation will be kept in those directories.

To start over from installation, delete `./volume/`.

## Limitations

- Depending on the environment you can not send mail from this container. Example: Under `Outbound Port 25 Blocking`

## Disclaimer

This Docker image is almost same as the one used by Shifter, but it does not guarantee compatibility completely.
