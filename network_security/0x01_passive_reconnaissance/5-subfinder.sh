#!/bin/bash
subfinder -d $1 | awk '{print $1","$2}' > "$1.txt"
