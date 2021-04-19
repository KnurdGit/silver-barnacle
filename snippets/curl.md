# Curl snippets

## check ssl

```Shell
curl -Ik -v -H 'Host: server_ip' https://domain.ru/
```

## check sni ssl

```Shell
curl -LI -v --resolve domain.ru:443:server_ip https://domain.ru
```

## check with manual custom resolve

```Shell
curl -LI -v --resolve domain.ru:443:server_ip https://domain.ru
```

## POST with stdin

```Shell
curl --user "USERNAME" --data @- https://google.com
{
  "option1":"Test",
  "option2":false,
  "option1": {
    "option4": {
      "option5":"value"
    }
  }
}
end with ctrl+d
```
