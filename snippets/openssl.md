# OpenSSL snippets

## get info

```Shell
echo | openssl s_client -servername google.com -connect google.com:443 2>/dev/null | openssl x509 -noout -dates
```

## decrypt key

```Shell
openssl rsa -in ssl.key -out ssl.private.key
```

## ssl for port

```Shell
openssl s_client -servername pagings.ru -connect pagings.ru:993
```

## check ssl

```Shell
openssl s_client -connect www.paypal.com:443
```

## decode crs

```Shell
openssl req -in mycsr.csr -noout -text
```

## decode ssl

```Shell
openssl x509 -in certificate.crt -text -noout
```

## math crt key

```Shell
openssl pkey -in privateKey.key -pubout -outform pem | sha256sum
```

```Shell
openssl x509 -in certificate.crt -pubkey -noout -outform pem | sha256sum
```

```Shell
openssl req -in CSR.csr -pubkey -noout -outform pem | sha256sum
```

## Convert

### pfx to pem

#### with pab key

```Shell
openssl pkcs12 -in mycert.pfx -out mycert.pem -nodes
```

#### with privat key

```Shell
openssl pkcs12 -in mycert.pfx -out mycert.pem
```

#### pem to der

```Shell
openssl x509 -outform der -in certificate.pem -out certificate.der
```

#### pem to p7b

```Shell
openssl crl2pkcs7 -nocrl -certfile certificate.cer -out certificate.p7b -certfile CACert.cer
```

#### PEM to PFX

```Shell
openssl pkcs12 -export -out certificate.pfx -inkey privateKey.key -in certificate.crt -certfile CACert.crt
```

#### der to pem

```Shell
openssl x509 -inform der -in certificate.cer -out certificate.pem
```

#### P7B to PEM

```Shell
openssl pkcs7 -print_certs -in certificate.p7b -out certificate.cer
```

#### Convert P7B to PFX

```Shell
openssl pkcs7 -print_certs -in certificate.p7b -out certificate.cer
```

```Shell
openssl pkcs12 -export -in certificate.cer -inkey privateKey.key -out certificate.pfx -certfile CACert.cer
```

#### PFX to PEM

```Shell
openssl pkcs12 -in certificate.pfx -out certificate.cer -nodes
```
