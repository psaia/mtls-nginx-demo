#!/bin/bash

# This will succeed:
# curl --insecure http://localhost

# This will fail:
# curl --insecure https://localhost:9000

# Make a secure mTLS connection:
curl \
	--insecure \
	--key cert/client.key \
	--cert cert/client.crt \
	https://localhost:9000
