#!/bin/bash
nmap -sV --script="default ssl-enum-ciphers smb-enum-domains banner" $1 -oN service_enumeration_results.txt
