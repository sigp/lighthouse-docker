### 🚨 DEPRECATION NOTICE 🚨

As of August 2022 Sigma Prime will no longer maintain `lighthouse-docker`. This decision was made
to better focus on development of the core client. We _will_ continue to provide official Docker
images.

If you are currently using `lighthouse-docker` you need to either migrate to the community-fork,
or `eth-docker`. You must do this before the mainnet merge in September 2022.

1. Community-maintained fork of `lighthouse-docker` by @kimpers: https://github.com/kimpers/lighthouse-docker
2. Guide for migrating to `eth-docker`: https://hackmd.io/@sproul/lighthouse-docker-migration

The original README is preserved below.

---

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

The docker-compose file requires that a `.env` file be present in this
directory. The `default.env` file provides a template and can be copied `.env`:

```bash
$ cp default.env .env
```

Failure to create an `.env` file will result in the following error:

```
ERROR: Couldn't find env file: /home/karlm/lighthouse-docker/.env
```
