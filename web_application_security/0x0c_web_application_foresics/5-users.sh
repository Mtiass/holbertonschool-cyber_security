#!/bin/bash
awk -F: '{print $1}' /etc/passwd | tr '\n' ',' | sed 's/,$//'
