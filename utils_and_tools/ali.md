# HTTP load testing tools

## vegeta

[Repository on GitHub](https://github.com/tsenart/vegeta)

Vegeta is a versatile HTTP load testing tool built out of a need to drill HTTP services with a constant request rate. It can be used both as a command line utility and a library.

See documentation to get examples.

## ali

[Repository on GitHub](https://github.com/nakabonne/ali)

A load testing tool capable of performing real-time analysis, inspired by [vegeta](https://github.com/tsenart/vegeta) and [jplot](https://github.com/rs/jplot). Generate HTTP load and plot the results in real-time.

### Examples

For basic usage:

```bash
ali --rate=500 --duration=5m http://host.xz
```

For an infinite attack:

```bash
ali --duration=0 http://host.xz
```

For an attack with the POST method:

```bash
ali --body-file=/path/to/foo.json --method=POST http://host.xz
```
