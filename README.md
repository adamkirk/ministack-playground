# ministack-playground

Playground for ministack

## Using

A playground for testing out ministack. Uses docker compose to start up an instance of ministack.

Use the makefile targets below to get things running.

### Makefile targets

| Target | Description |
|--------|-------------|
| `dcup` | Start all services in the background (`docker compose up -d`) |
| `dcdown` | Stop and remove all services, including orphaned containers |
| `dcrestart` | Restart all services (runs `dcdown` then `dcup`) |
| `dc` | Print the resolved `docker compose` command |
| `aws-shell` | Open an interactive bash shell in the `aws-cli` container |

### `aws-shell`

Running this inside a container to avoid polluting (or accidentially using) the hosts aws configs. It looks a bit iffy as the config/credentials files are committed to the repo, but they're only there for the ministack environment, nothing important.

It also includes an alias for `aws` so that you don't have to supply `--endpoint-url=http://ministack:4566` when experimenting.