# Lighthouse Testing Environment

A `docker-compose` environment providing a network of beacon node/validator
clients monitored by a Prometheus/Grafana setup.

## Usage

### Requirements

- `docker`
- `docker-compose`

E.g., on Arch: `$ pacman -S docker docker-compose`

### Bringing the Environment Up

```
$ make
$ docker-compose up
```

#### Rebuilding after Github Updates

Due to Docker's caching, the lighthouse image wont necessarily rebuild whenever
Github is updated. To rebuild after a Github update, run `$ make` again.


### Interfaces

- View and manage dashboards at [localhost:3000](http://localhost:3000).
  - Username: `admin`
  - Password: `cats`
- Inspect Prometheus at [localhost:9090](http://localhost:9090).


## Notes

### Volumes

Both Promethus and Grafana persist their data using docker volumes. `$
docker-compose stop` (or `ctrl+c` on a foreground process) will _not_ delete
volumes, whilst `$ docker-compose down` will remove containers and volumes.

### Persisting Dashboards

The [`grafana/built-in-dashboards`](grafana/built-in-dashboards) directory may
contain dashboard JSON files (as exported from the UI) that will be provisioned
to all new installations. Otherwise, dashboards are stored in your local
volumes, won't be available to others and will be deleted when local docker
volumes are removed.
