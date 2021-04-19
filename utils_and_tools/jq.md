# jq

## Links

[Official Docs](https://stedolan.github.io/jq/manual/)
[Reshaping JSON with jq by Matthew Lincoln](https://programminghistorian.org/en/lessons/json-and-jq)
[jq tutorial on YouTube by Szymon Stepniak](https://www.youtube.com/playlist?list=PLKaiHc24qCTSOGkkEpeIMupEmnInqHbbV)

## Command line options

`--slurp/-s`
Instead of running the filter for each JSON object in the input, read the entire input stream into a large array and run the filter just once. This can be very useful when you data store separated json parts, or json in strings format.

`--raw/-r`
Don't parse the input as JSON. Instead, each line of text is passed to the filter as a string. If combined with `--slurp`, then the entire input is passed to the filter as a single long string.

`--null-input/-n`
Don't read any input at all! Instead, the filter is run once using null as the input. This is useful when using jq as a simple calculator or to construct JSON data from scratch.

`--tab`
Use a tab for each indentation level instead of two spaces.

`--indent n`
Use the given number of spaces (no more than 7) for indentation.

`--sort-keys/-S`
Output the fields of each object with the keys in sorted order.

## Consul versions by nodes

```bash
curl -s http://127.0.0.1:8500/v1/agent/members | jq '[.[] | {consul_version: (.Tags.build | split(":")[0]) }] | group_by(.consul_version) | .[] | {version:.[0].consul_version,nodes_count: . | length}'
```

## Concat multiple lists

```bash
jq -s '[.[][]]' nodes_*.json > nodes.json
```
