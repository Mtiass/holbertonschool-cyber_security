#!/bin/bash
awk -F: '{print $1}' auth.log | tr '\n' ',' | sed 's/,$//'
