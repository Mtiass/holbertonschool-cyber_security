#!/bin/bash
echo -n $1 | openssl dgst -sha512 -hmac "$(openssl rand -hex 16)" > 3_hash.txt
