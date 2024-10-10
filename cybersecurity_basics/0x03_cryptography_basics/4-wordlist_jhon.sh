#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt $1 --format=raw-md5 > 4-password.txt
