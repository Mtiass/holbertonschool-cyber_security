#!/bin/bash
awk "{print $7}" $1 | sort | uniq -c | sort -nr | head -n 1
