# Lighthouse Docker

Provides a `docker-compose` environment for running Lighthouse.

The following features are available:

- A beacon node exposing a HTTP API on port `5052`.
- A validator client (optional) that connects to the beacon node.
- Wallet and validator key generation (optional).

## Usage

`$ docker-compose up`

A `.lighthouse` directory will be created in the repository root which contains
the validator keys, beacon node database and other Lighthouse files.

## Configuration

### .env

The docker-compose file requires that a `.env` file be present in this
directory. The `default.env` file provides a template and can be copied `.env`:

```bash
$ cp default.env .env
```

Failure to create an `.env` file will result in the following error:

```
ERROR: Couldn't find env file: /home/karlm/lighthouse-docker/.env
```

### Generating a JWT Token

To enable communication between the execution client and the consensus client using the new Engine API you need to generate a JWT Token to be used for communication.

This is easiest achieved by running `./generate-jwt.sh` which will create a `jwttoken` file with your generated key, this key is automatically passed to the clients inside the containers.
