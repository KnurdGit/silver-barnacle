# Consul

## Base commands

```bash
consul info        # show active config summary
consul members     # show cluster members
consul monitor     # tail activity log
consul reload      # reload config
```

## Key-value storage

```bash
consul kv get <path>
consul kv get --detailed <path>
consul kv put <path> <value>
consul kv delete <path>
consul kv export [<prefix>] >values.json
consul kv import <values.json
```
