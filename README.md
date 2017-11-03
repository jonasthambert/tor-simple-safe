# Docker TOR client



Small tor client, with IP access lists to only allow internal RFC1918 addresses. This container is based on Alpine linux.

tcp/9050 is used for Tor's SOCKS5 proxy.

## How to run?

```
docker run -p 9050:9050 --name safe_tor_client jonasthambert/tor-client-simple-safe:latest
```

You can test it with curl:

```
curl --socks5-hostname localhost:9050 http://icanhazip.com
```

or have it launched on your local LAN:
```
curl --socks5-hostname 192.168.1.100:9050 http://icanhazip.com
```
