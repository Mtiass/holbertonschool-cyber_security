#!/bin/bash
grep -iE 'ssh|ftp|httpd|nginx' $1 | awk '{print $6}' | sort | uniq
