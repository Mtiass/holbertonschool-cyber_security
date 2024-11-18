#!/bin/bash
awk -F: '{print $1}' dmesg | tr '\n' ',' | sed 's/,$//'
