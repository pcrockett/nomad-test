# nomad-test

[Nomad](https://developer.hashicorp.com/nomad) proof-of-concept.

This demonstrates how one can configure a Nomad cluster with two nodes: a single server
and single client. It uses Docker Compose to run the two nodes on your local machine.

## Running the cluster

```bash
# build containers, start them, and open the Nomad web UI in your browser:
make up ui

# shut the containers down
make down
```

## Jobs

Two example "batch" jobs are in [the jobs directory](./jobs).
