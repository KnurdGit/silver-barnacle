# Bash snippets

## strace specific processes

```Shell
# Example for php-cgi
strace -s 1024 -f -t $(pidof php-cgi | sed 's/\([0-9]*\)/\-p \1/g')
```

## requests per hour from apache logs

```Shell
cut -d'[' -f2 | cut -d']' -f 1 | awk -F: '{print $2":00"}' | sort -n | uniq -c
```

## requests per minutes from apache logss

```Shell
cut -d'[' -f2 | cut -d']' -f1 | awk -F: '{print $2":"$3}' | sort -nk1 -nk2 | uniq -c | awk '{ if ($1 > 10) print $0}'
```

## directory space mb

```Shell
find . -maxdepth 3 -type d -exec du -s {} \;|sort -k1 -r -n| head -10 | awk '{printf "%10d Mb\t%s\n",($1/1024),$NF}'
```

## directory inodes

```Shell
ls -d1 ./* | while read i; do echo -en "$i\t"; find "$i" -name "*" | wc -l; done;
```

## find big files

```Shell
find / -mount -type f -ls 2> /dev/null | sort -rnk7 | head -10 | awk '{printf "%10d MB\t%s\n", ($7/1024)/1024,$NF}'
```

## grep in files with specified extension

```Shell
find -type f -iname '*.php' -print0 | xargs -0 grep "pattern"
```

## curl site speed

```Shell
curl -s -w %{time_total}\\n -o /dev/null http://corp-mebel.ru/
```

```Shell
time curl http://softspec.ru/ > /dev/null
```

```Shell
curl -s -w '\nLookup time:\t%{time_namelookup}\nConnect time:\t%{time_connect}\nPreXfer time:\t%{time_pretransfer}\nStartXfer time:\t%{time_starttransfer}\n\nTotal time:\t%{time_total}\n' -o /dev/null http://www.shellhacks.com
```

## count of files

```Shell
ls -d1 ./* | while read i; do echo -en "$i\t"; find "$i" -name "*" | wc -l; done;
```

## clear sessions

```Shell
find /var/www/*/data/bin-tmp -name "sess_*" -type f -exec rm {} \;
```
