# SHIFTER-LOCAL

Run [Shifter](https://getshifter.io/) WordPress Image Localy. It is used for checking and correcting the behavior of plugins and themes.

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

### Storage Info

- `./volume/app`: `wordpress/wp-content` files
- `./volume/db`: `mysql databases

Even once you stopped containers which running under docker-compose, your installation will be kept in those directories.

To start over from installation, delete `./volume/`.


## Disclaimer

This Docker image is almost same as the one used by Shifter, but it does not guarantee compatibility completely.
