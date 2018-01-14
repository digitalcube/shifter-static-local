# SHIFTER-LOCAL

Run [Shifter](https://getshifter.io/) WordPress image localy for checking and correcting the behavior of plugins and themes.

## Requirements

- docker
- docker-compose

## Usage

```
$ git clone https://github.com/getshifter/shifter_local.git
$ cd shifter_local
$ docker-compose up
```

open https://127.0.0.1:8443 by browser.

`Ctl + C` to stop containers.

### Updating image

```
$ docker-compose pull
```

### Storage Info

- `./volume/app`: `wordpress/wp-content` files
- `./volume/db`: `mysql` databases

All data will be persisted in these directories, even if the Docker containers are stopped.

To start over with the installation, simply delete `./volume/`.

## Limitations

- Depending on the environment, you can not send mail from this container. Example: Under `Outbound Port 25 Blocking`

## Disclaimer

This Docker image is similar to the one used by Shifter, but does not guarantee complete compatibility.
