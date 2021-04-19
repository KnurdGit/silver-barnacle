# Consul HTTP API

Default API address - `http://127.0.0.1:8500/v1/`
## Links

[Official Documentation](https://www.consul.io/api-docs)

## Agent

### Join Cluster

Join local agent to consul cluster:

```bash
curl http://127.0.0.1:8500/v1/agent/join/<cluster_ip>
```

### Leave Cluster

Graceful leave and shutdown:

```bash
curl \
    --request PUT \
    http://127.0.0.1:8500/v1/agent/leave
```

Force live:

```bash
curl \
    --request PUT \
    http://127.0.0.1:8500/v1/agent/force-leave/agent-one
```

Additionally, by specifying the prune flag, a node can be forcibly removed from the list of members entirely:

```bash
curl \
    --request PUT \
    http://127.0.0.1:8500/v1/agent/force-leave/agent-one
```

### Info endpoints

Use `--request GET`.

Base endpoints:

```bash
curl http://127.0.0.1:8500/v1/agent/members # show all members in dc.
curl http://127.0.0.1:8500/v1/agent/self # return config and info for local agent
curl http://127.0.0.1:8500/v1/agent/metrics?format=prometheus # get metrics for most recent interval
```

Services:

```bash
curl http://127.0.0.1:8500/v1/agent/services # returns all the services that are registered with the local agent. Can use filter.
curl http://127.0.0.1:8500/v1/agent/service/<service_id> # return config for specific server
```

Enable maintenance mode for services:

```bash
curl --request PUT \
    http://127.0.0.1:8500/v1/agent/service/maintenance/my-service-id?enable=true&reason=For+the+docs
```

During maintenance mode, the service will be marked as unavailable and will not be present in DNS or API queries.

Checks:

```bash
curl http://127.0.0.1:8500/v1/agent/checks # returns all checks that are registered with the local agent. Can use filter.
curl http://127.0.0.1:8500/v1/agent/health/service/name/<service_name> # return checks status and info for specific service
curl http://127.0.0.1:8500/v1/agent/health/service/name/<service_name>?format=text # returns only check status
curl http://127.0.0.1:8500/v1/agent/health/service/id/<service_id> # return checks status and info for specific service
curl http://127.0.0.1:8500/v1/agent/health/service/id/<service_id>?format=text # returns only check status
```

### Monitor

Streams logs from the local agent until the connection is closed.

Stream debug log:

```bash
curl http://127.0.0.1:8500/v1/agent/monitor?loglevel=debug
```

Steam debug log in json:

```bash
curl "http://127.0.0.1:8500/v1/agent/monitor?loglevel=debug&logjson=true"
```

!!! logjson works on 1.7.* versions

### Reload local agent

```bash
curl \
    --request PUT \
    http://127.0.0.1:8500/v1/agent/reload
```

### Maintenance mode

```bash
curl \
    --request PUT \
    http://127.0.0.1:8500/v1/agent/maintenance?enable=true&reason=maintenance+in+cluster
```

During maintenance mode, the node will be marked as unavailable and will not be present in DNS or API queries.

## Health check

This endpoint returns all checks that are registered with the local agent:

```bash
curl http://127.0.0.1:8500/v1/health/checks
```

## Catalog

Base endpoints:

```bash
curl http://127.0.0.1:8500/v1/catalog/nodes?dc=<dc_name> # returns the nodes registered in a given datacenter. Can use filter.
curl http://127.0.0.1:8500/v1/catalog/services?dc=<dc_name> # returns the services registered in a given datacenter. Can use filter.
curl http://127.0.0.1:8500/v1/catalog/datacenters # returns the list of all known datacenters
```

List nodes for service:

```bash
curl http://127.0.0.1:8500/v1/catalog/service/<service_name>?dc=<dc_name> # Can use filter.
```

Retrieve map of Services for a node:

```bash
curl http://127.0.0.1:8500/v1/catalog/node/<node_name>?dc=<dc_name> # Can use filter.
```

List services for node:

```bash
curl http://127.0.0.1:8500/v1/catalog/node-services/<node_name>?dc=<dc_name> # Can use filter.
```

## Health

Returns the checks specific to the node provided on the path:

```bash
curl -s http://127.0.0.1:8500/v1/health/node/<node_name>?dc=<dc_name> # Can use filter.
```

Returns the checks associated with the service provided on the path:

```bash
curl -s http://127.0.0.1:8500/v1/health/checks/<service_name>?dc=<dc_name> # Can use filter.
```

Returns the nodes providing the service indicated on the path:

```bash
curl -s http://127.0.0.1:8500/v1/health/service/<service_name>?dc=<dc_name> # Can use filter.
```

Returns the checks in the state provided on the path:

```bash
curl -s http://127.0.0.1:8500/v1/health/state/<state>?dc=<dc_name> # Can use filter.
```

Supported states are `any`, `passing`, `warning`, or `critical`.

## Filtering

```bash
curl -s --get http://127.0.0.1:8500/v1/agent/services --data-urlencode 'filter=ServiceID == "widget-server" or Port == 20081' | jq .
```
