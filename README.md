# Polkadot Docker

Docker Compose for Polkadot

Meant to be used with [central-proxy-docker](https://github.com/CryptoManufaktur-io/central-proxy-docker) for traefik
and Prometheus remote write; use `:ext-network.yml` in `COMPOSE_FILE` inside `.env` in that case.

If you want the RPC/WS port exposed locally, use `rpc-shared.yml` in `COMPOSE_FILE` inside `.env`.

The `./polkadotd` script can be used as a quick-start:

`./polkadotd install` brings in docker-ce, if you don't have Docker installed already.

`cp default.env .env`

Then `nano .env` and set the `NODE_NAME` and `SERVER_IP`, and adjust `DOCKER_TAG` and `NETWORK` if desired.

`./polkadotd up`

To update the software, run `./polkadotd update` and then `./polkadotd up`

This is Polkadot Docker v1.0.0
