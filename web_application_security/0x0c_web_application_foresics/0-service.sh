#!/bin/bash
grep -iE 'ssh|ftp|httpd|nginx' auth.log | awk '{print $6}' | sort | uniq
