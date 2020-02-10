# Cheat Sheet

<br>

## Curl request that returns your public IP:
```shell
curl -s ifconfig.co
```

## Curl request with custom Host header:
```shell
curl --header "Host: example.com" https://example.azurewebsites.net/
```

## Curl request that overrides DNS with a hard-coded IP address and ignores any certificate errors:
```shell
curl --resolve example.com:443:51.141.12.112 https://example.com --insecure
```

## Curl request that overrides DNS with a hard-coded hostname and ignores any certificate errors:
```shell
curl --connect-to example.com:443:example.azurewebsites.net:443 https://example.com/ --insecure
```