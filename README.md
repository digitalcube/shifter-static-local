# Shifter - Local

Docker image for testing WordPress themes and plugins while migrating to Shifter. This image is also available on [Dockerhub](https://hub.docker.com/r/getshifter/shifter_local/).

## Requirements

- docker
- docker-compose

## Setup

```
git clone https://github.com/getshifter/shifter_local.git
```
```
cd shifter-local
```

### macOS

```
docker-compose up
```

Visit https://127.0.0.1:8443 in your browser.

### Linux

due to file permission problem, we recommend using volumes.

```
docker-compose -f docker-compose.yml -f docker-compose_linux.yml up
```

Visit https://127.0.0.1:8443 in your browser.

`Ctl + C` to stop containers.

### Updating Docker Image

```
docker-compose pull
```

### Storage

- MacOS
  - `./volume/app`: `wordpress/wp-content` files
  - `./volume/db`: `mysql` databases
- Linux (detect path using `docker volume inspect`)
  - `/var/lib/docker/volumes/shifterlocal_app/_data`: `wordpress/wp-content` files
  - `/var/lib/docker/volumes/shifterlocal_db/_data`: `mysql` databases

All data will be persisted in these directories, even if the Docker containers are stopped.

To start over with the installation, simply delete `./volume/` of `docker volume rm`.

## Debug your environment

You can find and solve issues before Generator fails.

### Check 1. Contents lists are valid JSON format.

Some plugins and themes may conflict with Shifter's generator plugin and may break your site.

After instaling themes or plugins, please accessing following URL before generating to check WordPress is returning valid JSON format, 

https://127.0.0.1:8443?urls=0


## Considerations

- Depending on your local environment mail functions may send from this container.  Example: Under `Outbound Port 25 Blocking`

## Disclaimer

This Docker image is similar to the one used by Shifter, but does not guarantee complete compatibility.
