#!/bin/bash
subfinder -silent -d $1 | awk '{print $1","$2}' > "$1.txt"
