#!/bin/bash
whois "$1" | awk -F': ' '/Registrant / || /Admin / || /Tech / {print $1, $2}' | awk '{gsub(/^Registrant /, "Registrant,"); gsub(/^Admin /, "Admin,"); gsub(/^Tech /, "Tech,"); print}' > "$1.csv"
