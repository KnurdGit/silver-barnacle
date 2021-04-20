# pv

pv is used to provide the ability of monitoring progress of a given application which lacks the mentioned functionality. It can be used by placing a pipe operator (|) between two processes.

## Links

[Post on habr (ru)](https://habr.com/ru/post/65384/)
[Article on techmint](https://www.tecmint.com/monitor-copy-backup-tar-progress-in-linux-using-pv-command/v)

## Syntax of pv command

```bash
pv fileName
pv OPTIONS fileName
pv fileName > outputFileName
pv OPTIONS | command > outputFileName
command1 | pv | command2
```

## Examples

```bash
➜ tar -czf - ./iso | (pv -p --timer --rate --bytes > backup.tgz)
 201MiB 0:00:08 [23.2MiB/s] [          <=>                                                          ]
```

```bash
➜ pv ubuntu-20.04.2.0-desktop-amd64.iso | gzip > /tmp/ubuntu-20.04.2.iso.gzip
 366MiB 0:00:14 [17.5MiB/s] [======>                                                ] 13% ETA 0:01:30
```
