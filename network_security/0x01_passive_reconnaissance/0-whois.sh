#!/bin/bash
whois "$1" | awk -F': ' '/^Registrant / {sub(/^Registrant /, "Registrant "); print $1", "$2} /^Admin / {sub(/^Admin /, "Admin "); print $1", "$2} /^Tech / {sub(/^Tech /, "Tech "); print $1", "$2} ' > "$1.csv"
