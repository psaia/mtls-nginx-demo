# mTLS Demo

* Generate certs `./gen-cert.sh`.
* Start nginx `docker-compose up`.
* Start making curls `./client.sh`.

## Example

```
# A normal http/port80 connection will succeeed:
curl http://localhost

# A normal https/port443 connection will fail.
curl --insecure https://localhost:9000

# A secured mTLS connection will succeed because client cert is passed.
curl \
	--insecure \
	--key cert/client.key \
	--cert cert/client.crt \
	https://localhost:9000

# Misc. notes:
# Pass -v flag to see certs attach.
# --insecure flag is used because server.crt is self-signed.
```
