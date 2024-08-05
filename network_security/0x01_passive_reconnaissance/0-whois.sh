#!/bin/bash
whois "$1" | awk -F': ' '/Registrant / {print "Registrant", $2} /Admin / {print "Admin", $2} /Tech / {print "Tech", $2}' | awk -F', ' '{print $1","$2}' > "$1.csv"
